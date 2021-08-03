<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="로그인";
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
		<div class="login">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/login.jsp"><strong>로그인</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">로그인</h2>

					<p class="con_tit_txt">언더스탠드에비뉴에 방문해 주신 여러분을 환영합니다.</p>

					<!-- -->
					<div class="password_alert">
						<p>
							<strong>고객님께서는 3개월 동안 비밀번호를 변경하지 않으셨습니다.</strong>
							고객님의 개인정보를 보호하기 위해서는 주기적으로 비밀번호를 변경하는 것이 좋습니다.
						</p>


						<div class="btn_area">
							<a href="#password" class="midium type1" data-fn="popupBtnOpen">지금변경하기</a>
							<a href="#" class="midium type2">다음에 변경하기</a>
							<a href="#" class="midium type2">2주간 표시 안함</a>
						</div>
					</div>

					<!-- 비밀번호 변경 팝업 // -->
					<div id="password" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">비밀번호 변경</h2>

							<div class="popup_content">
								<strong class="caution">
									10자 이상 영문대/소문자, 숫자, 특수문자(! @ $ % ^ *) 중<br />
									2가지 조합 가능
								</strong>

								<form name="form">
									<fieldset>
										<legend>비밀번호 변경</legend>

										<label for="u_now_pw">현재 비밀번호</label>
										<input type="password" id="u_now_pw" />

										<label for="u_new_pw">새로운 비밀번호<strong class="check"></strong></label> <!-- class="true : 사용 가능, false : 사용 불가능" -->
										<input type="password" id="u_new_pw" maxlength="15" data-fn="ablePassword" />

										<label for="u_confirm_pw">새로운 비밀번호 확인<strong class="check"></strong></label> <!-- class="true : 일치, false : 불일치" -->
										<input type="password" id="u_confirm_pw" maxlength="15" data-fn="samePassword" />

										<div class="btn_area">
											<button type="submit" class="midium type3">수정</button>
											<button type="button" class="midium type2" data-fn="popupBtnClose">취소</button>
										</div>
									</fieldset>
								</form>

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 비밀번호 변경 팝업 -->

					<script>
					$('form').submit(function(e){
						e.preventDefault();

						function validationPass(){
							if ( !$('[for=u_new_pw] .check').hasClass('true') ) {
								alert('* 비밀번호는 10자이상 영문대/소문자, 숫자, 특수문자 중 2가지 조합 해 주세요.');
								$('#u_new_pw').val('').focus();

								return false;
							} else if ( !$('[for=u_confirm_pw] .check').hasClass('true') ) {
								alert('비밀번호가 일치하지 않습니다.');
								$('#u_confirm_pw').val('').focus();

								return false;
							} else {
								document.form.submit();

								return false;
							}
						};

						formValidation(
							'alert', [
								['#u_now_pw', '현재 비밀번호를 입력 해 주세요.'],
								['#u_new_pw', '비밀번호를 입력 해 주세요.'],
								['#u_confirm_pw', '비밀번호를 입력 해 주세요.']
							], validationPass );
					});
					</script>

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
