<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="아이디/비밀번호 찾기";
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
		<div class="inquiry result">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/inquiry.jsp"><strong>아이디/ 비밀번호 찾기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">아이디/ 비밀번호 찾기</h2>

					<p class="con_tit_txt">회원가입 시 입력하신 정보로 아이디/비밀번호를 찾을 수 있습니다.</p>

					<!-- -->
					<div class="inquiry_area"  data-ui="tab">
						<!-- 아이디찾기 // -->
						<section class="inquiry_id on">
							<h3 data-ui="tab_menu"><a href="#id_tab">아이디 찾기</a></h3>

							<div data-ui="tab_content" id="id_tab">
								<div class="inquiry_form">
									<p class="text">이시연님이 가입하신 아이디입니다.</p>
									<p class="id">Peace000</p>
									<time>(2015-12-01 가입)</time>

									<div class="btn_area">
										<a href="/membership/login.jsp" class="midium type4">로그인</a>
										<a href="/membership/inquiry_result_pw.jsp" class="midium type3">비밀번호 찾기</a>
									</div>
								</div>
							</div>
						</section>
						<!--// 아이디찾기 -->

						<!-- 비밀번호찾기 // -->
						<section class="inquiry_pw">
							<h3 data-ui="tab_menu"><a href="/membership/inquiry.jsp?inquiryPW">비밀번호 찾기</a></h3>
						</section>
						<!-- // 비밀번호찾기 -->

						<div class="caution">
							<strong>주의사항</strong>
							<p>비밀번호는 이메일, 휴대폰 인증을 이용하여 찾으실 수 있습니다.</p>
							<p>본인인증이 완료되면 임시비밀번호를 보내드립니다.</p>
							<p>로그인 후 마이페이지 > 개인정보변경에서 비밀번호를 수정해주세요.</p>
						</div>
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
