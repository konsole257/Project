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
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">

	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="error coupon">
		<h1 class="logo">UNDERSTAND AVENUE</h1>

    <div class="txt_area">
      <p class="txt">
        <strong>쿠폰 선택</strong>에 오류가 발생했습니다.
      </p>

      <div class="btn_area">
				<a href="/mypage/cart.jsp" class="big type1 btn_cart">장바구니</a>
        <a href="/" class="big type2 btn_home">메인 페이지</a>
      </div>
    </div>
	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->

</body>
</html>
