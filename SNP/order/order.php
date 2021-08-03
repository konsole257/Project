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
												<td>
													<!-- 2019.03.12 : 수정 // -->
													<em>
														<del>48,000원</del>
														9,999,000원
													</em>
													<!-- // 2019.03.12 : 수정 -->
												</td>
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
														<input type="text" name="zip_code" id="postcode" title="우편번호 입력" readonly>
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
													<label><input type="checkbox" data-name="check"><span>개인정보처리방침</span></label>
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
											<option value="acct">무통장입금</option>
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
									<h4>구매금액별 사은품</h4>
									<div class="giftslist">
										<p>구매금액별 사은품을 선택해주세요.</p>
									</div>
									<!-- 사은품 선택했을때 //
									<h4>선택한 사은품</h4>
									<div class="giftslist">
										<div>
											<figure><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt=""></figure>
											퍼핏 바이오 셀 마스크 더블 수딩
										</div>
										<div>
											<figure><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt=""></figure>
											퍼핏 바이오 셀 마스크 더블 수딩
										</div>
									</div>
									// 사은품 선택했을때 -->
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

	<!-- 팝업 : 구매금액별 사은품 없을때 : 2019.06.11 // -->
	<div id="popOrderGiftsDisabled" class="alert">
		<div class="inner">
			<div class="contents">
				선택가능한 사은품이 없습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 구매금액별 사은품 없을때 -->

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
							퍼빗 바이오 셀 마스크 더블 수딩더블 수딩더블 수딩더블 수딩
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



	<!-- 팝업 : 등록된배송지 없을때 : 2019.06.11 // -->
<div id="popOrderDeliveryLsDisabled" class="alert">
	<div class="inner">
		<div class="contents">
			등록된 배송지 목록이 없습니다.
		</div>

		<div class="btn-area">
			<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
		</div>
	</div>
