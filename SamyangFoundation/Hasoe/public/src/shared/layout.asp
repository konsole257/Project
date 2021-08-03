{{if (context.prop) {

<%@Language="VBScript" CODEPAGE="65001" %>

<%
	Dim page, pageName, parentPage, parentPageName
	page = "{{ prop.page }}"
	pageName = "{{ prop.pageName }}"
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

<div id="wrap">
	<!-- header// -->
	<!--#include virtual="/shared/header.asp"-->
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="{{ prop.parentPage }}">
		<div id="contents" class="{{ prop.page }}">

			{{if(prop.page !== 'main') {
				<header class="header">
				    <h1 class="tit">{{ prop.parentPageName }}</h1>

				    <!-- 메뉴 // -->
				    <!--#include virtual="/shared/lnb.asp"-->
				    <!-- // 메뉴 -->

				    <!-- 현재 위치 // -->
				    <!--#include virtual="/shared/path.asp"-->
				    <!-- // 현재 위치 -->
				</header>

				<hr>
			}}}

			<!-- 페이지 내용 // -->
			<div class="cont">
				<h2 class="tit hide">{{ prop.pageName }}</h2>

				{{include('{{prop.content}}', {
					"prop": {
						"page": "{{prop.page}}",
						"pageName": "{{prop.pageName}}",
						"parentPage": "{{prop.parentPage}}",
						"parentPageName": "{{prop.parentPageName}}"
					}
				})}}
			</div>
			<!-- // 페이지 내용 -->
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<!--#include virtual="/shared/footer.asp"-->
	<!-- //footer -->
</div>

</body>
</html>
}}}
