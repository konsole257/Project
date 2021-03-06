<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "취소/교환/반품 조회";
	$path3Tit = "교환/반품";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/claimList.php";
	$pageClass = "mypage claim write";
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
				<h2 class="tit"><?= $path3Tit ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<div class="myinfo-box">
					<!-- 2019.03.15 : 2019.04.11 : 수정 // -->
					<!-- 안내문구 // -->
					<div class="infoarea">
						<strong class="tit-txt">교환/반품(환불) 안내</strong>
						<p>SNP MALL은 전자상거래 소비자 보호에 관한 법률을 준수하고 있습니다.</p>
						<div class="info-txt">
							<p class="tit">교환/반품(환불)</p>
							<p>배송된 상품에 하자가 있거나, 오배송의 경우 배송비는 SNP MALL이 부담합니다. </p>
							<p>단순 변심의 경우 왕복 택배비는 소비자 부담입니다. </p>
							<p>상품을 받은 날로부터 7일 이내에 신청 가능합니다. </p>
							<p>단순 변심으로 인한 제품 교환은 1회로 제한하며, 교환 시 구성품도 함께 보내주셔야 처리가 가능합니다. </p>
							<p>도서/산간/오지 지역의 경우 교환/반품 배송비가 추가될 수 있습니다.</p>

							<p class="tit">교환/반품(환불) 불가의 경우</p>
							<p>소비자 부주의로 인한 훼손 및 파손의 경우 교환/반품(환불)이 불가능합니다. </p>
							<p>상품 사용, 박스 오픈, 씰 제거 등으로 인한 상품 가치가 훼손된 것으로 판단되면 교환/반품(환불) 처리가 불가능합니다. </p>
							<p>제품 수령 후 7일이 지난 경우 교환/반품(환불)이 어려우니 양해해 주시기 바랍니다. </p>

							<p class="tit">교환/반품 방법</p>
							<p class="nobullet">
								1. 상품 수령 후 7일 이내에 1:1상담문의, CS 센터, 현재 페이지를 통해 신청해주세요.<br>
								(사전 연락 없이 임의로 교환/반품하실 경우 상품 분실 위험 및 처리가 어려울 수 있습니다. 안내된 방법으로 진행해주시기 바랍니다.)
							</p>
							<p class="nobullet">2. 마이페이지>교환/환불 신청 페이지 내에서 교환/반품을 신청하시면 택배기사님이 빠른 시간 안에 방문 & 상품 수거를 진행합니다. </p>

							<p class="tit">환불 방법</p>
							<p class="nobullet">
								1. SNP MALL은 상품 수거 & 확인 후 3 영업일 이내에 처리됩니다.
								(카드 결제의 경우 카드사에 따라 카드 승인 취소일이 다를 수 있습니다.
							</p>
						</div>
					</div>
					<!-- // 안내문구 -->
					<!-- //2019.03.15 -->
				</div>

				<!-- list // -->
				<table class="tbl-type1">
					<caption class="hide">취소/교환/반품 상품 정보</caption>
					<colgroup>
						<col style="width:140px;">
						<col style="width:240px;">
						<col>
						<col style="width:143px;">
						<col style="width:143px;">
						<col style="width:143px;">
					</colgroup>
					<thead>
						<tr>
							<th>주문일</th>
							<th>주문번호</th>
							<th>상품정보</th>
							<th>결제금액</th>
							<th>결제수단</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2019.01.16</td>
							<td><a href="#">201901171235750S45GWA</a></td>
							<td><a href="#">히든랩 브랜 뉴 마그네틱 클렌저 외 3개</a></td>
							<td>85,000</td>
							<td>무통장 입금</td>
							<td class="state">
								<span>배송완료</span>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- // list -->

				<form class="form-area">
					<fieldset>
						<legend>교환/반품 정보</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit require">신청 유형</span>
									<span class="field-input type">
										<span class="inner">
											<label><input type="radio" name="type" checked><span>교환</span></label><!-- 2019.04.10 : 수정 -->
											<label><input type="radio" name="type"><span>반품</span></label><!-- 2019.04.10 : 수정 -->
										</span>
									</span>
								</div>
							</div>


							<div>
								<div>
									<span class="field-tit require">구분</span>
									<span class="field-input">
										<span class="inner">
											<span class="select">
												<select title="구분 선택">
													<option>선택해주세요.</option>
													<option>상품 결함</option>
													<option>단순 변심</option>
													<option>상품상세 정보와 상이함</option>
													<option>다른 상품 잘못 주문</option>
													<option>배송 오류</option>
													<option>기타</option>
												</select>
											</span>
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit require">교환/반품 사유</span>
									<span class="field-input">
										<span class="inner">
											<textarea title="입력"></textarea>
										</span>
									</span>
								</div>
							</div>

							<!-- 반품 타택배 // -->
							<div class="refundanother">
								<div>
									<span class="field-tit">환불 받을 계좌</span>
									<span class="field-input account">
										<span class="inner">
											<span class="select">
												<select title="환불 받을 계좌 선택">
													<option>은행</option>
													<option>은행</option>
													<option>은행</option>
													<option>은행</option>
													<option>은행</option>
												</select>
											</span><br>
											<input type="text" placeholder="계좌번호" title="계좌번호 입력"><br>
											<input type="text" placeholder="예금주" title="예금주 입력"><br>
											<strong class="validate-error">필수항목을 모두 입력해주세요.</strong><!-- 필수항목 미입력 시 해당 문구 출력 -->
										</span>
									</span>
								</div>
							</div>
							<!-- 반품 타택배 // -->

							<!-- 2019.03.14 : 2019.04.10 : 수정 // -->
							<div>
								<div>
									<span class="field-tit require">반송 정보</span>
									<span class="field-input return">
										<span class="inner">
											<label><input type="radio" name="return" checked><span>지정택배</span></label>
											<label><input type="radio" name="return"><span>타 택배</span></label>
										</span>
									</span>
								</div>
							</div>
							<!-- // 2019.03.14 : 2019.04.10 : 수정 -->



							<!-- 타택배 : 2019.03.14 : 2019.04.10 : 추가 // -->
							<div class="another">
								<div>
									<span class="field-tit require">택배사</span>
									<span class="field-input">
										<span class="inner">
											<!-- 2019.05.13 : 수정 // -->
											<span class="select">
												<select title="택배사 선택">
													<option>택배1</option>
													<option>택배2</option>
													<option>택배3</option>
												</select>
											</span>
											<!-- // 2019.05.13 : 수정 -->
										</span>
									</span>
								</div>
							</div>

							<div class="another">
								<div>
									<span class="field-tit require">송장번호</span>
									<span class="field-input">
										<span class="inner">
											<input type="text" title="송장번호 입력">
										</span>
									</span>
								</div>
							</div>


							<!-- // 타택배 : 2019.03.14 : 2019.04.10 : 추가 -->
						</div>
					</fieldset>

					<!-- 지정택배 // -->
					<fieldset class="default active"><!-- 2019.04.10 : class추가 -->
						<legend>수거지 정보 <button type="button" class="btn smaller fill black btn-delivery" onclick="fn.popupOpen('#popOrderDeliveryLs');">배송지 목록</button></legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">수령자명</span>
									<span class="field-input name">
										<span class="inner">
											<!-- 2019.03.15// -->
											<input type="text" value="박보검" title="수령자명 이름 입력">
											<!-- //2019.03.15 -->
											<label><input type="radio" name="name" checked><span>배송지와 동일</span></label>
											<label><input type="radio" name="name"><span>직접입력</span></label>
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
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">주소</span>
									<span class="field-input addr">
										<span class="inner">
											<input type="text" id="postcode" value="07563" title="우편번호 입력" readonly>
											<button type="button" class="btn stroke gray btn-addr" onclick="execDaumPostcode()">우편번호 검색</button><br>
											<input type="text" id="roadAddress" value="서울특별시 강서구 공항대로 61길 29" title="도로명주소" readonly><br>
											<input type="text" id="detailAddress" placeholder="상세주소 입력" value="서울신기술창업센터  C동 301호">
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

							<!-- 2019.03.14 : 추가 // -->
							<div>
								<div>
									<span class="field-tit require">배송비 결제 수단</span>
									<span class="field-input method">
										<span class="inner">
											<label class="refund"><input type="radio" name="method"><span>환불 금액에서 차감</span></label><!-- 2019.04.10 : class추가 -->
											<label class="exchange"><input type="radio" name="method" checked><span>계좌이체 (국민 : 750637-01-007028 ㈜에스디생명공학)</span></label><!-- 2019.04.10 : class추가 -->
										</span>

										<strong class="validate-error">필수항목을 모두 입력해주세요.</strong><!-- 필수항목 미입력 시 해당 문구 출력 -->
									</span>
								</div>
							</div>
							<!-- // 2019.03.14 : 추가 -->
						</div>
					</fieldset>
					<!-- // 지정택배 -->

					<!-- 2019.04.18 : 추가 // -->
					<div class="info-txt">
						<p>불량 상품의 경우 고객센터로 사진을 보내주셔야 교환&amp;반품이 가능합니다.</p>
						<p>배송비는 교환&amp;반품 담당자 확인 후 달라질 수 있습니다.</p>
					</div>
					<!-- // 2019.04.18 : 추가 -->

					<div class="btn-area">
						<button type="button" class="btn big stroke gray">취소</button>
						<button type="button" class="btn big fill black">신청하기</button>
					</div>
				</form>

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
					<li>
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

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