</div>
<!-- // 팝업 : 등록된배송지 없을때 -->

	<!-- 팝업 : 배송지 목록 // -->
	<div id="popOrderDeliveryLs" class="popup orderdeliveryls">
		<div class="inner">
			<header class="header">
				<h2 class="tit">배송지 목록</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<!-- 목록 업을때 : 2019.06.21 // -->
			<!-- <div class="contents">
				<p class="no_data">등록된 배송지 목록이 없습니다.</p>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close btn-giftselected" onclick="fn.popupClose();">확인</button>
			</div> -->
			<!-- // 목록 업을때 -->

			<!-- 목록 있을때 // -->
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
			<!-- // 목록 있을때 -->

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
				<h2 class="tit">개인정보처리방침</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<div class="txt">
					<div class="scrollbar">
						㈜에스디생명공학은 고객님의 개인 정보를 소중하게 생각하며, ‘정보통신망 이용 촉진 및 정보보호 등에 관한 법률‘, ‘개인정보보호법’ 등 개인 정보보호법령을 철저히 준수합니다.<br>
						아래와 같은 [개인정보 처리방침]을 제정하고 이를 준수하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다.<br>
						또한 회사는 개인정보처리방침을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 하고 있습니다.<br><br>

						본 개인정보 처리 방침은 개인정보와 관련한 법령의 변경이 있는 경우 또는 ㈜에스디생명공학의 정책 변경 등의 이유로 변경될 수 있습니다. 개인정보처리방침이 변경될 경우 쇼핑몰 첫 화면에 공지하여 고객님들이 언제나 쉽게 인지할 수 있도록 조치하고 있습니다. <br><br>

						- 목 차 -<br>
						제 1 조 개인정보의 수집항목 및 이용 목적<br>
						제 2 조 개인정보 자동 수집 장치에 의한 개인정보 수집<br>
						제 3 조 개인정보의 제공 및 처리 위탁<br>
						제 4 조 개인정보의 열람∙정정 및 동의 철회<br>
						제 5 조 개인정보의 보유 • 이용 기간, 파기절차 및 파기방법<br>
						제 6 조 개인정보보호를 위한 기술 및 관리적 대책<br>
						제 7 조 14세 미만 아동의 개인정보 보호<br>
						제 8 조 개인정보 보호 업무 및 관련 고충 사항 처리 부서<br>
						제 9 조 보호 정책 변경 시 공지 의무<br><br>

						제 1 조 <br>
						개인정보의 수집항목 및 이용 목적<br>
						1. 회사는 이용자의 회원 가입 시 서비스 제공을 위해 필요한 최소한의 개인정보를 수집하고 있습니다. 다만, 이용자들에게 보다 양질의 맞춤 서비스를 제공하기 위하여 이용자의 추가적인 개인정보를 선택적으로 입력 받고 있습니다.<br>
						2. 회사는 이용자의 명시적인 별도 동의 없이 기본적 인권 침해의 우려가 있는 사상 • 신념, 노동조합 • 정당의 가입 • 탈퇴, 정치적 견해, 건강, 성생활, 과거의 병력, 종교, 출신지, 범죄기록 등 민감한 개인정보는 수집하지 않습니다.<br>
						3. 회사가 이용자의 회원가입 및 서비스 이용 시 수집하는 개인정보 항목과 그 수집 • 이용의 주된 목적은 아래와 같습니다.<br><br>

						<table class="board_view border-left">
						<colgroup>
							<col style="width:5%;">
							<col style="width:19%;">
							<col style="width:19%;">
							<col style="width:19%;">
							<col style="width:19%;">
							<col style="width:19%;">
						</colgroup>

						<thead>
							<tr>
								<th colspan="2">구분</th>
								<th colspan="2">수집항목</th>
								<th>이용목적</th>
								<th>보유기간</th>
							</tr>
						</thead>

						<tbody>
						<tr class="border_left_none">
							<td rowspan="3">회원</td>
							<td rowspan="2">개인회원</td>
							<td>필수</td>
							<td>아이디, 이름, 비밀번호, 비밀번호 확인, 휴대전화번호, 휴대전화 인증을 통한 이름, 생년월일, 만 14세 이상 여부, 성별, 이메일 </td>
							<td rowspan="2">회원가입시 본인여부 확인, 서비스 이용 및 상담, 공지사항 전달</td>
							<td rowspan="13">회원 탈퇴시 또는 법정 의무 보유기간</td>
						</tr>
						<tr>
							<td>선택</td>
							<td>SMS, 이메일 마케팅 동의</td>
						</tr>
						<tr>
							<td>간편가입 회원 (페이스북, 카카오, 네이버)</td>
							<td>필수</td>
							<td>프로필 정보 (프로필명, 닉네임, 성명), 휴대전화번호, 휴대전화 인증을 통한 이름, 생년월일, 만 14세 이상 여부</td>
							<td>간편로그인 연결을 통한 서비스 내 고객 식별, 회원관리 및 서비스</td>
						</tr>

						<tr class="border_left_none">
							<td rowspan="2">주문</td>
							<td>회원 구매</td>
							<td>필수</td>
							<td>주문자 정보(이름, 주소, 휴대전화번호, 이메일), 수취자 정보(이름, 주소, 휴대전화번호), 결제 승인정보</td>
							<td rowspan="2">주문상품의 결제 및 배송</td>
						</tr>
						<tr>
							<td>비회원 구매</td>
							<td>필수</td>
							<td>주문자 정보(이름,주소,휴대전화,이메일,주문조회 비밀번호 ,비밀번호 확인), 수취자 정보(이름,주소,휴대전화), 결제 승인정보</td>
						</tr>

						<tr class="border_left_none">
							<td rowspan="7">결제</td>
							<td>무통장 입금</td>
							<td>필수</td>
							<td>입금자명, 은행</td>
							<td rowspan="7">상품 주문/결제 서비스</td>
						</tr>
						<tr>
							<td>카드결제, 에스크로 서비스(실시간 계좌이체), 가상계좌</td>
							<td>필수</td>
							<td>주문자 정보(성명, 주소, 이메일주소, 휴대전화번호, 주문번호, 가장계좌번호)</td>
						</tr>
						<tr>
							<td rowspan="2">휴대폰 결제</td>
							<td>필수</td>
							<td>주문자 정보(통신사, 아이디, 휴대전화번호, 생년월일, 성별, IP, 주문번호</td>
						</tr>
						<tr>
							<td>선택</td>
							<td>이메일주소</td>
						</tr>
						<tr>
							<td rowspan="2">네이버페이</td>
							<td>필수</td>
							<td>주문번호, 승인번호, 배송지주소</td>
						</tr>
						<tr>
							<td colspan="2">비회원 결제의 경우 구매자정보는 네이버페이 페이지를 통해 결제</td>
						</tr>
						<tr>
							<td>환불</td>
							<td>필수</td>
							<td>환불 계좌정보(입금자명, 은행명, 계좌번호)</td>
						</tr>

						<tr class="border_left_none">
							<td rowspan="2">기타</td>
							<td>문의 상담시</td>
							<td>필수</td>
							<td>아이디, 이름, 휴대폰번호</td>
							<td>고객상담, 분쟁조정 시 문의 응대, 요청사항 처리 및 기록 보존을 위한 정보 수집</td>
						</tr>
						<tr>
							<td>이벤트 응모시</td>
							<td>필수</td>
							<td>아이디, 이름, 휴대폰번호, 주소</td>
							<td>상품 지급 및 문의 응대</td>
							<td>이벤트 응모응모부터 3개월</td>
						</tr>
						</tbody>
						</table><br><br>

						4. 이용자가 청약철회 시 추가 정보를 입력 받습니다. <br>
						결제방법에 따라 <br>
						- 카드결제의 경우: 신용카드 종류, 카드번호, 유효기간 등 결제에 필요한 최소 정보<br>
						- 계좌이체의 경우: 거래 은행명, 계좌번호, 거래자 성명, 사업자 번호 <br>
						5. 회사는 이용자 확인, 경품 배송 및 통계분석을 통한 마케팅 자료로서 이용자의 취향에 맞는 최적의 서비스를 제공하기 위한 목적으로 이용자의 개인정보를 수집 • 이용하고 있습니다. <br>
						그리고 이용자의 사전 동의나 관련 법령의 규정 없이는 어떠한 경우라도 이용자들에게 사전에 밝힌 목적 이외에 다른 목적으로 개인정보를 사용하지 않으며 외부에 공개하지 않습니다.<br>
						6. 이용자는 개인정보의 수집 • 이용에 대한 동의를 거부할 수 있습니다. 다만, 필수 정보의 수집 • 이용 동의를 거부할 경우 멤버십 서비스 이용이 불가하며, 선택 정보의 수집 및 이용에 거부하는 경우, 회원가입은 가능하나 선택 정보를 이용한 서비스 이용 및 혜택 제공에 제한을 받을 수 있습니다.<br>
						7. 회사는 개인정보를 국외의 제3자에게 제공할 때에는 이용자에게 내용을 알리고 동의를 받습니다.<br><br>

						제 2조<br>
						개인정보 자동수집 장치에 의한 개인정보 수집<br>
						1. 회사는 고객에 대한 정보를 저장하고 수시로 찾아내는 ‘쿠키(cookie)‘를 사용합니다. <br>
						쿠키는 웹사이트가 고객의 컴퓨터 브라우저(인터넷 익스플로러, 오페라, 크롬, 파이어폭스 등)에 보내는 소량의 정보로서 이용자의 컴퓨터의 하드디스크에 저장되기도 합니다. <br>
						이용자가 웹사이트에 접속을 하면 회사의 컴퓨터는 이용자의 브라우저에 있는 쿠키의 내용을 읽고, 이용자의 추가 정보를 귀하의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 쿠키는 이용자의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다.<br>
						2. 회사는 회원과 비회원의 접속 빈도 또는 방문 시간 등을 분석하고 이용자의 취향과 관심분야를 파악하여 타겟(target) 마케팅 및 서비스 개선의 척도로 활용합니다. 또한 쇼핑한 품목들에 대한 정보와 관심 있게 둘러본 품목을 추적하여 개인 맞춤 쇼핑 서비스 제공을 위한 자료로 이용됩니다. <br>
						3. 이용자는 웹브라우저에 설정을 통해 모든 쿠키를 허용/거부하거나, 쿠키를 저장될 때마다 확인을 거치도록 할 수 있습니다.<br>
						단, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스는 이용할 수 없습니다. <br>
						 - 쿠키 설정 거부 방법 (Internet Explorer 기준) : 웹브라우저 상단의 [도구] &gt; [인터넷 옵션] &gt; [개인정보] &gt; [고급]에서 원하는 옵션 선택 <br>
						- 받은 쿠키를 보는 방법 (INTERNET EXPLORER 6.0을 사용하고 있는 경우) 인터넷 화면 작업표시줄의 [도구]를 클릭한 후 [인터넷 옵션]을 선택하고, 일반 탭(기본 탭)에서 임시 인터넷 파일의 [설정]을 선택한 후, [파일 보기]를 선택합니다.<br>
						파기되지 않은 개인 정보 중 해당 이용자의 요청이 있는 경우 고객 정보는 서비스 이용을 재개하는 시점에 다시 제공됩니다. <br><br>

						제 3 조<br>
						개인정보의 제공 및 처리 위탁<br>
						1. 회사는 보다 나은 서비스 제공, 고객 편의 제공 등 원활한 업무 수행을 위하여 이용자의 별도 동의를 얻어 아래와 같이 개인정보 처리 업무를 외부 전문 업체에 위탁하여 운영하고 있습니다. <br><br>

						<table class="board_view">
						<colgroup>
							<col style="width:40%;"><col>
						</colgroup>
						<tbody>
						<tr>
							<th>처리 위탁 받는 자</th>
							<td>처리 위탁 업무 내용</td>
						</tr>
						<tr>
							<th>롯데택배</th>
							<td>주문 상품의 배송</td>
						</tr>
						<tr>
							<th>㈜코너스톤</th>
							<td>홈페이지 서비스 제공을 위한 웹 서버 및 데이터 베이스관리, 홈페이지 개발 및 유지 보수, 모니터링, 데이터 분석</td>
						</tr>
						<tr>
							<th>㈜ 레드뱅킹 </th>
							<td>무통장자동입금 매치</td>
						</tr>
						<tr>
							<th>㈜이니시스</th>
							<td>결제</td>
						</tr>
						<tr>
							<th>㈜다날</th>
							<td>전자지급 결제대행 서비스</td>
						</tr>
						<tr>
							<th>㈜나이스정보통신</th>
							<td>휴대폰 본인인증</td>
						</tr>
						<tr>
							<th>크리마팩토리</th>
							<td>상품 리뷰 작성, 적립금 지급</td>
						</tr>
						<tr>
							<th>슈어엠</th>
							<td>카카오 알림톡 발송 대행</td>
						</tr>
						<tr>
							<th>비즈메일</th>
							<td>메일 발송 </td>
						</tr>
						<tr>
							<th>네이버㈜</th>
							<td>간편결제 서비스</td>
						</tr>
						</tbody>
						</table><br><br>

						2. 수탁자에 공유되는 정보는 목적을 달성하기 위하여 필요한 최소한의 정보에 국한됩니다. <br>
						또한 고객의 서비스 요청에 따라 해당하는 업체에 선택적으로 개인정보가 제공되고 있습니다.<br>
						3. 위탁 업체 리스트는 해당 서비스 변경 및 계약 기간에 따라 변경될 수 있으며 변경 시 공지사항을 통해 사전 공지합니다. 단기 이벤트는 참여 시에 개별 공지됩니다.<br>
						4. 회사는 개인정보의 처리의 위탁 시 위탁계약 등을 통하여 서비스 제공자의 개인정보보호 관련 지시 엄수, 개인정보에 관한 비밀유지, 이용자 동의 없는 개인정보의 제3자 제공 금지 등 이용자의 개인보호의 보호를 위해 관리 • 감독합니다.<br>
						5. 회사는 이벤트 및 프로모션을 위하여 개인정보 처리 위탁 시 이용자의 별도 동의를 얻어 제공합니다.<br>
						6. 다음 각 호의 경우는 이용자의 별도 동의 없이 제공될 수 있습니다.<br>
						- 서비스 제공에 따른 요금 정산을 위하여 필요한 경우<br>
						- 통계 작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 연구 단체, 설문조사, 리서치 기관 등에 제공하는 경우<br>
						- 개인정보보호법, 정보통신망 이용 촉진 및 정보보호 등에 관한 법률, 통신비밀 보호법, 국세기본법, 금융실명거래 및 비밀보장에 관한 법률, 신용 정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 형사소송법 등 법률상 특별한 규정이 있는 경우<br>
						7. 이용자는 제3자에 대한 개인정보 제공 동의를 거부할 수 있으며, 동의를 거부할 때에는 제3자 제공에 따른 서비스 이용에 제한을 받을 수 있습니다.<br>
						8. 회사는 개인정보를 국외의 제3자에게 제공할 때에는 이용자에게 내용을 알리고 동의를 받습니다.<br><br>

						제 4 조 <br>
						개인정보의 열람∙정정 및 동의철회<br>
						1. 이용자는 언제든지 등록되어 있는 본인의 개인정보를 열람하거나 정정하실 수 있습니다. <br>
						개인정보 열람 및 정정을 하고자 할 경우에는 메뉴중 『MY PAGE』의 『회원정보 수정』 항목을 클릭하여 직접 열람 또는 정정하거나, 개인정보 보호 담당자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br>
						2. 동의 철회를 하고 개인정보를 파기하는 등의 조치를 취한 경우에는 그 사실을 고객께 지체 없이 통지하도록 하겠습니다. <br>
						3. 다음과 같은 경우에는 개인정보의 열람 및 정정 등을 제한할 수 있습니다.<br>
						- 제3자의 권익을 현저하게 해할 우려가 있는 경우<br>
						- 해당 서비스 제공자의 업무에 현저한 지장을 미칠 우려가 있는 경우<br>
						- 법령을 위반하는 경우 등<br><br>

						제 5 조<br>
						(개인정보의 보유 • 이용 기간, 파기절차 및 파기방법)<br>
						1. 회사는 이용자가 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 보유하며 서비스 제공 등의 목적을 위해 이용합니다. <br>
						전산에 등록된 이용자의 개인정보는 개인정보 관리 담당자 및 책임자 또는 이들의 승인을 얻은 자가 아니면 문서로 출력할 수 없습니다.<br>
						2. 회사는 이용자가 자신의 개인정보를 삭제하거나 회원가입 탈퇴를 요청한 경우 지체 없이 조치를 취하며, 삭제된 정보는 기록을 복구 또는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다.<br>
						3. 회사는 개인정보의 수집 목적 및 또는 제공받은 목적이 아래와 같이 파기 사유가 발생한 때에 회사의 내부 파기 절차에 따라 디스크에서 정보를 삭제하고, 출력된 경우에는 분쇄기로 분쇄하는 방법으로 이용자의 개인정보를 지체 없이 파기합니다.<br>
						- 회원가입 정보의 경우 : 회원가입을 탈퇴하거나 회원에서 제명된 때<br>
						- 대금 지급 정보의 경우 : 대금의 완제일 또는 채권소멸시효기간이 만료된 때<br>
						- 배송 정보의 경우 : 물품 또는 서비스가 인도되거나 제공된 때<br>
						- 설문 조사, 이벤트 등의 목적을 위하여 수집한 경우 : 해당 설문조사, 이벤트가 종료한 때<br>
						4. 수집목적 또는 제공받은 목적이 달성된 경우에도 전자상거래 등에서의 소비자보호에 관한 법률, 개인정보보호법, 상법, 국세기본법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 다음과 같이 일정 기간 이용자의 개인정보를 보유할 수 있습니다.<br>
						- 계약 또는 청약철회 등에 관한 기록 : 5년<br>
						- 대금 결제 및 재화 등의 공급에 관한 기록 : 5년<br>
						- 소비자 불만 또는 분쟁 처리에 관한 기록 : 3년<br>
						- 웹사이트 방문(로그) 기록 : 1년<br>
						- 기타 고객의 동의를 받은 경우 동의를 받은 기간까지 : 회원의 동의를 얻어 회원탈퇴 시 30일간<br>
						5. 회사는 정보통신망법 제29조에 의거 개인정보 유효기간제를 적용하고 있습니다. <br>
						휴면 회원(최근 12개월 동안 서비스를 이용하지 아니한 회원)에 대해 회원자격 상실에 대한 안내문을 통지하고, 안내문에서 정한 기한 내에 답변이 없을 경우 회원자격을 상실시킬 수 있습니다. <br>
						이 경우, 휴면 회원의 개인정보는 다른 회원의 개인정보와 분리하여 별도로 저장•관리 되며, 분리 저장된 개인정보는 법정 보관 기간 경과 후 파기하고 있습니다.<br>
						파기되지 않은 개인 정보 중 해당 이용자의 요청이 있는 경우 고객 정보는 서비스 이용을 재개하는 시점에 다시 제공됩니다.<br><br>

						제 6 조 <br>
						개인정보보호를 위한 기술 및 관리적 대책<br>
						1. 회원의 개인정보는 기본적으로 회원의 아이디와 비밀번호에 의하여 보호되며, 회사는 회원의 개인정보를 처리함에 있어 개인정보가 유출, 변조 또는 훼손되지 않도록 안전성을 확보하기 위하여 기술적/관리적 대책을 마련하고 있습니다.<br>
						2. 회사는 개인정보 처리시스템 등의 접근 권한 관리를 통해 외부로부터의 무단 접근을 통제하고 있으며, 중요 데이터는 저장 및 전송 시 암호화하여 사용하는 등 안전하게 저장•관리하고 있습니다.<br>
						3. 회사는 해킹이나 악성코드 등에 의한 개인정보 유출 및 훼손을 방지하기 위하여 보안 프로그램을 주기적으로 갱신•점검하고 있습니다.<br>
						4. 회사는 결제 등의 경우에 있어 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 보안장치를 채택하고 있습니다.<br>
						5. 회사는 해킹 등에 의한 정보의 유출을 방지하기 위해 침입차단시스템(방화벽)을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적인 보안성을 확보하기 위해 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.<br>
						6. 회사는 회원 본인의 비밀번호 요청 등에 의해 개인정보를 다룰 때 가능한 최선의 방법으로 본인임을 확인하고 안전하게 정보가 처리될 수 있도록 최선을 다합니다.<br>
						7. 회사는 개인정보에 대한 접근 권한을 개인정보 관리 책임자 등 개인정보 관리 업무를 수행하는 자, 기타 업무상 개인정보의 처리가 불가피한 자로 제한하며, 개인정보를 처리하는 직원에 대한 수시 교육을 통하여 개인정보 처리 방침의 준수를 항상 강조하고 있습니다.<br>
						8. 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br>
						9. 위와 같은 회사의 노력 이외에 회원은 아이디와 비밀번호, 주민등록번호 등 개인정보가 인터넷상에 노출되거나 타인에게 유출되지 않도록 주의하여야 합니다. <br>
						회원 본인의 부주의나 관리 소홀로 아이디와 비밀번호 등 개인정보가 유출되었다면 이에 대해서 회사는 책임을 지지 않습니다. <br>
						10. 따라서, 회원의 아이디와 비밀번호는 반드시 본인만 사용하시고, 비밀번호를 자주 바꿔주시는 것이 좋으며, 비밀번호는 영문자, 숫자를 혼합하여 타인이 유추하기 어려운 번호를 사용하는 것이 좋습니다.<br>
						11. 또한 서비스의 이용을 마친 후에는 항상 로그아웃을 하여 주시고 웹 브라우저를 종료하는 것이 좋습니다.<br>
						특히, 다른 사람과 컴퓨터를 공유하거나, 공공장소에서 이용하는 경우에 개인정보의 보안을 위해서는 이와 같은 절차가 더욱 필요합니다<br><br>

						제 7 조 <br>
						14세 미만 아동의 개인정보보호<br>
						회사는 온라인 환경에서 어린이의 개인정보를 보호하는 것 역시 중요한 일이라고 생각하고 있으며, 회사는 법정대리인의 동의가 필요한 만 14세 미만 아동의 회원가입은 받고 있지 않습니다. <br><br>

						제 8 조<br>
						(개인정보 보호 업무 및 관련 고충 사항 처리 부서)<br>
						1. 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 개인정보 보호 업무 및 관련 고충 사항을 처리하는 부서가 지정되어 있습니다. <br>
						또한 개인정보 관리 책임자와 개인정보 관리 담당자를 두어 이용자의 개인정보에 관한 문의 및 불만을 신속하게 처리해드리고 있습니다.<br>
						[개인정보 보호 책임자]<br>
						성 명 : 강재혁 본부장<br>
						소 속 : 디지털 마케팅 본부<br>
						전화번호 : 070-7494-0441 (무료) (월~금 : 09:00~18:00, 공휴일 제외)<br>
						[개인정보 보호 담당자]<br>
						성 명 : 고석준 팀장<br>
						소 속 : 커머스 마케팅<br>
						전화번호 : 070-7494-0066 (무료) (월~금 : 09:00~18:00, 공휴일 제외)<br>
						E-MAIL : sj_ko@sdbiotech.co.kr<br>
						FAX : 02-7429-1846<br>
						2. 개인정보 침해에 대한 신고 또는 상담이 필요하신 경우에는 한국정보보호진흥원(KISA) 개인 정보 침해신고센터로 문의하시기 바랍니다. <br>
						또한, 개인정보침해를 통한 금전적, 정신적 피해를 입으신 경우에는 한국정보보호진흥원*KISA) 개인정보분쟁조정위원회에 피해 구제를 신청하실 수 있습니다.<br><br>

						- KISA 개인정보보호 (http://privacy.kisa.or.kr / (국번 없이) 118) <br>
						- 경찰청 사이버안전국 (http://cyberbureau.police.go.kr (국번없이) 182) <br>
						- 대검찰청 사이버수사과 (http://spo.go.kr / (국번없이) 1301) <br>
						- 개인정보 침해신고센터 (한국인터넷 진흥원 운영) ( http://privacy.kisa.or.kr / (국번없이) 118) <br>
						- 개인정보 분쟁조정위원회 (한국인터넷 진흥원 운영) (http://www.kopico.go.kr / 02-1833-6972)<br><br>

						제 9 조<br>
						(보호정책 변경 시 공지 의무)<br>
						개인정보 처리 방침은 법령 • 정책 및 회사 내부 운영 방침 또는 보안기술의 변경에 따라 내용이 변경될 수 있으며, 이 때에는 변경되는 개인정보 처리 방침을 지체없이 회사 사이트 첫 페이지에 변경 이유 및 내용 등을 공지하도록 하겠습니다.<br>
						- 공고 일자 : 2019년 06월 05일<br>
						- 시행 일자 : 2019년 06월 19일
					</div>
				</div>
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
				<div class="txt">
					<div class="scrollbar">
						- 주문 상품 및 주문 정보를 확인하였고, 결제 진행에 동의합니다.<br>
						- 위 상품의 구매조건 확인 및 결제진행 동의.
					</div>
				</div>
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
