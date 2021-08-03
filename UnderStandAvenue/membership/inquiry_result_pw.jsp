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
					<div class="inquiry_area" data-ui="tab">
						<!-- 아이디찾기 // -->
						<section class="inquiry_id">
							<h3 data-ui="tab_menu"><a href="/membership/inquiry.jsp?inquiryID">아이디 찾기</a></h3>
						</section>
						<script>
						$('#id_tab input[name=certification]').click(function(){
							if ( $('#id_hp').is(':checked') ) {
								$('#id_tab .u_hp').show();
								$('#id_tab .u_mail').hide();
							} else if ( $('#id_mail').is(':checked') ) {
								$('#id_tab .u_hp').hide();
								$('#id_tab .u_mail').show();
							}
						});
						</script>
						<!--// 아이디찾기 -->

						<!-- 비밀번호찾기 // -->
						<section class="inquiry_pw on">
							<h3 data-ui="tab_menu"><a href="#pw_tab">비밀번호 찾기</a></h3>

							<div data-ui="tab_content" id="pw_tab">
								<div class="inquiry_form">
									<!-- 비밀번호 찾기 완료 // -->
									<p>
									이시연님, 선택하신 <em>휴대폰(이메일)</em>으로 <br />
									비밀번호를 발송하였습니다.
									</p>

									<div class="btn_area">
										<a href="/membership/login.jsp" class="midium type4">로그인</a>
										<a href="/" class="midium type3">메인으로 가기</a>
									</div>
									<!-- //비밀번호 찾기 완료 -->

									<!-- 휴면계정 // -->
									<p>
										Peace000 아이디는 휴면계정으로 정보가 삭제 되었습니다.<br />
										번거로우시지만, 회원가입(고객센터) 연락 부탁드립니다. <br />
										고맙습니다.
									</p>

									<div class="btn_area">
										<a href="/membership/join_step1.jsp" class="midium type4">회원가입</a>
									</div>
									<!-- // 휴면계정 -->
								</div>
							</div>
						</section>
						<!-- // 비밀번호찾기 -->

						<div class="caution">
							<strong>주의사항</strong>
							<p>비밀번호는 이메일, 휴대폰 인증을 이용하여 찾으실 수 있습니다.</p>
							<p>본인인증이 완료되면 임시비밀번호를 보내드립니다.</p>
							<p>로그인 후 마이페이지 &gt; 개인정보변경에서 비밀번호를 수정해주세요.</p>
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
