$(document).ready(function() {
	$(function(){
		$( ".datepick" ).datepicker({
			dateFormat: "yy-mm-dd",
				dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토"],
				dayNames: ['일','월','화','수','목','금','토'],
				monthNames : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				monthNamesShort : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				numberOfMonths: 1,
				showAnim: "fade",
				changeMonth: true,
				changeYear: true,
				showMonthAfterYear: true,
				showOn: "both",
				buttonImage: "/pjtCom/cmsManager/images/icon_cal.png",
				buttonImageOnly: true,
				buttonText: "달력"
		}).next(".ui-datepicker-trigger").addClass("btn_cal");

		$(".ui-datepicker-trigger").mouseover(function() {
			  $(this).css('cursor','pointer');
		});
	});
});

//팝업창 열기
function openPopWin(xurl,tar,wid,hei) {
	var winl = (screen.width - wid) / 2;
	var wint = (screen.height - hei) / 2;
	set = 'width='+wid+',height='+hei+',top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no';
	win = window.open(xurl,tar,set);
}
// 팝업창 닫기
function closePopWin(){
	window.close();
};