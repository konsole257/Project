{{if (context.prop) {

<%@Language="VBScript" CODEPAGE="65001" %>

<%
	Dim page, pageName, parentPage, parentPageName
	page = "{{ prop.page }}"
	pageName = "{{ prop.pageName }}"
	middlePage = "{{ prop.middlePage }}"
	middlePageName = "{{ prop.middlePageName }}"
	parentPage = "{{ prop.parentPage }}"
	parentPageName = "{{ prop.parentPageName }}"
%>

<!DOCTYPE HTML>
<html lang="ko">

<head>
	<!-- config// -->
	<!--#include virtual="/shared/config.asp"-->
	<!-- //config -->
</head>

<body>

{{if(prop.page === 'main') {
<script>
var setCookie = function(name, value, expiredays) {
    var todayDate = new Date();
        todayDate.setDate( todayDate.getDate() + expiredays );
        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

var mainPopupClose = function() {
    if ( document.querySelector('.today').checked ){
        setCookie('mainPopup', 'done', 1);
    }
    document.querySelector('.main-popup').style.visibility = 'hidden';
}

window.addEventListener('load', function() {
	var cookiedata = document.cookie;

	if ( cookiedata.indexOf('mainPopup=done') < 0 ){
		document.querySelector('.main-popup').style.visibility = 'visible';
	} else {
		document.querySelector('.main-popup').style.visibility = 'hidden';
	}
});
</script>

<!-- 메인팝업 // -->
<div class="main-popup">
    <div class="swiper-container">
        <ul class="swiper-wrapper">
            <!-- 반복영역 // -->
            <li class="swiper-slide">
                <img src="{{dirRoot}}/resources/images/temp/img-popup400x352.jpg" alt="">
            </li>
            <!-- // 반복영역 -->

            <li class="swiper-slide">
                <img src="{{dirRoot}}/resources/images/temp/img-popup400x352.jpg" alt="">
            </li>
            <li class="swiper-slide">
                <img src="{{dirRoot}}/resources/images/temp/img-popup400x352.jpg" alt="">
            </li>
        </ul>

        <div class="indicator">
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <div class="btn-area">
        <label><input type="checkbox" class="today"><span>오늘 하루 이 창 열지않기</span></label>
        <button type="button" class="btn-close" onclick="mainPopupClose();">닫기</button>
    </div>
</div>
<!-- // 메인팝업 -->
}}}

<div id="wrap">
	<!-- header// -->
	<!--#include virtual="/shared/header.asp"-->
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="{{ prop.parentPage }}">
		<section id="contents" class="{{prop.page}}">

			{{if(prop.page !== 'main') {
				<header class="header">
					<!-- 현재 위치 // -->
				    <!--#include virtual="/shared/path.asp"-->
				    <!-- // 현재 위치 -->

					<h1 class="hide">{{prop.pageName}}</h1>
				</header>
			}}}

			<div class="cont">
				{{include('{{prop.content}}', {
					"prop": {
						"page": "{{prop.page}}",
						"pageName": "{{prop.pageName}}",
						"middlePage": "{{prop.middlePage}}",
						"middlePageName": "{{prop.middlePageName}}",
						"parentPage": "{{prop.parentPage}}",
						"parentPageName": "{{prop.parentPageName}}"
					}
				})}}
			</div>
		</section>


	</main>
	<!-- //contents -->

	<!-- footer// -->
	<!--#include virtual="/shared/footer.asp"-->
	<!-- //footer -->
</div>

</body>
</html>
}}}
