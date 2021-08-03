<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/sub.css" />
</head>

<body class="sub">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap" class="customer qna">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>CS Center</span>1:1문의하기</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_customer.jsp" %>
				<!-- // menu -->
			</div>

			<div class="login_area">
				<strong class="caution">로그인이 필요합니다</strong>

				<p class="txt1">
					로그인 상태에서 1:1 문의 등록 시 마이페이지에서<br>
					접수 내용과 답변상태 확인이 가능합니다.
				</p>

				<p class="txt2">(비회원의 경우 하단의 비회원 1:1 문의를 이용해 주세요.)</p>

				<div class="btn_area">
					<a href="#" class="btn_login"><span>로그인<span>Login</span></span></a>
					<a href="#" class="btn_nomember"><span>비회원 문의<span>Non-member Q&A</span></span></a>
				</div>
			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
