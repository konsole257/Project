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
					<div class="login_area" data-ui="tab">
						<section class="member on">
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#member_tab">회원</a></h3>

							<div data-ui="tab_content" id="member_tab">
								<div class="login_form">
									<form name="form">
										<fieldset>
											<legend>로그인</legend>

											<div class="input_area">
												<div class="input_wrap" data-ui="placeholder"><input type="text" id="u_id" /><label for="u_id">아이디를 입력하세요.</label></div>
												<div class="input_wrap" data-ui="placeholder"><input type="password" id="u_pw" /><label for="u_pw">비밀번호를 입력하세요.</label></div>
											</div>


											<input type="checkbox" id="save_id" /><label for="save_id">아이디 저장</label>

											<span class="btn_area"><a href="#" class="btn_login">LOGIN</a></span>

											<a href="/membership/inquiry.jsp?inquiryID" class="btn_id">아이디 찾기</a>
											<a href="/membership/inquiry.jsp?inquiryPW" class="btn_pw">비밀번호 찾기</a>

										</fieldset>
									</form>
								</div>

								<div class="etc">
									<p class="txt">비회원으로 구매 가능합니다.</p>
									<p class="txt">쿠폰 혜택은 <em>회원 가입 후 구매시</em>확인 가능합니다.</p>

									<div class="btn_area">
										<a href="#" class="midium type3">비회원 주문하기</a>
										<a href="/membership/join_step1.jsp" class="midium type4">회원가입</a>
									</div>
								</div>
							</div>
						</section>

						<section class="nomember">
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#nomember_tab">비회원(주문조회)</a></h3>

							<div data-ui="tab_content" id="nomember_tab">
								<!-- 2016-03-18 : 추가 // -->
								<div class="nomember_form">
									<form name="form">
										<fieldset>
											<legend>비회원 주문조회</legend>

											<div class="input_area">
												<div class="input_wrap" data-ui="placeholder"><input type="text" id="u_name" /><label for="u_name">이름</label></div>
												<div class="hp">
													<select title="휴대폰 앞자리 선택" id="u_hp1">
														<option value="" >010</option>
														<option value="1" >1</option>
														<option value="2" >2</option>
													</select>
													<span class="input_wrap">
														<input type="text" title="휴대폰 중간자리 입력" id="u_hp2" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
													</span>
													<span class="input_wrap">
														<input type="text" title="휴대폰 뒷자리 입력"id="u_hp3"  maxlength="4" data-type="onlyNumber" />
													</span>
												</div>
												<div class="input_wrap" data-ui="placeholder"><input type="text" id="u_number" /><label for="u_number">주문번호</label></div>
											</div>

											<span class="btn_area"><a href="#" class="btn_login">확인</a></span>
										</fieldset>
									</form>
								</div>

								<div class="etc">
									<p class="txt">비회원 구매 시 입력했던 주문자명/휴대폰/주문번호를 입력하시고<br /> 확인버튼을 눌러주세요.</p>
									<!--<p class="txt error">입력하신 정보의 주문내용이 없습니다.<br /> 정보를 다시 확인 해 주세요.</p> 주문조회 실패  -->

									<div class="btn_area">
										<a href="#nomember_number" class="midium type3" data-fn="popupBtnOpen">주문번호 찾기</a>
									</div>
								</div>
								<!-- // 2016-03-18 : 추가 -->

							</div>
						</section>
					</div>

					<!-- 2016-03-18 : 추가 // -->
					<!-- 비회원 주문 번호 찾기 팝업 // -->
					<div id="nomember_number" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">비회원 주문 번호 찾기</h2>

							<div class="popup_content">

								<form>
									<fieldset>
										<legend>주문 번호 찾기</legend>

										<div>
											<strong>이름</strong>
											<input type="text" title="이름입력" id="nomember_name" />
										</div>

										<div class="hp">
											<strong>휴대폰</strong>
											<select title="휴대폰 앞자리 선택" id="nomember_hp1">
												<option value="" >010</option>
												<option value="1" >1</option>
												<option value="2" >2</option>
											</select>
											<span class="input_wrap">
												<input type="text" title="휴대폰 중간자리 입력" id="nomember_hp2" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
											</span>
											<span class="input_wrap">
												<input type="text" title="휴대폰 뒷자리 입력" id="nomember_hp3"  maxlength="4" data-type="onlyNumber" />
											</span>
										</div>

										<div class="number">
											<div class="input_wrap" data-ui="placeholder"><input id="u_code" type="text" maxlength="6" data-type="onlyNumber"><label for="u_code">인증번호 숫자 6자리</label></div>
											<span class="btn_area"><button type="button" class="small type4 btn_code">인증번호 받기</button></span>
										</div>

										<div class="btn_area">
											<button type="button" class="midium type3 btn_code">주문번호 찾기</button>
										</div>
									</fieldset>
								</form>

								<!-- 주문번호 발송 후
								<p class="message">
									<strong>스탠드님</strong>, 입력하신 <em>휴대폰으로</em><br />
									주문번호를 발송하였습니다.
								</p>
								<div class="btn_area">
									<a href="#" class="midium type1 btn_close2">닫기</a>
								</div>-->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 비밀번호 변경 팝업 -->
					<!-- // 2016-03-18 : 추가 -->

					<script>
					/*
					$('form').submit(function(e){
						e.preventDefault();

						function validationPass(){
							document.form.submit();
						};

						formValidation(
							'alert', [
							['#u_id', '아이디를 입력해주세요.'],
							['#u_pw', '비밀번호를 입력해주세요.']
						], validationPass );
					});*/
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
