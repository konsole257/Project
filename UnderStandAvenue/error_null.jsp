<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="시스템 에러";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
</head>
<body>

	<!-- wrap -->
	<main id="wrap" class="error">
		<h1 class="logo">UNDERSTAND AVENUE</h1>

    <div class="txt_area">
      <p class="txt">
        요청하신 페이지가 없습니다.
      </p>

      <div class="btn_area">
        <a href="/" class="big type2 btn_home">메인 페이지</a>
      </div>
    </div>
	</main>
	<!-- //wrap -->

</body>
</html>
