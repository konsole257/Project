'use strict';

//리스트 공통
var listInit = function($scope, $location) {
  $scope.param = $location.search();
  if ( angular.isUndefined($scope.param.page) ) { // 초기에 파라미터가 없으면 첫페이지로
    $scope.pageNow = 1;
  } else {
    $scope.pageNow = $scope.param.page;
  }

  $scope.itemTotalLength = $scope.jsonData.length; // 총 갯수
  $scope.itemInit = ($scope.pageNow-1)*$scope.itemMaxLength; // 초기 출력되는 아이템
}

//상세 공통
var detailInit = function($scope, $location){
  $scope.param = $location.search();
  $scope.pageNow = $scope.param.page;
}

//페이징
var paging = function($scope){
  $scope._pageTotalLength = Math.ceil($scope.itemTotalLength / $scope.itemMaxLength); // 총 페이지 갯수
  $scope.pageTotal = [];

  $scope.pageInit = Math.floor(($scope.pageNow-1)/$scope.pageMaxLength)*$scope.pageMaxLength; // 초기 출력되는 페이지

  for ( var i=1; i<=$scope._pageTotalLength; i++ ) {
    $scope.pageTotal.push({'status':'', 'pageNum':i});
  }

  $scope.pageStatus = (function(){ // 해당페이지에서 class="on" 추가
    for ( var i=1; i<=$scope._pageTotalLength; i++ ) {
      $scope.pageTotal[i-1].status = '';
    }
    $scope.pageTotal[$scope.pageNow-1].status = 'on';
  })();

  $scope.pageNext = (function() { // 다음페이지
    if ( $scope._pageTotalLength > $scope.pageInit+$scope.pageMaxLength ) { // 총 페이지 갯수가 다음페이지보다 크면
      return $scope.pageNext = $scope.pageInit+$scope.pageMaxLength+1; // 다음페이지
    } else {
      return $scope.pageNext = $scope._pageTotalLength; // 마지막페이지
    }
  })();

  $scope.pagePrev = (function() { // 이전페이지
    if ( 1 < $scope.pageInit-$scope.pageMaxLength ) { // 이전페이지가 1보다 크면
      return $scope.pagePrev = $scope.pageInit-$scope.pageMaxLength+1; // 이전페이지
    } else {
      return $scope.pagePrev = 1; // 첫페이지
    }
  })();
}

var url = location.href;
var paramStart = url.indexOf('?')+1
var paramEnd = url.length;
var param = url.substring(paramStart,paramEnd);

//캘린더
var schedule = angular.module('schedule', [])
.controller('listApril', function($scope, $http) {
  $http.get('/avenueCom/json/calendar04.json').success(function(data){
    $scope.scheduleData = data.schedule;
  });
})
.controller('detailApril', function($scope, $http) {
  $http.get('/avenueCom/json/calendar04.json').success(function(data){
    $scope.scheduleData = data.schedule.reverse()[param-0-1];
    $scope.schedule = $scope.scheduleData;
  });
})
.controller('listMay', function($scope, $http) {
  $http.get('/avenueCom/json/calendar05.json').success(function(data){
    $scope.scheduleData = data.schedule;
  });
})
.controller('detailMay', function($scope, $http) {
  $http.get('/avenueCom/json/calendar05.json').success(function(data){
    $scope.scheduleData = data.schedule.reverse()[param-0-1];
    $scope.schedule = $scope.scheduleData;
  });
});

