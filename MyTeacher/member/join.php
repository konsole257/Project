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
	<main id="wrap" class="member join">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_join.png" alt="회원가입"></h2>
	        	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php"; ?>
			</div>
			<!-- //sub title -->

            <div class="whiteboard">
				<fieldset>
				    <legend><img src="/pjtCom/images/sub/stit_join.png" alt="회원정보 입력"></legend>

                    <form>
						<div>
							<span class="tit">이름 *</span>
                        	<input type="text" title="이름 입력">
						</div>

						<div>
							<span class="tit">아이디 *</span>
                        	<input type="text" title="ID 입력" placeholder="영문 대/소문자 조합">
						</div>

						<div>
							<span class="tit">비밀번호 *</span>
                        	<input type="password" title="PASSWORD 입력" placeholder="영문 대/소문자 숫자 조합">
						</div>

						<div>
							<span class="tit">비밀번호 확인 *</span>
							<input type="password" title="PASSWORD 확인" placeholder="비밀번호를 다시 입력해 주세요.">
						</div>

						<div>
							<span class="tit">소속(학년) *</span>
							<label class="select">
								<select>
									<option>선택</option>
									<option>2</option>
									<option>3</option>
								</select>
							</label>
						</div>

						<div>
							<span class="tit">휴대폰 번호</span>
							<input type="text" title="휴대폰 번호 입력" placeholder="‘-’ 없이 숫자만 입력">
						</div>

						<div>
							<span class="tit">이메일</span>
							<input type="text" title="이메일 입력" class="mail">
							<span class="at">@</span>
							<input type="text" title="이메일 입력" class="mail">

							<label class="select">
								<select>
									<option>직접입력</option>
									<option>naver.com</option>
									<option>naver.com</option>
								</select>
							</label>
						</div>

						<div class="terms">
							<img src="/pjtCom/images/sub/stit_terms.png" alt="MY Teacher 회원 약관동의 (필수)">
							<div>
								<input type="checkbox" name="" id="terms1">
								<label for="terms1"><span>서비스 이용약관 동의</span></label>
								<a href="#">내용보기 ></a>
							</div>
							<div>
								<input type="checkbox" name="" id="terms2">
								<label for="terms2"><span>개인정보 수집/이용 동의</span></label>
								<a href="#">내용보기 ></a>
							</div>
						</div>

						<button type="submit" class="btn box join">회원가입</button>
                    </form>
				</fieldset>
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
