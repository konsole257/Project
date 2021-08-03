<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="회원가입";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="membership">
		<div class="join step3">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/join_step1.jsp"><strong>회원가입</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회원가입</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 회원이 되시면 다양한 서비스를 이용할 수 있습니다.</p>

					<!-- -->
					<div class="join_path">
						<strong class="hide">회원가입 진행 위치</strong>

						<ol>
							<li class="step1 ">약관동의</li>
							<li class="step2"><strong>회원정보 입력</strong></li>
							<li class="step3 on">가입 완료</li>
						</ol>
					</div>

					<div class="complete">
						<p class="text1">
							언더스탠드에비뉴<br />
							<strong>회원가입이 완료되었습니다.</strong>
						</p>

						<div class="text2">
							<p>회원 가입 시 입력하신 E-mail 및 휴대폰 정보를 통해 UNDER STAND AVENUE의 이벤트 정보 등<br />
								다양한 소식을 받으실 수  있습니다. (SMS 및 메일 수신여부 동의 시)
							</p>
							<p>WALKSHOP에서 제공하는 <em>다양한 혜택과 쿠폰, 서비스</em>를 이용하실 수 있습니다</p>
						</div>
					</div>

					<div class="btn_area">
						<a href="/membership/login.jsp" class="big type1 btn_login">로그인</a>
						<a href="/" class="big type2 btn_avenue">MAIN</a>
						<a href="#" class="big type2 btn_shop">WALKSHOP</a>
					</div>
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
