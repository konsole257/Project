<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="mypage">
<div id="wrap" class="modify_step2">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">회원정보 수정</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<!-- 필수정보// -->
		<div class="area">
			<h3>필수 정보</h3>
			<div class="name_area">
				<input title="이름 입력" placeholder="이름 (Full name)" type="text" class="inp_type1" value="김승혜" disabled/>
				<div>
					<label><input type="radio" name="sex" class="rdo_boxtype" checked="checked" /><span>남</span></label>
					<label><input type="radio" name="sex" class="rdo_boxtype" /><span>여</span></label>
				</div>
			</div>
			<input title="아이디 입력" placeholder="ID (숫자, 영문조합으로 6자리 이상)" type="text" class="inp_type1 mgt12" value="ygm0309" disabled/>

			<input title="비밀번호 입력" placeholder="비밀번호 입력 (Password)" type="password" class="inp_type1 mgt16" />

			<p class="txt_alert mgt12">숫자, 영문, 특수기호 조합  8~15자리 이하 입력</p><!-- 추가 : 2018.06.07_2 -->

			<input title="비밀번호 재입력" placeholder="비밀번호 재입력 (Password)" type="password" class="inp_type1 mgt12" />
			<div class="email_area">
				<input type="text" title="이메일 입력" placeholder="E-mail" class="inp_type1" />
				<span class="at">@</span>
				<div class="select email">
					<select title="이메일 도메인 선택">
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>naver.com</option>
						<option value="MAIL_KIND_ETC" data-temp="">직접입력</option>
					</select>
					<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력" />
				</div>
				<button type="button" class="btn_chk">중복확인<span>Check</span></button><!-- 추가 : 2018.05.25 -->
			</div>
		</div>
		<!-- //필수정보 -->

		<!-- 추가정보// -->
		<div class="area add_area">
			<h3>추가 정보(선택)</h3>
			<input title="핸드폰 번호 입력" placeholder="핸드폰 번호 (Mobile number)" type="text" class="inp_type1" />
			<input title="생년월일 입력" placeholder="생년월일 (Date of Birth / 생년월일8자리 : YYMMDD)" type="text" class="inp_type1 mgt12 brith" />

			<div class="marketing">
				<strong>마케팅 정보 수신 동의</strong>
				<label><input type="checkbox" class="chk_type1" /><span>E-mail</span></label>
				<label><input type="checkbox" class="chk_type1" /><span>SMS</span></label>
			</div>
		</div>
		<!-- //추가정보 -->

		<div class="btn_area">
			<a href="#" class="btn_purple">저장<span>Save</span></a>
			<a href="#" class="btn_cancel">취소<span>Cancel</span></a>
		</div>

		<div class="withdrawal_area">
			<p class="txt_withdrawal">회원탈퇴 시 더 이상 LIPSS 사이트를 이용하실 수 없습니다.</p>
			<a href="#" class="btn_withdrawal">회원탈퇴</a>
		</div>
	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
