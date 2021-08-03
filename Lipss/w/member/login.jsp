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

	<!-- wrap -->
	<main id="wrap" class="member login">
		<div id="contents">

			<div class="account_area">
				<img src="/w/pjtCom/images/sub/img_login_logo.png" alt="" class="logo">

				<div class="inner">
					<div class="tab_menu">
						<a href="#member" class="on">회원 로그인</a>
						<a href="#nomember">비회원 주문 조회</a>
					</div>

					<!-- 회원 로그인 // -->
					<div id="member" class="tab_contents show">
						<form>
							<fieldset class="login_field">
								<legend class="hide">LOGIN</legend>

								<input type="text" placeholder="아이디" title="아이디 입력" class="txt_type1 write_id">
								<input type="password" placeholder="비밀번호" title="비밀번호 입력" class="txt_type1 write_pw">

								<input type="checkbox" id="save_id" class="chk_type1"><label for="save_id" class="save_id">아이디 저장</label>

								<button type="submit" class="btn_login">로그인 <span>(LOGIN)</span></button>
							</fieldset>
						</form>

						<!-- 회원가입, 찾기 // -->
						<!--
							팝업 호출 : fn.popupOpen('#팝업아이디');
							팝업 닫기 : fn.popupClose();
					 	-->
						<ul class="etc_list">
							<li><a href="#join_choose" onclick="fn.popupOpen('#join_choose');">회원가입</a></li>
							<li><a href="#search_id" onclick="fn.popupOpen('#search_id');">아이디 찾기</a></li>
							<li><a href="#search_pw" onclick="fn.popupOpen('#search_pw');">비밀번호 찾기</a></li>
						</ul>
						<!-- // 회원가입, 찾기-->

						<div class="guest_order_area">
							<a href="#" class="guest_order">비회원 구매 <span>Guest Order</span></a><!-- 비회원 주문 : 추가 : 2018.05.09 -->
						</div>

						<!-- SNS 간편 로그인 // -->
						<section class="sns_login">
							<h3 class="tit">SNS 간편 로그인</h3>
							<ul class="sns_list">
								<li><button type="button" class="facebook">페이스북 아이디로 로그인</button></li>
								<li><button type="button" class="kakao">카카오 아이디로 로그인</button></li>
								<li><button type="button" class="naver">네이버 아이디로 로그인</button></li>
							</ul>
							<p class="txt">SNS 계정으로 LIPSS회원 가입 후 로그인이 가능합니다.</p>
						</section>
						<!-- // SNS 간편 로그인 -->
					</div>
					<!-- // 회원 로그인 -->

					<!-- 비회원 주문 조회 // -->
					<div id="nomember" class="tab_contents">
						<form>
							<fieldset class="login_field">
								<legend class="hide">비회원 주문 조회</legend>

								<input type="text" placeholder="이름" title="이름 입력" class="txt_type1 write_id">
								<input type="text" placeholder="주문번호" title="주문번호 입력" class="txt_type1 write_number">
								<input type="text" placeholder="핸드폰 번호" title="핸드폰 번호 입력" class="txt_type1 write_phone">

								<button type="submit" class="btn_login">주문조회</button>
							</fieldset>
						</form>
					</div>
					<!-- // 비회원 주문 조회 -->
				</div>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- 회원가입 선택 // -->
	<div id="join_choose" class="popup join_choose">
		<div class="inner">
			<header class="header">
				<h2 class="tit">회원가입 <span>(Join)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<section class="join_area">
					<h3 class="tit">간편회원가입</h3>
					<p class="desc">인증 없이 빠르게 회원가입이 가능합니다.</p>
					<a href="/member/join_step1.jsp" class="btn_join">회원가입 <span>(Join)</span></a>
				</section>

				<section class="sns_area">
					<h3 class="tit">SNS계정 회원가입</h3>
					<p class="desc">인증 없이 빠르게 회원가입이 가능합니다.</p>
					<ul class="sns_list">
						<li><button type="button" class="facebook">페이스북 아이디로 회원가입</button></li>
						<li><button type="button" class="kakao">카카오 아이디로 회원가입</button></li>
						<li><button type="button" class="naver">네이버 아이디로 회원가입</button></li>
					</ul>
				</section>

				<section class="benefit_area">
					<h3 class="tit">LIPSS만의 특별한 혜택</h3>
					<ul class="benefit_list">
						<li><span>신규가입<b>할인쿠폰</b></span></li>
						<li><span>나만의<b>최애설정</b></span></li>
						<li><span>구매한<b>사진소장</b></span></li>
					</ul>
				</section>
			</div>
		</div>
	</div>
	<!-- // 회원가입 선택 -->

	<!-- 아이디 찾기 // -->
	<div id="search_id" class="popup search_id">
		<div class="inner">
			<header class="header">
				<h2 class="tit">아이디 찾기 <span>(Find ID)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form>
					<input type="text" placeholder="이름 (Full name)" title="이름 입력" class="txt_type1 write_name">
					<div>
						<input type="text" placeholder="E-mail" title="이메일 입력" class="txt_type1 write_mail1">
						<span class="at">@</span>
						<label class="select write_mail2">
							<select>
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
								<option value="self">직접입력</option>
							</select>
							<input type="text" placeholder="직접입력">
						</label>
					</div>

					<p class="txt">회원가입 시 등록하신 정보를 입력해 주세요.</p>

					<button type="button" class="btn_find">찾기 <span>(Find)</span></button>
				</form>
			</div>
		</div>
	</div>
	<!-- // 아이디 찾기 -->

	<!-- 아이디 찾기 결과 // -->
	<div id="search_id_result" class="popup search_id_result">
		<div class="inner">
			<header class="header">
				<h2 class="tit">아이디 찾기 <span>(Find ID)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
					<p class="txt">입력하신 정보와 일치하는 아이디입니다.</p>
					<p class="id">YGM***</p>
					<p class="date">가입일 : 2018.03.22</p>

					<div class="btn_area">
						<button type="button" class="btn_ok" onclick="fn.popupClose();">확인 <span>(OK)</span></button>
						<a href="#search_pw" class="btn_pw" onclick="fn.popupClose(function(){fn.popupOpen('#search_pw')});">비밀번호 찾기 <span>(Find PW)</span></a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- // 아이디 찾기 결과 -->

	<!-- 비밀번호 찾기 // -->
	<div id="search_pw" class="popup search_pw">
		<div class="inner">
			<header class="header">
				<h2 class="tit">비밀번호 찾기 <span>(Find PW)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form>
					<input type="text" placeholder="ID" title="아이디 입력" class="txt_type1 write_id">
					<input type="text" placeholder="Full name" title="이름 입력" class="txt_type1 write_name">
					<div>
						<input type="text" placeholder="E-mail" title="이메일 입력" class="txt_type1 write_mail1">
						<span class="at">@</span>
						<label class="select write_mail2">
							<select>
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
								<option value="self">직접입력</option>
							</select>
							<input type="text" placeholder="직접입력">
						</label>
					</div>

					<p class="txt">회원가입 시 등록하신 정보를 입력해 주세요.</p>
					<p class="txt">입력하신 이메일 주소로 임시 비밀번호가 발송됩니다.</p>

					<button type="button" class="btn_find">확인 <span>(OK)</span></button>
				</form>
			</div>
		</div>
	</div>
	<!-- // 비밀번호 찾기 -->

	<!-- 비밀번호 찾기 결과 // -->
	<div id="search_pw_result" class="popup search_pw_result">
		<div class="inner">
			<header class="header">
				<h2 class="tit">비밀번호 찾기 <span>(Find PW)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
					<p class="txt">회원가입 시 입력하신 이메일 주소로<br>임시 비밀번호가 발송되었습니다.</p>
					<p class="id">YGM****@naver.com</p>

					<button type="button" class="btn_ok" onclick="fn.popupClose();">확인 <span>(OK)</span></button>
				</form>
			</div>
		</div>
	</div>
	<!-- // 비밀번호 찾기 결과 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
