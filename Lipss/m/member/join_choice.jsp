<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
</head>
<body class="member">
<div id="wrap" class="join_choice">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

			<h2 class="tit">회원가입 <span>Join</span></h2>
			<section>
				<div class="sec_quick">
					<strong>간편회원가입</strong>
					<span>인증 없이 빠르게 회원가입이 가능합니다.</span>
					<a href="#" class="btn_purple">회원가입 <span>Join</span></a>
				</div>
				<div class="sec_sns">
					<strong>SNS계정 회원가입</strong>
					<span>SNS계정으로 간편 회원가입이 가능합니다.</span>
					<ul>
						<li>
							<a href="#" class="icon sns_fb">페이스북</a>
						</li>
						<li>
							<a href="#" class="icon sns_kakao">카카오톡</a>
						</li>
						<li>
							<a href="#" class="icon sns_naver">네이버</a>
						</li>
					</ul>
				</div>
				<div class="sec_benefit">
					<strong>LIPSS만의 특별한 혜택</strong>
					<ul>
						<li>
							<a href="#">
								<span>
									신규가입
									<b>할인쿠폰</b>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>
									나만의
									<b>최애설정</b>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>
									구매한
									<b>사진소장</b>
								</span>
							</a>
						</li>
					</ul>
				</div>
			</section>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