//이벤트
var event = angular.module('event', ['ngRoute'])
.config(function($locationProvider) {
  $locationProvider.html5Mode(true);
})
.controller('list', function($scope, $http, $location) {
  $http.get('/avenueCom/json/event.json').success(function(data){
    $scope.jsonData = data.event;

    $scope.itemMaxLength = 5; // 1페이지당 아이템 최대 갯수
    $scope.pageMaxLength = 5; // 페이지 버튼 최대 갯수

    $scope.ingLength = 0;
    $scope.endLength = 0;

    var date = new Date;
    var endYear = date.getFullYear();//년도를 구함
    var endMonth = date.getMonth() + 1;//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
    var endDate = date.getDate();//오늘 일자.

     // 오늘
    var today = {
      'yyyy' : endYear,
      'mm' : endMonth,
      'dd' : endDate
    };

    today.mm < 10 ? today.mm = '0'+today.mm : '';
    today.dd < 10 ? today.dd = '0'+today.dd : '';

    today = (String(today.yyyy)+String(today.mm)+String(today.dd)); // 오늘 날짜 yyyymmdd

    // 이벤트 종료 기간
    for ( var i in $scope.jsonData ) {
      var periodStart = $scope.jsonData[i].periodStart.split('.');
      periodStart = {
        'yyyy' : periodStart[0],
        'mm' : periodStart[1],
        'dd' : periodStart[2]
      };
      periodStart.mm < 10 ? periodStart.mm = '0'+periodStart.mm : '';
      periodStart.dd < 10 ? periodStart.dd = '0'+periodStart.dd : '';
      periodStart = (String(periodStart.yyyy)+String(periodStart.mm)+String(periodStart.dd)); // 이벤트 시작 날짜 yyyymmdd

      var periodEnd = $scope.jsonData[i].periodEnd.split('.');
      periodEnd = {
        'yyyy' : periodEnd[0],
        'mm' : periodEnd[1],
        'dd' : periodEnd[2]
      };
      periodEnd.mm < 10 ? periodEnd.mm = '0'+periodEnd.mm : '';
      periodEnd.dd < 10 ? periodEnd.dd = '0'+periodEnd.dd : '';
      periodEnd = (String(periodEnd.yyyy)+String(periodEnd.mm)+String(periodEnd.dd)); // 이벤트 종료 날짜 yyyymmdd

      // 이벤트 종료 기간이 오늘보다 이후면 노출
      today > periodEnd ? $scope.jsonData[i].status = 'end' : $scope.jsonData[i].status = 'ing';

      if ( $scope.jsonData[i].status == 'ing' ) {
        $scope.ingLength++;
      } else if ( $scope.jsonData[i].status == 'end' ) {
        $scope.endLength++;
      }
    }

    listInit($scope, $location);
    if ( $location.path().indexOf('ing') != -1 ) {
      $scope.itemTotalLength = $scope.ingLength;
    } else if ( $location.path().indexOf('end') != -1 ) {
      $scope.itemTotalLength = $scope.endLength;
    }
    paging($scope);
  });
})
.controller('detail', function($scope, $http, $location) {
  $http.get('/avenueCom/json/event.json').success(function(data){
    detailInit($scope, $location);

    $scope.eventData = data.event.reverse()[$scope.param.detail-1];
    $scope.event = $scope.eventData;
    $scope.map = false;

    if ( $scope.event.detailLink != '' ) {
      if ( !angular.isArray($scope.event.detailLink) ) {
        $('.txt_viewer img').wrap('<a href="'+$scope.event.detailLink+'" /></a>');
      } else {
        $('.txt_viewer img').attr({'usemap':'#Map'});
        $scope.map = true;
      }
    }
  });
});

//하트스탠드 프로그램
var programNameStart = url.indexOf('_')+1;
var programNameEnd = url.lastIndexOf('_');
var programName = url.substring(programNameStart,programNameEnd);
var heartProgram = angular.module('heartProgram', [])
.controller('list', function($scope, $http) {
  $http.get('/avenueCom/json/heart_program_'+programName+'.json').success(function(data){
    $scope.programData = data.program;
  });
})
.controller('detail', function($scope, $http) {
  $http.get('/avenueCom/json/heart_program_'+programName+'.json').success(function(data){
    $scope.programName = programName;
    $scope.programData = data.program.reverse()[param-0-1];
    $scope.program = $scope.programData;
  });
});



