<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php"; ?>
	<!-- //config -->

	<meta name="description" content="@@description" />

	<link rel="stylesheet" href="/pjtCom/css/sub.css">
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="member login">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_login.png" alt="로그인"></h2>
	        	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php"; ?>
			</div>
			<!-- //sub title -->

            <div class="whiteboard">
				<fieldset>
				    <legend>로그인</legend>

                    <form>
                        <input type="checkbox" id="save_id">
                        <label for="save_id"><span>아이디 저장</span></label>

                        <input type="text" title="ID 입력">
                        <input type="password" title="PASSWORD 입력">

                        <button type="submit" class="btn box login">로그인</button>
						<a href="#" class="btn box join">회원가입</a><!-- 2019.09.09 : 추가 // -->
                    </form>
				</fieldset>

                <!-- 2019.09.09 : 삭제 <div class="btn_area">
                    <a href="#">아이디 찾기</a>
                    <a href="#">비밀번호 찾기</a>
                    <a href="#">회원가입</a>
                </div> -->
			</div>
			<p class="txt">아이디와 비밀번호를 잊어버리신 경우 support@myteacher.co.kr 로 문의 주시면 안내해 드리겠습니다.</p><!-- 2019.09.09 : 추가 // -->

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
