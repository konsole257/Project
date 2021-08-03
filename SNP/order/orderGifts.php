<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "주문 결제";
	$path2Tit = "";
	$path1Href = "/order/order.php";
	$path2Href = "";
	$pageClass = "order";
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
			</div>

			<div class="body">
				<div class="order-area">
					<form class="form-area">
						<fieldset>
							<legend class="hide">주문 결제</legend>
							<div class="left-area">
								<!-- 주문상품 // -->
								<div class="orderproduct">
									<h3>
										<a href="javascript:void(0);" onclick="fn.toggleClass(this);fn.toggleClass('.orderpls');">
											주문상품
											<span>엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</span>
											외 3건
										</a>
									</h3>
									<table class="orderpls">
										<caption class="hide">주문상품 목록</caption>
										<colgroup>
											<col style="width:180px">
											<col>
											<col style="width:148px">
											<col style="width:120px">
										</colgroup>

										<tbody>
											<tr>
												<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
												<td>
													<a href="#">엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</a>
												</td>
												<td>13개</td>
												<td><em>9,999,000원</em></td>
											</tr>

											<tr>
												<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
												<td>
													<a href="#">엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</a>
													<span class="txt-gifts">[사은품] 애니멀 타이거 온열 아이 마스크/과일 젤라또 진정 마스크/싱싱 비타 씨 젤리 마스크</span>
												</td>
												<td>1개</td>
												<td><em>9,999,000원</em></td>
											</tr>

											<tr>
												<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
												<td>
													<a href="#">[추가상품] LAB+ 에버라스팅 듀얼 앰플</a>
												</td>
												<td>1개</td>
												<td><em>9,999,000원</em></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- // 주문상품 -->

								<!-- 주문자 정보 // -->
								<div class="orderinfo">
									<h3><a href="javascript:void(0);" onclick="fn.toggleClass(this);fn.toggleClass('.orderinfo .input-area');">주문자 정보</a></h3>
									<div class="input-area">
										<div>
											<div>
												<span class="field-tit">이름</span>
												<span class="field-input">
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
								</div>
								<!-- // 주문자 정보 -->


								<!-- 배송지 정보 // -->
								<div class="deliveryinfo">
									<h3>배송지 정보 <button type="button" class="btn smaller fill black btn-delivery" onclick="fn.popupOpen('#popOrderDeliveryLs');">배송지 목록</button></h3>
									<label class="same"><input type="checkbox" checked><span>주문자 정보와 동일</span></label><!-- 2019.04.11 : 추가 -->
									<div class="input-area">
										<div>
											<div>
												<span class="field-tit">수령자명</span>
												<span class="field-input">
													<span class="inner">
														<input type="text" title="수령자명 입력">
														<label><input type="radio" checked><span>이전 배송지</span></label>
														<label><input type="radio" checked><span>직접 입력</span></label>
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
												<span class="field-tit">주소</span>
												<span class="field-input addr">
													<span class="inner">
														<input type="text" id="postcode" title="우편번호 입력" readonly>
														<button type="button" class="btn stroke gray btn-addr" onclick="execDaumPostcode()">우편번호 검색</button><br>
														<input type="text" id="roadAddress" title="도로명주소" readonly><br>
														<input type="text" id="detailAddress" placeholder="상세주소 입력">
														<label><input type="checkbox" checked><span>배송지 저장</span></label>
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
												<span class="field-tit">배송시 요청사항</span>
												<span class="field-input delivery">
													<span class="inner">
														<span class="select">
															<select title="배송시 요청사항 선택">
																<option>메시지를 선택해 주세요.</option>
																<option>부재시 연락 바랍니다.</option>
																<option>부재시 경비실에 맡겨주세요.</option>
																<option>부재시 문자 또는 전화 남겨주세요.</option>
																<option>배송 전 연락바랍니다.</option>
															</select>
														</span><br>
														<input type="text" placeholder="직접입력" title="배송시 요청사항 직접입력">
													</span>
												</span>
											</div>
										</div>
									</div>
								</div>
								<!-- // 배송지 정보 -->

								<!-- 할인 수단 // -->
								<div class="saleinfo">
									<h3>할인 수단</h3>
									<div class="input-area">
										<div>
											<div>
												<span class="field-tit">상품쿠폰 사용</span>
												<span class="field-input">
													<span class="inner">
														<input type="number" title="상품쿠폰 입력">
														<span>원</span>
														<button type="button" class="btn smaller fill black" onclick="fn.popupOpen('#popOrderCoupon');">쿠폰 선택</button>
														<p>(사용가능 쿠폰 : <em>3</em>장 / 보유 쿠폰 : 5장)</p>
													</span>
												</span>
											</div>
										</div>

										<div>
											<div>
												<span class="field-tit">포인트 사용</span>
												<span class="field-input">
													<span class="inner">
														<input type="number" title="포인트 입력">
														<span>P</span>
														<button type="button" class="btn smaller fill black">전액 사용</button>
														<p>(사용가능 포인트 : <em>4,700</em>)</p><br>
														<div class="info-txt">
															<p>상품 금액이 10,000 이상일 경우 사용 가능합니다.</p><!-- 2019.03.28 : 수정 -->
														</div>
													</span>
												</span>
											</div>
										</div>

										<div>
											<div>
												<span class="field-tit">배송쿠폰 사용</span>
												<span class="field-input">
													<span class="inner">
														<label><input type="radio" checked><span>사용 안함</span></label>
														<label><input type="radio"><span>사용함</span></label>
														<p>(사용가능 쿠폰 : <em>3</em>장 / 보유 쿠폰 : 5장)</p><br>
														<!-- 2019.03.28 : 수정 // -->
														<div class="info-txt">
															<p>유효기간이 짧은 쿠폰 순으로 사용됩니다.</p>
															<p>도서산간지역은 배송비쿠폰 적용이 제한됩니다.</p>
														</div>
														<!-- // 2019.03.28 : 수정 -->
													</span>
												</span>
											</div>
										</div>
									</div>
								</div>
								<!-- // 할인 수단 -->

								<!-- 구매금액별 사은품 // -->
								<div class="giftsinfo">
									<h3>구매금액별 사은품 <button type="button" class="btn smaller fill black btn-gifts" onclick="fn.popupOpen('#popOrderGifts');">선택하기</button></h3>
									<div class="banner">
										<a href="#"><img src="/pjtCom/pc/images/temp/cart_750x.jpg" alt=""></a>
									</div>
								</div>
								<!-- // 구매금액별 사은품 -->

								<!-- 안내문구 : 2019.03.28 : 삭제 // -->
								<!-- <div class="infoarea">
									<div class="info-txt">
										<p>교환/환불/반품 신청기한 : 상품 수령 후 일주일 이내에 고객센터 또는 마이페이지에서 접수해주시기 바랍니다.</p>
										<p>교환/환불/반품 배송비정책 : 상품에 하자가 있을 경우 본사 부담, 그 외의 경우 고객님께서 왕복 배송비를 부담하셔야 합니다.</p>
									</div>
								</div> -->
								<!-- // 안내문구 -->
							</div>

							<div class="right-area">
								<!-- 총상품금액 // -->
								<ul>
									<li class="txt-totprice">
										<strong>총 상품금액</strong>
										<em>135,000원</em>
									</li>
									<li>
										<!-- 2019.03.15// -->
										<strong>- 상품할인</strong>
										<!-- //2019.03.15 -->
										<em>- 9,000원</em>
									</li>
									<li>
										<strong>- 등급할인(셀럽)</strong><!-- 2019.03.22 : 수정 -->
										<em>- 7,000원</em>
									</li>
									<li>
										<strong>- 쿠폰 할인</strong>
										<em>- 0원</em>
									</li>
									<li>
										<strong>- 포인트 사용</strong>
										<em>- 3,000원</em>
									</li>
									<li class="txt-delivery">
										<strong>+ 배송비</strong>
										<em>0원</em>
									</li>
								</ul>
								<!-- // 총상품금액 -->

								<!-- 결제예상금액 // -->
								<div class="txt-orderprice">
									<ul>
										<li class="txt-total">
											<strong>결제 예상금액</strong>
											<span><em>3,121,000</em>원</span>
										</li>
										<li class="txt-point">
											<strong>적립 예정 포인트</strong>
											<span><em>3,200</em>P</span>
										</li>
									</ul>
									<!-- 2019.03.12 : 수정 // -->
									<div class="info-txt">
										<!-- 2019.03.15// -->
										<p>총 결제 예상금액이 30,000원 미만일 경우 <br>배송비가 부과됩니다.</p>
										<!-- //2019.03.15 -->
										<p>회원등급별 상품 할인혜택이 다릅니다.</p>
										<p>타임세일 등 특정 프로모션 상품의 경우<br>포인트적립이 제한됩니다.</p>
									</div>
									<!-- // 2019.03.12 : 수정 -->
									<div class="agreearea">
										<label><input type="checkbox" data-name="all"><span>이용약관에 모두 동의합니다.(필수)</span></label>
										<button type="button" class="btn-agreemore" onclick="fn.toggleClass(this);fn.toggleClass('.agreesub');">약관 더보기/닫기</button>
										<div class="agreesub">
											<ul>
												<li>
													<label><input type="checkbox" data-name="check"><span>위 주문의 상품, 가격, 할인, 배송정보에 동의</span></label>
												</li>
												<li>
													<label><input type="checkbox" data-name="check"><span>개인정보 수집 이용 동의</span></label>
													<button type="button" class="btn smaller stroke gray" onclick="fn.popupOpen('#popOrderAgree1');">내용보기</button>
												</li>
												<li>
													<label><input type="checkbox" data-name="check"><span>결제서비스 이용약관 동의</span></label>
													<button type="button" class="btn smaller stroke gray" onclick="fn.popupOpen('#popOrderAgree2');">내용보기</button>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- // 결제예상금액 -->

								<!-- 결제수단 선택 // -->
								<div class="paydiv">
									<span class="select">
										<select title="결제수단 선택">
											<option>결제수단 선택</option>
											<option>신용카드</option>
											<option>가상계좌</option>
											<option>실시간계좌이체</option>
											<option value="pay-bankbook">무통장입금</option>
											<option>휴대폰결제</option>
										</select>
									</span>

									<!-- 무통장입금 // -->
									<div class="pay-bankbook">
										<div><input type="text" placeholder="입금자명 입력(최대 10자리 입력 가능)" title="입금자명 입력"></div>
										<div>
											<strong>입금계좌</strong>
											국민 : 750637-01-007028 ㈜에스디생명공학
										</div>
										<div>
											<strong>현금영수증신청</strong>
											<label><input type="radio" name="cashreceipt" onclick="fn.removeClass('.cashnum');"><span>신청안함</span></label><br>
											<label><input type="radio" name="cashreceipt" onclick="fn.addClass('.cashnum');"><span>개인 소득 공제용</span></label>
											<label><input type="radio" name="cashreceipt" onclick="fn.addClass('.cashnum');"><span>사업자증빙용</span></label>
										</div>
										<div class="cashnum">
											<input type="text" placeholder="휴대전화/사업자등록번호 ’-’없이 숫자만" title="휴대전화/사업자등록번호 입력">
										</div>
									</div>
									<!-- // 무통장입금 -->
								</div>
								<!-- // 결제수단 선택 -->

								<!-- btn // -->
								<div class="btn-area">
									<a href="#" class="btn fill black btn-buy" onclick="fn.popupOpen('#popOrderGiftsNone');">결제하기</a>
								</div>
								<!-- // btn -->

								<!-- 구매금액별 사은품 // -->
								<div class="giftsarea">
									<!--
									<h4>구매금액별 사은품</h4>
									<div class="giftslist">
										<p>구매금액별 사은품을 선택해주세요.</p>
									</div>
									-->
									<!-- 사은품 선택했을때 // -->
									<h4>선택한 사은품</h4>
									<div class="giftslist">
										<div>
											<div>
												<figure><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt=""></figure>
												퍼핏 바이오 셀 마스크 더블 수딩
											</div>
											<div>
												<figure><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt=""></figure>
												퍼핏 바이오 셀 마스크 더블 수딩
											</div>
										</div>
									</div>
									<!-- // 사은품 선택했을때 -->
								</div>
								<!-- //구매금액별 사은품 -->
								<div class="info-txt">
									<p>설 연휴 배송으로 인해 물량이 많을 경우 배송이 <br>지연될 수 있으니 양해 부탁드립니다.</p>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 구매금액별 사은품을 선택 안했을때 // -->
	<div id="popOrderGiftsNone" class="alert">
		<div class="inner">
			<div class="contents">
				구매금액별 사은품을 선택해주세요.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 구매금액별 사은품을 선택 안했을때 -->

	<!-- 팝업 : 구매금액별 사은품 // -->
	<div id="popOrderGifts" class="popup ordergifts">
		<div class="inner">
			<header class="header">
				<h2 class="tit">구매금액별 사은품</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">다음 중 원하는 사은품 2 개를 선택해주세요. <small>사은품은 별도 공지 없이 변경 및 조기소진 될 수 있습니다</small></p>

				<ul>
					<li>
						<label>
							<input type="checkbox" checked><span></span>
							<span class="thumb"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" class="img" alt=""></span>
							퍼빗 바이오 셀 마스크 더블 수딩
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox"><span></span>
							<span class="thumb"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" class="img" alt=""></span>
							퍼빗 바이오 셀 마스크 더블 수딩
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox"><span></span>
							<span class="thumb"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" class="img" alt=""></span>
							퍼빗 바이오 셀 마스크 더블 수딩
						</label>
					</li>
					<li>
						<label class="selectnone">
							<input type="checkbox"><span></span>
							<span class="thumb"></span>
							선택안함
						</label>
					</li>
				</ul>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">선택 완료</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 구매금액별 사은품 -->

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

