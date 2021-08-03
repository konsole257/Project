<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "EVENT";
	$path2Tit = "진행 이벤트";
	$path1Href = "/event/eventList.php";
	$path2Href = "/event/eventList.php";
	$pageClass = "event ing";
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
				<!-- view // -->
				<div class="view">
					<div class="viewti">
						<h3>샘플 신청 (샘플 선착순 아닌 경우)</h3>
						<span class="txt-dday">D-30</span>
						<span class="txt-date">2019.01.02 - 2019.01.31</span>
					</div>

					<!-- <div class="sns">
						<a href="#" class="btn btn-facebook">facebook</a>
						<a href="#" class="btn btn-kakaostory">카카오스토리</a>
					</div> -->

					<div class="cont">
						<img src="/pjtCom/pc/images/temp/event_1200.jpg" alt="">
					</div>
				</div>
				<!-- // view -->

				<!-- 상품선택 // -->
				<div class="productselect">
					<label>
						<input type="radio" name="proselect"><span></span>
						<span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span>
						퍼빗 바이오 셀 마스크 더블 수딩 퍼빗 바이오 셀 마스크 더블 수딩
					</label>
				</div>
				<!-- // 상품선택 -->

				<!-- btn // -->
				<div class="btn-area">
					<button type="button" class="btn big fill black" onclick="fn.popupOpen('#popEventEntry');">신청하기</button>
				</div>
				<!-- // btn -->

				<!-- 2019.03.28 : 수정 // -->
				<div class="info-txt">
					<strong>안내</strong>
					<p>경품은 이벤트 참여 시 기재하신 주소지로 발송되며, 잘못된 주소지 정보로 발송 오류는 책임지지 않습니다.</p>
					<p>이벤트 경품과 당첨자 발표일은 회사의 사정에 따라 변경될 수 있으며, 변경 시 공지사항을 통해 안내해드립니다.</p>
					<p>경품은 당첨자 발표 이후 순차적으로 배송해 드립니다.</p>
				</div>
				<!-- // 2019.03.28 : 수정 -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 신청하기 // -->
	<div id="popEventEntry" class="popup evententry">
		<div class="inner">
			<header class="header">
				<h2 class="tit">신청하기</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
						<legend class="hide">신청하기</legend>
						<div class="entry-area">
							<h3>개인정보 수집, 이용동의 및 취급위탁 동의</h3>
							<div class="agree-area">
								<div class="scrollbar agreecont">
									<div class="cont">
										1. 개인정보 수집, 이용동의<br>
										1) 개인정보 수집 및 이용목적<br>
										- 이벤트 신청/응모자 확인 및 경품 배송<br>
										<br>
										2) 수집하는 개인정보의 항목<br>
										- 주소, 휴대전화<br>
										<br>
										3) 개인정보 보유 및 이용기간<br>
										- 이벤트 종료 후 3개월 이내<br>
										<br>
										2, 개인정보의 취급위탁<br>
										- 사이트 운영 : ㈜에스디생명공학<br>
										- 경품배송 : 로지원<br>
										- 문자 발송 : 00000<br>
										- 메일 발송 : 00000<br>
										<br>
										1. 개인정보 수집, 이용동의<br>
										1) 개인정보 수집 및 이용목적<br>
										- 이벤트 신청/응모자 확인 및 경품 배송<br>
										<br>
										2) 수집하는 개인정보의 항목<br>
										- 주소, 휴대전화<br>
										<br>
										3) 개인정보 보유 및 이용기간<br>
										- 이벤트 종료 후 3개월 이내<br>
										<br>
										2, 개인정보의 취급위탁<br>
										- 사이트 운영 : ㈜에스디생명공학<br>
										- 경품배송 : 로지원<br>
										- 문자 발송 : 00000<br>
										- 메일 발송 : 00000<br>
									</div>
								</div>

								<label><input type="checkbox"><span>개인정보 수집 및 이용에 동의 합니다. <em>(필수)</em></span></label>
							</div>

							<div class="input-area">
								<div>
									<div>
										<span class="field-tit">주소</span>
										<span class="field-input addr">
											<span class="inner">
												<input type="text" id="postcode" title="우편번호 입력" readonly>
												<button type="button" class="btn stroke gray btn-addr" onclick="execDaumPostcode()">우편번호 검색</button><br>
												<input type="text" id="roadAddress" title="도로명주소" readonly><br>
												<input type="text" id="detailAddress" placeholder="상세주소 입력">
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

								<p>한 번 입력된 주소지는 변경할 수 없습니다.<br>정확한 정보로 기입해 주세요.</p>

								<div class="btn-area">
									<button type="button" class="btn fill black" onclick="fn.popupClose();">신청하기</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 신청하기 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
