<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "LOG IN";
	$path2Tit = "";
	$path1Href = "/member/login.php";
	$path2Href = "";
	$pageClass = "member login";
?>

<head>
	<!-- config// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/sub.css" />
</head>

<body>

<div id="wrap" class="sub <?= $shopName ?>">
	<!-- header// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="<?= $pageClass ?>">
		<div id="contents">
			<div class="top-area">
				<h2 class="tit"><?= $path1Tit ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<div class="tab-area">
					<div class="tab-menu">
						<a href="#login" class="active">로그인</a>
						<a href="#nomember">비회원 주문조회</a>
					</div>

					<div id="login" class="tab-contents active">
						<form class="form-area">
							<fieldset>
								<legend class="hide">로그인</legend>

								<input type="text" placeholder="아이디" title="아이디 입력">
								<input type="password" placeholder="비밀번호" title="비밀번호 입력">

								<label class="save-id"><input type="checkbox" checked><span>아이디 저장</span></label>

								<strong class="validate-error">아이디와 비밀번호를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->

								<button type="submit" class="btn big fill black btn-login">로그인</button>

								<button type="submit" class="btn big stroke black btn-nomember">비회원 주문하기</button>
							</fieldset>
						</form>

						<!--
							팝업 호출
							- 아이디 찾기 : fn.popupOpen('#find-id');
							- 아이디 찾기 결과 : fn.popupOpen('#result-id');
							- 비밀번호 찾기 : fn.popupOpen('#find-pw');
							- 비밀번호 재설정 : fn.popupOpen('#reset-pw');
						-->
						<div class="membership-area">
							<a href="/member/joinStep1.php" class="join">회원가입</a>
							<a href="#find-id" onclick="fn.popupOpen('#find-id');">아이디 찾기</a>
							<a href="#find-pw" onclick="fn.popupOpen('#find-pw');">비밀번호 찾기</a>
							<span class="tooltip"><img src="/pjtCom/pc/images/sub/tooltip_login.jpg" alt=""></span>

							<div class="sns">
								<p>SNS 간편 로그인</p>

								<button type="button" class="btn-naver">네이버</button>
								<button type="button" class="btn-kakao">카카오톡</button>
								<button type="button" class="btn-facebook">페이스북</button>
							</div>
						</div>
					</div>

					<div id="nomember" class="tab-contents">
						<form class="form-area">
							<fieldset>
								<legend class="hide">비회원 주문조회</legend>

								<input type="text" placeholder="주문자명" title="주문자명 입력">
								<input type="text" placeholder="주문번호" title="주문번호 입력">
								<input type="password" placeholder="비밀번호" title="비밀번호 입력">

								<strong class="validate-error">주문 정보를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->

								<button type="submit" class="btn big fill black btn-inquiry">주문정보 조회</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 아이디 찾기 // -->
	<div id="find-id" class="popup find-id">
		<div class="inner">
			<header class="header">
				<h2 class="tit">아이디 찾기</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
						<legend class="hide">아이디 찾기</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">이름</span>
									<span class="field-input name">
										<span class="inner">
											<input type="text" title="이름 입력">
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">휴대폰 번호</span>
									<span class="field-input phone">
										<span class="inner">
											<span class="select">
												<select title="국번 선택">
													<option>010</option>
													<option>011</option>
													<option>016</option>
													<option>017</option>
													<option>018</option>
													<option>019</option>
												</select>
											</span>
											<input type="number" placeholder="‘-’ 없이 숫자만" title="휴대폰 번호 입력">
										</span>
									</span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>

				<strong class="validate-error">입력하신 정보를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose(function(){fn.popupOpen('#result-id')});">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 아이디 찾기 -->

	<!-- 팝업 : 아이디 찾기 결과 // -->
	<div id="result-id" class="popup result-id">
		<div class="inner">
			<header class="header">
				<h2 class="tit">아이디 찾기 결과</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">김생명님, 가입하신 아이디는 <b>SNP***</b> 입니다.</p>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 아이디 찾기 결과 -->

	<!-- 팝업 : 비밀번호 찾기 // -->
	<div id="find-pw" class="popup find-pw">
		<div class="inner">
			<header class="header">
				<h2 class="tit">비밀번호 찾기</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">로그인 정보를 입력하시고 비밀번호를 재설정해주세요.</p>

				<form class="form-area">
					<fieldset>
						<legend class="hide">비밀번호 찾기</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">아이디</span>
									<span class="field-input id">
										<span class="inner">
											<input type="text" title="아이디 입력">
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">휴대폰 번호</span>
									<span class="field-input phone">
										<span class="inner">
											<span class="select">
												<select title="국번 선택">
													<option>010</option>
													<option>011</option>
													<option>016</option>
													<option>017</option>
													<option>018</option>
													<option>019</option>
												</select>
											</span>
											<input type="number" placeholder="‘-’ 없이 숫자만" title="휴대폰 번호 입력">
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">이메일</span>
									<span class="field-input mail">
										<span class="inner">
											<input type="text" title="이메일 아이디 입력">
											<span class="at">@</span>
											<span class="select direct">
												<input type="text" placeholder="직접입력" title="직접입력">
												<select title="이메일 선택">
													<option value="direct">직접입력</option>
													<option>naver.com</option>
													<option>daum.net</option>
													<option>hanmail.net</option>
													<option>nate.com</option>
													<option>gmail.com</option>
													<option>hotmail.com</option>
												</select>
											</span>
										</span>
									</span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>

				<strong class="validate-error">입력하신 정보를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
			</div>

			<div class="btn-area">
				<!-- <button type="button" class="btn fill black btn-close" onclick="fn.popupClose(function(){fn.popupOpen('#reset-pw')});">확인</button> -->
				<button type="button" class="btn fill black btn-close" onclick="fn.popupOpen('#test');">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 비밀번호 찾기 -->

	<!-- 팝업 : 휴면해제 알림 // -->
	<div id="test" class="alert dormant">
		<div class="inner">
			<div class="contents">
			휴면상태가 해제 되었습니다.<br>
			안전한 서비스를 위해 <br>
			재 로그인 후 이용해주세요.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose(this);">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 휴면해제 알림 -->

	<!-- 팝업 : 비밀번호 재설정 // -->
	<div id="reset-pw" class="popup reset-pw">
		<div class="inner">
			<header class="header">
				<h2 class="tit">비밀번호 재설정</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">새로운 비밀번호 등록 후 로그인해주세요.</p>

				<form class="form-area">
					<fieldset>
						<legend class="hide">비밀번호 재설정</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">새 비밀번호</span>
									<span class="field-input pw">
										<span class="inner">
											<input type="password" placeholder="대소문자 구별, 영문숫자 혼합 6~13자리" title="새 비밀번호 입력">
										</span>

										<strong class="validate-error">입력하신 정보를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">비밀번호 확인</span>
									<span class="field-input pw">
										<span class="inner">
											<input type="password" placeholder="대소문자 구별, 영문숫자 혼합 6~13자리" title="비밀번호 확인">
										</span>

										<strong class="validate-error">비밀번호가 일치하지 않습니다.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 비밀번호 재설정 -->

	<!-- 팝업 : 휴면해제 알림 // -->
	<div id="dormant" class="alert dormant">
		<div class="inner">
			<div class="contents">
			휴면상태가 해제 되었습니다.<br>
			안전한 서비스를 위해 <br>
			재 로그인 후 이용해주세요.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 휴면해제 알림 -->

	<script>
		fn.popupOpen('#dormant');
	</script>

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