<!-- 2019.03.15// -->
	<!-- 팝업 : 상품쿠폰 사용 // -->
	<div id="popOrderCoupon" class="popup ordercoupon">
		<div class="inner">
			<header class="header">
				<h2 class="tit">쿠폰 사용</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<!-- 2019.03.25 : 수정 // -->
			<div class="contents scrollbar">
				<header class="header">
					<h2 class="tit">장바구니 쿠폰</h2>
				</header>

				<div class="choice-coupon">
					<span class="select">
						<select title="쿠폰 선택">
							<option>쿠폰 선택</option>
							<option>선택안함</option>
							<option selected>회원가입 축하 주문 금액 할인 쿠폰 15%</option>
						</select>
					</span>
				</div>

				<header class="header">
					<h2 class="tit">상품쿠폰 사용</h2>
				</header>

				<div class="couponls">
					<ul>
						<li>
							<div>
								<strong>엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</strong>
								<span>13개</span>
								<em>1,370,000원</em>
							</div>
							<div>
								<span class="select">
									<select title="쿠폰 선택">
										<option>쿠폰 선택</option>
										<option>선택안함</option>
										<option selected>디렉터파이 인증! 10% 할인쿠폰 (D-17)</option>
									</select>
								</span>
								<strong>할인금액</strong>
								<em>-137,000원</em>
							</div>
						</li>
						<li>
							<div>
								<strong>엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</strong>
								<span>1개</span>
								<em>26,900원</em>
							</div>
							<div>
								<span class="select">
									<select title="쿠폰 선택">
										<option selected>쿠폰 선택</option>
										<option>선택안함</option>
										<option>디렉터파이 인증! 10% 할인쿠폰 (D-17)</option>
									</select>
								</span>
								<strong>할인금액</strong>
								<em>0원</em>
							</div>
						</li>
						<li>
							<div>
								<strong>엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</strong>
								<span>13개</span>
								<em>1,370,000원</em>
							</div>
							<div>
								<span class="select">
									<select title="쿠폰 선택">
										<option>쿠폰 선택</option>
										<option>선택안함</option>
										<option selected>디렉터파이 인증! 10% 할인쿠폰 (D-17)</option>
									</select>
								</span>
								<strong>할인금액</strong>
								<em>-137,000원</em>
							</div>
						</li>
						<li>
							<div>
								<strong>LAB+ 에버라스팅 듀얼 앰플</strong>
								<span>1개</span>
								<em>28,000원</em>
							</div>
							<div>
								<span class="select">
									<select title="쿠폰 선택">
										<option selected>쿠폰 선택</option>
										<option>선택안함</option>
										<option>디렉터파이 인증! 10% 할인쿠폰 (D-17)</option>
									</select>
								</span>
								<strong>할인금액</strong>
								<em>0원</em>
							</div>
						</li>
					</ul>
				</div>

				<div class="coupontot">
					<ul>
						<li>
							<strong>총 상품금액</strong>
							<em>1,424,900원</em>
						</li>
						<li>
							<strong>쿠폰할인 금액 </strong>
							<em>1,137,000원</em>
						</li>
						<li>
							<strong>할인적용 금액</strong>
							<em>1,224,900</em>원
						</li>
					</ul>
				</div>

				<!-- 2019.03.28 : 수정 // -->
				<div class="info-txt">
					<p>다운로드하신 쿠폰은 정해진 사용 기한이 있으니, 기간 내에 사용해 주시기 바랍니다.</p>
					<p>결제 완료 후에는 쿠폰을 사용하실 수 없습니다. 주문 시 꼭 쿠폰 사용해주시기 바랍니다.</p>
					<p>일부 상품에는 쿠폰이 미적용 될 수 있습니다.</p>
					<p>상품 쿠폰은 중복 사용이 가능하지만 장바구니 쿠폰과는 중복 사용이 불가능합니다.</p>
					<p>일부 쿠폰은 최소 결제금액, 최대 할인금액 제한이 있을 수 있습니다.</p>
				</div>
				<!-- // 2019.03.28 : 수정 -->

				<div class="btn-area">
					<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">선택 완료</button>
				</div>
			</div>
			<!-- // 2019.03.25 : 수정 -->

		</div>
	</div>
	<!-- // 팝업 : 상품쿠폰 사용 -->
<!-- //2019.03.15 -->

	<!-- 팝업 : 개인정보 수집 이용 동의 // -->
	<div id="popOrderAgree1" class="popup orderagree">
		<div class="inner">
			<header class="header">
				<h2 class="tit">개인정보 수집 이용 동의</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				개인정보 수집 이용 동의
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 개인정보 수집 이용 동의 -->

	<!-- 팝업 : 결제서비스 이용약관 동의 // -->
	<div id="popOrderAgree2" class="popup orderagree">
		<div class="inner">
			<header class="header">
				<h2 class="tit">결제서비스 이용약관 동의</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				결제서비스 이용약관 동의
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 결제서비스 이용약관 동의 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
