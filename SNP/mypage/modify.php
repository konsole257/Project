<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "회원정보 수정";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/modify.php";
	$pageClass = "mypage modify";
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
				<div class="tab-menu">
					<a href="/mypage/oderList.php">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php" class="active">회원정보 수정</a>
				</div>

				<form class="form-area">
					<fieldset>
						<legend>개인정보</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">이름</span>
									<span class="field-input name">
										<span class="inner">
											<input type="text" value="박보검" title="이름 입력" disabled>
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">아이디</span>
									<span class="field-input id">
										<span class="inner">
											<input type="text" value="bogum0616" title="아이디 입력" disabled>
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
											<input type="number" value="12345678" title="휴대폰 번호 입력">

											<!--
												인증 타이머 호출
												- fn.timer('분:초');
											-->
											<button type="button" class="btn stroke black btn-check" onclick="fn.timer('0:90');">중복체크</button>
										</span>

										<strong class="validate-pass">사용 가능한 휴대폰번호 입니다.</strong><!-- 입력한 정보가 맞을경우 출력 -->
										<strong class="validate-error">해당 휴대폰번호로 변경 할 수 없습니다.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>

							<!-- 휴대폰번호 중복확인 후 출력 // -->
							<div>
								<div>
									<span class="field-tit">인증번호</span>
									<span class="field-input confirm">
										<span class="inner">
											<input type="number" placeholder="인증번호 입력" title="인증번호 입력">
											<p class="timer"></p>

											<button type="button" class="btn fill black btn-submit">확인</button>
										</span>

										<strong class="validate-pass">인증이 완료되었습니다.</strong><!-- 입력한 정보가 맞을경우 출력 -->
										<strong class="validate-error">인증번호를 다시 확인해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>
							<!-- // 휴대폰번호 중복확인 후 출력 -->

							<div>
								<div>
									<span class="field-tit">이메일</span>
									<span class="field-input mail">
										<span class="inner">
											<input type="text" value="abcdefg12345" title="이메일 아이디 입력">
											<span class="at">@</span>
											<span class="select">
												<input type="text" placeholder="직접입력" title="직접입력">
												<select title="이메일 선택">
													<option value="direct">직접입력</option>
													<option selected>naver.com</option>
													<option>daum.net</option>
													<option>hanmail.net</option>
													<option>nate.com</option>
													<option>gmail.com</option>
													<option>hotmail.com</option>
												</select>
											</span>
											<button type="button" class="btn stroke black btn-check">중복체크</button>
										</span>

										<strong class="validate-pass right">사용 가능한 이메일 입니다.</strong><!-- 입력한 정보가 맞을경우 출력 -->
										<strong class="validate-error right">사용하실 수 없는 이메일 입니다.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">이벤트 수신 여부</span>
									<span class="field-input event">
										<span class="inner">
											<dl>
												<dt>SMS</dt>
												<dd>
													<label><input type="radio" name="sms"><span>수신</span></label>
													<label><input type="radio" name="sms" checked><span>미수신</span></label>
												</dd>

												<dt>이메일</dt>
												<dd>
													<label><input type="radio" name="mail"><span>수신</span></label>
													<label><input type="radio" name="mail" checked><span>미수신</span></label>
												</dd>
											</dl>
										</span>

										<div class="info-txt">
											<p>다양한 이벤트와 회원혜택 정보를 받아보실 수 있습니다.</p>
											<p>주문/결제/배송알림 및 SNP화장품 주요정책 관련 메시지 등은 수신동의 여부와<br> 관계없이 발송됩니다.</p>
										</div>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">생년월일</span>
									<span class="field-input birth">
										<span class="inner">
											<input type="number" value="19930616" title="생년월일 입력" disabled>
										</span>
									</span>
								</div>
							</div>
						</div>
					</fieldset>

					<!-- 2019.06.05 // -->
					<div class="btn-area">
						<button type="button" class="btn big stroke gray" onclick="fn.popupOpen('#modify-pw');">비밀번호 변경</button>
						<button type="button" class="btn big fill black">정보 수정</button>
					</div>
					<!-- // 2019.06.05 -->

					<fieldset>
						<legend>배송지 정보 <button type="button" class="btn smaller fill black btn-delivery" onclick="fn.popupOpen('#popOrderDeliveryLs');">배송지 목록</button></legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">주소</span>
									<span class="field-input addr">
										<span class="inner">
											<input type="text" id="postcode" value="07563" title="우편번호 입력" name="zip_code" class="zip_code" readonly>
											<button type="button" class="btn stroke gray btn-addr" onclick="execDaumPostcode()">우편번호 검색</button><br>
											<input type="text" id="roadAddress" value="서울특별시 강서구 공항대로 61길 29" title="도로명주소" readonly><br>
											<input type="text" id="detailAddress" placeholder="상세주소 입력">
											<!-- <label><input type="checkbox" checked><span>배송지 저장</span></label> 2019.07.09 : 삭제 -->
											<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
											<script>
												//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
												function execDaumPostcode() {
													new daum.Postcode({
														oncomplete: function(data) {
															// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

															// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
															// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
															var roadAddr = data.roadAddress; // 도로명 주소 변수
															var extraRoadAddr = ''; // 참고 항목 변수

															// 법정동명이 있을 경우 추가한다. (법정리는 제외)
															// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
															if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
																extraRoadAddr += data.bname;
															}
															// 건물명이 있고, 공동주택일 경우 추가한다.
															if(data.buildingName !== '' && data.apartment === 'Y'){
																extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
															}
															// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
															if(extraRoadAddr !== ''){
																extraRoadAddr = ' (' + extraRoadAddr + ')';
															}

															// 우편번호와 주소 정보를 해당 필드에 넣는다.
															document.getElementById('postcode').value = data.zonecode;
															document.getElementById("roadAddress").value = roadAddr;

															// 커서를 상세주소 필드로 이동한다.
															document.getElementById("detailAddress").focus();
														}
													}).open();
												}
											</script>
										</span>

										<!-- 2019.07.09 : 추가 // -->
										<div class="info-txt">
											<p>배송지는 최대 3개 저장 가능합니다.</p>
											<p>기본 배송지는 배송지 목록 팝업에서 설정 가능합니다.</p>
											<p>최초로 저장한 배송지는 기본 배송지로 지정됩니다.</p>
										</div>
										<!-- // 2019.07.09 : 추가 -->
									</span>
								</div>
							</div>
						</div>
					</fieldset>

					<!-- 2019.06.05 // -->
					<div class="btn-area">
						<button type="button" class="btn big fill black">배송지 저장</button><!-- 2019.07.09 : 텍스트 수정 -->
					</div>
					<!-- // 2019.06.05 -->
				</form>

				<!-- 2019.06.05 // -->
				<div class="info">
					<p>SNP를 더 이상 이용하지 않는다면</p>
					<a href="/mypage/withdrawal.php">회원탈퇴</a>
				</div>
				<!-- // 2019.06.05 -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 배송지 목록 // -->
	<div id="popOrderDeliveryLs" class="popup orderdeliveryls">
		<div class="inner">
			<header class="header">
				<h2 class="tit">배송지 목록</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<ul>
					<li class="default"><!-- 2019.07.09 : 기본배송지 class="default" -->
						<label><input type="radio"><span>박보검</span></label>
						서울 강서구 화곡로29길 7 (화곡동, 2030오피스텔)
						<button type="button" class="btn-del">삭제</button>
					</li>
					<li>
						<label><input type="radio"><span>박현지</span></label>
						서울 마포구 서강대길3 서강빌딩 6층 코너스톤 인터랙티브(신수동 1-3)
						<button type="button" class="btn-del">삭제</button>
					</li>
					<li>
						<label><input type="radio"><span>차은우</span></label>
						서울 강서구 화곡로29길 7 (화곡동, 2030오피스텔)
						<button type="button" class="btn-del">삭제</button>
					</li>
				</ul>

				<div class="info-txt">
					<p>이전 배송지는 최대 3개 까지 노출 됩니다.</p>
				</div>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">선택 완료</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 배송지 목록 -->

	<!-- 팝업 : 비밀번호 변경 // -->
	<div id="modify-pw" class="popup modify-pw">
		<div class="inner">
			<header class="header">
				<h2 class="tit">비밀번호 변경</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
						<legend class="hide">비밀번호 재설정</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">기존 비밀번호</span>
									<span class="field-input pw">
										<span class="inner">
											<input type="password" title="비밀번호 입력">
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">새 비밀번호</span>
									<span class="field-input pw">
										<span class="inner">
											<input type="password" placeholder="대소문자 구별, 영문숫자 혼합 6~13자리" title="새 비밀번호 입력">
										</span>

										<strong class="validate-error">대소문자 구별, 영문숫자 혼합 6-13자리를 사용해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">비밀번호 확인</span>
									<span class="field-input pw">
										<span class="inner">
											<input type="password" title="비밀번호 확인">
										</span>

										<strong class="validate-error">비밀번호가 일치하지 않습니다.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>

			<!-- 2019.03.15// -->
			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">변경</button>
			</div>
			<!-- //2019.03.15 -->
		</div>
	</div>
	<!-- // 팝업 : 비밀번호 변경 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
