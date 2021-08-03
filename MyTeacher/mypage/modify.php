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
	<main id="wrap" class="mypage modify">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/modify.php">회원정보수정</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
					<ul class="tabmenu">
						<li class="condition"><a href="/mypage/">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">총 학습시간</a></li><!-- 2019.09.16 : 수정 -->
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 시간대</a></li><!-- 2019.09.16 : 수정 -->
						<li class="speed"><a href="/mypage/speed_vocabulary.php">문제풀이 속도</a></li>
						<li class="modify"><a href="/mypage/modify.php" class="on">회원정보 수정</a></li>
					</ul>
					<!-- // 2017.08.21 : 수정 -->
				</div>
			</div>

			<div class="output_area">
				<div class="output_wrap">
					<div class="output_inner">
						<h3 class="tit">회원정보 수정</h3>
					</div>
				</div>
			</div>

			<!-- 2019.09.16 : 수정 // -->
			<div class="whiteboard">
				<fieldset>
				    <legend>회원정보 입력</legend>

                    <form>
						<div>
							<span class="tit">이름 *</span>
                        	<input type="text" title="이름 입력" value="마이티쳐" readonly>
						</div>

						<div>
							<span class="tit">아이디 *</span>
                        	<input type="text" title="ID 입력" value="adads1" readonly>
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

						<button type="submit" class="btn box save">회원정보 수정</button>
                    </form>
				</fieldset>
			</div>

			<a href="#" class="btn withdrawal">회원탈퇴</a>
			<!-- // 2019.09.16 : 수정 -->

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