//아트스탠드 프로그램
var artProgram = angular.module('artProgram', ['ngRoute'])
.config(function($locationProvider) {
  $locationProvider.html5Mode(true);
})
.controller('list', function($scope, $http, $location) {
  $http.get('/avenueCom/json/art_program.json').success(function(data){
    $scope.jsonData = data.program;

    $scope.itemMaxLength = 3; // 1페이지당 아이템 최대 갯수
    $scope.pageMaxLength = 5; // 페이지 버튼 최대 갯수

    $scope.ingLength = 0;
    $scope.endLength = 0;

    var date = new Date;
    var endYear = date.getFullYear();//년도를 구함
    var endMonth = date.getMonth() + 1;//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
    var endDate = date.getDate();//오늘 일자.

     // 오늘
    var today = {
      'yyyy' : endYear,
      'mm' : endMonth,
      'dd' : endDate
    };

    today.mm < 10 ? today.mm = '0'+today.mm : '';
    today.dd < 10 ? today.dd = '0'+today.dd : '';

    today = (String(today.yyyy)+String(today.mm)+String(today.dd)); // 오늘 날짜 yyyymmdd

    // 이벤트 종료 기간
    for ( var i in $scope.jsonData ) {
      var periodStart = $scope.jsonData[i].periodStart.split('.');
      periodStart = {
        'yyyy' : periodStart[0],
        'mm' : periodStart[1],
        'dd' : periodStart[2]
      };
      periodStart.mm < 10 ? periodStart.mm = '0'+periodStart.mm : '';
      periodStart.dd < 10 ? periodStart.dd = '0'+periodStart.dd : '';
      periodStart = (String(periodStart.yyyy)+String(periodStart.mm)+String(periodStart.dd)); // 이벤트 시작 날짜 yyyymmdd

      var periodEnd = $scope.jsonData[i].periodEnd.split('.');
      periodEnd = {
        'yyyy' : periodEnd[0],
        'mm' : periodEnd[1],
        'dd' : periodEnd[2]
      };
      periodEnd.mm < 10 ? periodEnd.mm = '0'+periodEnd.mm : '';
      periodEnd.dd < 10 ? periodEnd.dd = '0'+periodEnd.dd : '';
      periodEnd = (String(periodEnd.yyyy)+String(periodEnd.mm)+String(periodEnd.dd)); // 이벤트 종료 날짜 yyyymmdd

      // 이벤트 종료 기간이 오늘보다 이후면 노출
      today > periodEnd ? $scope.jsonData[i].status = 'end' : $scope.jsonData[i].status = 'ing';

      if ( $scope.jsonData[i].status == 'ing' ) {
        $scope.ingLength++;
      } else if ( $scope.jsonData[i].status == 'end' ) {
        $scope.endLength++;
      }
    }

    listInit($scope, $location);
    if ( $location.path().indexOf('ing') != -1 ) {
      $scope.itemTotalLength = $scope.ingLength;
    } else if ( $location.path().indexOf('end') != -1 ) {
      $scope.itemTotalLength = $scope.endLength;
    }
    paging($scope);
  });
})
.controller('detail', function($scope, $http, $location) {
  $http.get('/avenueCom/json/art_program.json').success(function(data){
    detailInit($scope, $location);

    $scope.programData = data.program.reverse()[$scope.param.detail-1];
    $scope.program = $scope.programData;
  });
});

//소셜스탠드 스토리
var story = angular.module('story', [])
.controller('intro', function($scope, $http) {
  $http.get('/avenueCom/json/story.json').success(function(data){
    $scope.storyData = data.story;
  });
})
.controller('about', function($scope, $http) {
  $http.get('/avenueCom/json/story.json').success(function(data){
    $scope.storyData = data.story.reverse()[param-0-1];
    $scope.story = $scope.storyData;
  });
});
