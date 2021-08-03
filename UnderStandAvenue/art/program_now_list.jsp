<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="program";
	String path4="now";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="프로그램 안내";
	String path4tit="현재프로그램";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<script src="/avenueCom/js/angular.min.js"></script>
	<script src="/avenueCom/js/angular-route.min.js"></script>
	<script src="/avenueCom/js/angular_module.js"></script>
	<base href="/">

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="art">

		<div class="program now list" ng-app="artProgram" ng-controller="list">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_art.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/art/about.jsp">ART STAND</a>
						<a href="/art/program_now_list.jsp">Program</a>
						<a href="/art/program_now_list.jsp"><strong>현재 프로그램</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">ART STAND</h2>
					<p class="con_tit_txt">아트스탠드의 현재 진행중인 프로그램을 알려드립니다.</p>

					<!-- -->
					<div class="bbs gallery type1">
						<div>
							<!-- 등록된 글이 없을때 // -->
			 				<article class="no_data">준비중입니다.</article>
			 				<!-- // 등록된 글이 없을때 -->
							
							<!-- 반복영역 // -->
							<article  ng-repeat="program in jsonData | filter : { 'status' : 'ing' } | limitTo : itemMaxLength : itemInit | orderBy : '-periodStart'">
								<a href="/art/program_now_detail.jsp?page={{pageNow}}&amp;detail={{program.index}}" class="midium type1 btn_detail"><img src="/avenueCom/images/upload/art_program/program_thumb_{{program.index}}.jpg" alt="" /></a>
								<div class="subject_area">
									<strong class="subject dotdot">{{program.subject}}</strong>
									<time class="date">{{program.periodStart}} ~ {{program.periodEnd}}</time>
									<small class="genre type1">전시</small>
									<!--<small class="genre type2">공연</small>
									<small class="genre type3">체험</small>-->
								</div>
								<div class="text_viewer dotdot"><pre>{{program.txt}}</pre></div>

								<div class="btn_area">
									<a href="/art/program_now_detail.jsp?page={{pageNow}}&amp;detail={{program.index}}" class="midium type1 btn_detail">자세히보기</a>
									<!--<a href="#" class="midium type2 btn_ticketing">예매하기</a>-->
								</div>
							</article>
							<!-- // 반복영역 -->
						</div>
					</div>

					<div class="paging">
    				<a href="/art/program_now_list.jsp?page={{pagePrev}}" class="prev">이전</a>
    				<span class="num">
    					<a ng-href="/art/program_now_list.jsp?page={{page.pageNum}}" ng-repeat="page in pageTotal | limitTo : pageMaxLength : pageInit" class="{{page.status}}"><strong>{{page.pageNum}}</strong></a>
    				</span>
    				<a href="/art/program_now_list.jsp?page={{pageNext}}" class="next">다음</a>
    			</div>

					<script>
          var listLength = $('.bbs.gallery.type1 article').length%3;
          listLength == 0 ? listLength = 3 : '';
          for ( var i=1; i<=listLength; i++ ) {
            $('.bbs.gallery.type1 article:nth-last-child('+i+')').addClass('last_line');
          }
					</script>
					<!-- -->
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
