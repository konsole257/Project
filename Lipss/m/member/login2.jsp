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
<div id="wrap" class="login login2">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">
		<a href="/m/"><img src="/m/mpjtCom/images/sub/img_error_logo.png" alt="" class="logo"></a>
		<section class="log_form">
			<div class="tab_menu">
				<a href="#Member" class="on">회원 로그인</a>
				<a href="#NonMember">비회원 주문 조회</a>
			</div>
			<div id="Member" class="tab_contents show">
				<form>
					<fieldset>
						<legend class="hide">회원 로그인</legend>
						<input type="text" title="아이디 입력" placeholder="아이디 (ID)" />
						<input type="password" title="비밀번호 입력" placeholder="비밀번호 (Password)" class="mgt8" />
						<label><input type="checkbox" class="chk_type1"> <span>아이디 저장</span></label>
						<button type="submit" class="btn_purple">로그인<span>Login</span></button>
					</fieldset>
				</form>
				<ul class="find_area">
					<li><a href="#">회원가입</a></li>
					<li><a href="#" onclick="fn.popupOpen('#popup1')">아이디 찾기</a></li>
					<li><a href="#" onclick="fn.popupOpen('#popup3')">비밀번호 찾기</a></li>
				</ul>

				<div class="guest_order_area">
					<a href="#" class="guest_order">비회원 구매 <span>Guest Order</span></a><!-- 비회원 주문 : 추가 : 2018.05.09 -->
				</div>

				<div class="sns_area">
					<strong>SNS 간편 로그인</strong>
					<ul>
						<li><a href="#" class="icon sns_fb">페이스북</a></li>
						<li><a href="#" class="icon sns_kakao">카카오톡</a></li>
						<li><a href="#" class="icon sns_naver">네이버</a></li>
					</ul>
					<small>
						* SNS 계정으로 LIPSS회원 가입 후<br />
						로그인이 가능합니다.
					</small>
				</div>
			</div>
			<div id="NonMember" class="tab_contents">
				<form>
					<fieldset>
						<legend class="hide">비회원 주문 조회</legend>
						<input type="text" title="이름 입력" placeholder="이름 (Full name)" />
						<input type="text" title="주문번호 입력" placeholder="주문번호 (Order No.)" class="mgt8" />
						<input type="text" title="핸드폰 번호 입력" placeholder="핸드폰 번호 (Mobile number)" class="mgt8" />
						<button type="button" class="btn_purple">주문 조회<span>Check Order</span></button>
					</fieldset>
				</form>
			</div>
		</section>

	</main>
	<!-- //content -->

	<!-- popup// -->
	<div id="popup1" class="popup find_id">
		<div class="popup_area">
			<div class="inner">
				<h3>아이디 찾기 <span>(Find ID)</span></h3>
				<div class="txt">
					<input type="text" title="이름 입력" placeholder="이름 (Full name)" class="inp_type1" />
					<div class="divide mgt12">
						<input type="text" title="이메일 아이디 입력" placeholder="E-mail" class="inp_type1"/>
						<span class="at">@</span>
						<div class="select email">
							<select title="이메일 도메인 선택">
								<option>직접입력</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
								<option>naver.com</option>
							</select>
							<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력" />
						</div>
					</div>
					<small class="bultype">회원가입 시 등록하신 정보를 입력해 주세요.</small>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_purple" onclick="fn.popupClose('#popup1');fn.popupOpen('#popup2')">찾기<span>Find</span></button>
					<button type="button" class="btn" onclick="fn.popupClose('#popup1')">닫기<span>Close</span></button>
				</div>
			</div>
		</div>
	</div>
	<div id="popup2" class="popup find_idEnd">
		<div class="popup_area">
			<div class="inner">
				<h3>아이디 찾기 <span>(Find ID)</span></h3>
				<div class="txt">
					<p>입력하신 정보와 일치하는 아이디입니다</p>
					<b>YGM***</b>
					<span>가입일 : 2018.03.22</span>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_purple">비밀번호 찾기 <span>Find P/W</span></button>
					<button type="button" class="btn" onclick="fn.popupClose('#popup2')">닫기 <span>Close</span></button>
				</div>
			</div>
		</div>
	</div>
	<div id="popup3" class="popup find_pw">
		<div class="popup_area">
			<div class="inner">
				<h3>비밀번호 찾기 <span>(Find PW)</span></h3>
				<div class="txt">
					<input type="text" title="아이디 입력" placeholder="아이디 (ID)" class="inp_type1" />
					<input type="text" title="이름 입력" placeholder="이름 (Full name)" class="inp_type1 mgt12" />
					<div class="divide mgt12">
						<input type="text" title="이메일 아이디 입력" placeholder="E-mail" class="inp_type1"/>
						<span class="at">@</span>
						<div class="select email">
							<select title="이메일 도메인 선택">
								<option>직접입력</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
								<option>naver.com</option>
							</select>
							<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력" />
						</div>
					</div>
					<small class="bultype">회원가입 시 등록하신 정보를 입력해 주세요.</small>
					<small class="bultype mgt4">입력하신 이메일 주소로 임시 비밀번호가 발송됩니다.</small>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_purple" onclick="fn.popupClose('#popup3');fn.popupOpen('#popup4')">찾기<span>Find</span></button>
					<button type="button" class="btn" onclick="fn.popupClose('#popup3')">닫기<span>Close</span></button>
				</div>
			</div>
		</div>
	</div>
	<div id="popup4" class="popup find_pwEnd">
		<div class="popup_area">
			<div class="inner">
				<h3>비밀번호 찾기 <span>(Find PW)</span></h3>
				<div class="txt">
					<p>
						회원가입 시 입력하신 이메일 주소로<br />
						임시 비밀번호가 발송되었습니다.
					</p>
					<b>ygm****@naver.com</b>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_purple" onclick="fn.popupClose('#popup4');">확인<span>Ok</span></button>
				</div>
			</div>
		</div>
	</div>
	<!-- //popup -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
