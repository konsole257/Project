<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="주문/결제";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mypage">
		<div class="pay">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<span class="pay on">01 주문/결제</span>
						<span class="complete">02 주문완료</span>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">주문/결제</h2>
					<!-- -->

					<!-- 탭 // -->
					<div class="pay_tab" data-ui="tab">

						<!-- 상품 탭 //
						<section>
							<h3 data-ui="tab_menu"><span>상품</span></h3>
						</section>-->
						<!-- // 상품 탭 -->

						<!-- 전시/공연/체험 탭 // -->
						<section class="on">
							<!--<h3 data-ui="tab_menu"><span>전시/공연/체험</span></h3>-->

							<div data-ui="tab_content" id="product">
								<form name="form">
									<fieldset>
										<legend>상품 주문/결제</legend>

										<table>
											<caption>상품 주문/결제 내역</caption>

											<colgroup>
												<col style="width:462px;" />
												<col style="width:154px;" />
												<col style="width:154px;" />
												<col style="width:155px;" />
												<col style="width:155px;" />
											</colgroup>

											<thead>
												<tr>
													<!-- 2016-03-11 : 수정 // -->
													<th scope="col">상품정보</th>
													<th scope="col">상품금액</th>
													<th scope="col">수량</th>
													<th scope="col">주문금액</th>
													<!-- // 2016-03-11 : 수정 -->
												</tr>
											</thead>

											<tbody>
												<!-- 반복영역 // -->
												<tr>
													<td class="info">
														<!-- 상품 링크 -->
															<figure>
																<img src="/avenueCom/images/temp/cart_ticket_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																<figcaption class="subject_area">
																	<small class="genre type1">전시</small>
																	<!--<small class="genre type2">공연</small>-->
																	<!--<small class="genre type3">체험</small>-->
																	<small class="genre type4">COUPON</small><!-- 2016-03-11 : 추가 -->
																	<a href="#"><strong class="subject dotdot">360stadium “Hello 2016”</strong></a><!-- 상품 이름 -->
																	<small class="option">옵션 : 날짜 - <time>2016-01-16</time>, 시간 - <time>13:00</time></small><!-- 상품 옵션 -->
																</figcaption>
															</figure>

													</td>

													<!-- 상품 금액 : 2016-03-11 : 수정 및 위치변경 -->
													<td>
														<del data-fn="price">12000원</del>
														<span data-fn="price">10000원</span>
													</td>

													<td><!-- 상품 수량 -->
														1
													</td>

													<!--<td data-fn="price">2000원</td> 할인/쿠폰금액 : 2016-03-11 : 삭제 -->

													<td data-fn="price">8000원</td><!-- 주문금액 -->
												</tr>
												<!-- // 반복영역 -->
											</tbody>

											<!-- 결제금액 영역 // -->
											<tfoot>
												<tr class="price">
													<td colspan="5">
														<table>
															<caption>결제금액</caption>

															<colgroup>
																<col style="width:33.3%;" />
																<col style="width:33.3%;" />
																<col style="width:33.3%;" />
															</colgroup>

															<thead>
																<tr>
																	<th>총 상품금액</th>
																	<th>총 상품할인금액</th>
																	<th>최종 결제금액</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

																	<td class="discount"><!-- 총 할인금액 -->
																		<span data-fn="price">32000원</span>
																		<!-- 2016-03-11 : 삭제
																		<em class="discount_list">
																		상품할인 <span data-fn="price">2000</span>원 + 쿠폰할인 <span data-fn="price">30000</span>원
																	</em>-->
																	</td>

																	<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tfoot>
											<!-- // 결제금액 영역 -->
										</table>

										<!-- 주문자 정보 // -->
										<section class="orderer_info">
											<h4>주문자 정보</h4>

											<table>
												<caption>주문자 정보 내역</caption>

												<colgroup>
													<col style="width:150px;" />
													<col style="width:390px;" />
													<col style="width:150px;" />
													<col style="width:390px;" />
												</colgroup>

												<tbody>
													<tr class="u_hp">
														<th scope="row">주문자</th>
														<td><input type="text" id="u_orderer_name" title="주문자 입력" /></td>

														<th scope="row">휴대폰</th>
														<td>
															<select title="휴대폰 앞자리 선택">
																<option value="010">010</option>
																<option value="1">1</option>
																<option value="2">2</option>
															</select>
															<span class="input_wrap">
																<input type="text" title="휴대폰 중간자리 입력" id="u_orderer_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
															</span>
															<span class="input_wrap">
																<input type="text" title="휴대폰 뒷자리 입력" id="u_orderer_hp2" maxlength="4" data-type="onlyNumber" />
															</span>
														</td>
													</tr>
													<tr class="u_mail">
														<th scope="row">이메일</th>
														<td colspan="3">
															<span class="input_wrap">
																<input title="이메일 아이디 입력" id="u_orderer_mail1" type="text" data-type="mail">
															</span>
															<span class="input_wrap">
																<input title="이메일 주소 입력" id="u_orderer_mail2" type="text" data-type="mail">
															</span>

															<select title="이메일 선택" data-fn="mailSelect">
																<option value="" >직접입력</option>
																<option value="1">1</option>
																<option value="2">2</option>
															</select>
														</td>
													</tr>
													<tr>
														<th scope="row">주문비밀번호</th>
														<td>
															<input type="password" id="u_orderer_pw1" title="주문비밀번호 입력" maxlength="10" />
															<strong class="caution">* (영문, 숫자, 특수문자 가능 4자~10자)</strong>
														</td>

														<th scope="row">비밀번호 확인</th>
														<td><input type="password" id="u_orderer_pw2" title="주문비밀번호 입력" maxlength="10" /></td>
													</tr>
												</tbody>
											</table>
										</section>
										<!-- // 주문자 정보 -->

										<!-- 예약 정보 // -->
										<section class="reservation_info">
											<div><h4>예약 정보</h4><span class="u_same"><label for="u_same">주문자 정보와 동일</label><input type="checkbox" id="u_same" /></span></div>

											<table>
												<caption>예약 정보 양식</caption>

												<colgroup>
													<col style="width:150px;" />
													<col style="width:390px;" />
													<col style="width:150px;" />
													<col style="width:390px;" />
												</colgroup>

												<tbody>
													<tr>
														<th scope="row">예약하시는 분</th>
														<td colspan="3"><input type="text" id="u_reservation_name" title="받으시는 분 입력" /></td>
													</tr>

													<tr>
														<th scope="row">휴대폰</th>
														<td>
															<select title="휴대폰 앞자리 선택">
																<option value="010" >010</option>
																<option value="1">1</option>
																<option value="2">2</option>
															</select>
															<span class="input_wrap">
																<input type="text" title="휴대폰 중간자리 입력" id="u_reservation_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
															</span>
															<span class="input_wrap">
																<input type="text" title="휴대폰 뒷자리 입력" id="u_reservation_hp2" maxlength="4" data-type="onlyNumber" />
															</span>
														</td>

														<th scope="row">일반전화</th>
														<td>
															<select title="일반전화 지역번호 선택">
																<option value="010" >02</option>
																<option value="1" >1</option>
																<option value="2" >2</option>
															</select>
															<span class="input_wrap">
																<input type="text" title="일반전화 앞자리 입력" id="u_reservation_tp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
															</span>
															<span class="input_wrap">
																<input type="text" title="일반전화 뒷자리 입력" id="u_reservation_tp2" maxlength="4" data-type="onlyNumber" />
															</span>
														</td>
													</tr>

													<tr>
														<th scope="row">기타</th>
														<td colspan="3">
															<input type="text" id="u_reservation_ask" title="배송시 요구사항 입력" maxlength="50" data-blankCancel="true" />
															<strong class="caution">*50자 이내로 적어주세요.</strong>
														</td>
													</tr>
												</tbody>
											</table>
										</section>
										<!-- // 예약 정보 -->

										<!-- 2016-03-11 : 추가 // -->
										<div class="detail_agreement_area">
											<input type="checkbox" id="detail_agreement" /><label for="detail_agreement">상세페이지에 기재된 취소·환불 정책 및 취소·환불 수수료 내용을 확인했으며, 정책에 동의합니다.</label>
										</div>
										<!-- // 2016-03-11 : 추가 -->

										<div class="pay_area">
											<!-- 결제 수단 선택 // -->
											<section class="pay_method">
												<h4>결제 수단 선택</h4>

												<table>
													<caption>결제 수단 양식</caption>

													<colgroup>
														<col style="width:150px;" />
														<col style="width:370px;" />
													</colgroup>

													<tbody>
														<tr>
															<td colspan="2">
																<input type="radio" name="pay_method" id="u_card" checked /><label for="u_card">신용카드</label>
																<input type="radio" name="pay_method" id="u_account" /><label for="u_account">가상계좌</label>
															</td>
														</tr>

														<!-- 신용카드 선택시 : 2016-04-18 : 수정 // -->
														<tr class="u_card">
															<td class="info_img">
																<img src="/avenueCom/images/sub/pay_payarea_card.jpg" alt="" />
															</td>
															<!--
															<th>카드 선택</th>
															<td>
																<select title="카드 종류 선택" id="u_card_select">
																	<option value="">카드 선택</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																</select>
															</td>
														</tr>
														<tr class="u_card">
															<th>할부선택</th>
															<td>
																<select title="결제기간 선택" id="u_monthly_select">
																	<option value="">결제기간 선택</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																</select>
															</td>
														</tr>
														<tr class="u_card last">
															<td colspan="2">
																<span class="btn_area"><a href="#card" id="btn_card" class="small type3" data-fn="popupBtnOpen">무이자 카드 정보 안내</a></span>
															</td>-->
														</tr>
														<!-- // 신용카드 선택시 : 2016-04-18 : 수정 -->

														<!-- 가상계좌 선택시 : 2016-04-18 : 수정  // -->
														<tr class="u_account">
															<td class="info_img">
																<img src="/avenueCom/images/sub/pay_payarea_bank.jpg" alt="" />
															</td>
															<!--
															<th>입금은행</th>
															<td>
																<select title="입금은행 선택" id="u_account_select">
																	<option value="">은행선택</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																</select>
															</td>
														</tr>
														<tr class="u_account">
															<th rowspan="4">현금영수증</th>
															<td>
																<input type="radio" name="receipt" id="u_publish" checked /><label for="u_publish">발급</label>
																<input type="radio" name="receipt" id="u_nopublish" /><label for="u_nopublish">미발급</label>
															</td>
														</tr>
														<tr class="u_account">
															<td>
																<input type="radio" name="number" id="u_deduct" checked /><label for="u_deduct">소득공제용(일반 개인용)</label>
																<input type="radio" name="number" id="u_licensee" /><label for="u_licensee">사업자 등록번호</label>
															</td>
														</tr>
														<tr class="u_account hp">
															<td>
																<select title="수단 선택">
																	<option>휴대폰번호</option>
																	<option>기타</option>
																</select>

																<div class="u_hp_area">
																	<select title="휴대전화 앞자리 선택">
																		<option value="010" >010</option>
																		<option value="1" >1</option>
																		<option value="2" >2</option>
																	</select>
																	<span class="input_wrap">
																		<input type="text" title="휴대전화 중간자리 입력" id="u_pay_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
																	</span>
																	<span class="input_wrap">
																		<input type="text" title="휴대전화 뒷자리 입력" id="u_pay_hp2" maxlength="4" data-type="onlyNumber" />
																	</span>
																</div>
															</td>
														</tr>
														<tr class="u_account licensee">
															<td>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 앞자리 입력" id="u_pay_licensee1" maxlength="3" data-fn="nextFocus" data-type="onlyNumber" />
																</span>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 중간자리 입력" id="u_pay_licensee2" maxlength="2" data-fn="nextFocus" data-type="onlyNumber" />
																</span>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 뒷자리 입력" id="u_pay_licensee3" maxlength="5" data-type="onlyNumber" />
																</span>
															</td>
														</tr>
														<tr class="u_account last">
															<td colspan="2">
																<strong>※무통장입금(가상계좌)시 주의사항</strong>
																<p>주문시 마다 결제계좌가 변경되오니 꼭 계좌번호를 확인해주십시오.</p>
																<p>입금은행을 선택하시고 고객님의 전용 계좌번호를 확인해주십시오.</p>
																<p>주문 후 24시간 이내 입금 확인되지 않으면 주문이 자동 취소될 수 있습니다.</p>
															</td>-->
														</tr>
														<!-- // 가상계좌 선택시 : 2016-04-18 : 수정 -->

														<!-- 페이코 선택시 : 2016-04-18 : 수정  // -->
														<tr class="u_payco">
															<td class="info_img">
																<img src="/avenueCom/images/sub/pay_payarea_payco.jpg" alt="" />
															</td>
															<!--
															<th>입금은행</th>
															<td>
																<select title="입금은행 선택" id="u_account_select">
																	<option value="">은행선택</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																</select>
															</td>
														</tr>
														<tr class="u_account">
															<th rowspan="4">현금영수증</th>
															<td>
																<input type="radio" name="receipt" id="u_publish" checked /><label for="u_publish">발급</label>
																<input type="radio" name="receipt" id="u_nopublish" /><label for="u_nopublish">미발급</label>
															</td>
														</tr>
														<tr class="u_account">
															<td>
																<input type="radio" name="number" id="u_deduct" checked /><label for="u_deduct">소득공제용(일반 개인용)</label>
																<input type="radio" name="number" id="u_licensee" /><label for="u_licensee">사업자 등록번호</label>
															</td>
														</tr>
														<tr class="u_account hp">
															<td>
																<select title="수단 선택">
																	<option>휴대폰번호</option>
																	<option>기타</option>
																</select>

																<div class="u_hp_area">
																	<select title="휴대전화 앞자리 선택">
																		<option value="010" >010</option>
																		<option value="1" >1</option>
																		<option value="2" >2</option>
																	</select>
																	<span class="input_wrap">
																		<input type="text" title="휴대전화 중간자리 입력" id="u_pay_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
																	</span>
																	<span class="input_wrap">
																		<input type="text" title="휴대전화 뒷자리 입력" id="u_pay_hp2" maxlength="4" data-type="onlyNumber" />
																	</span>
																</div>
															</td>
														</tr>
														<tr class="u_account licensee">
															<td>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 앞자리 입력" id="u_pay_licensee1" maxlength="3" data-fn="nextFocus" data-type="onlyNumber" />
																</span>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 중간자리 입력" id="u_pay_licensee2" maxlength="2" data-fn="nextFocus" data-type="onlyNumber" />
																</span>
																<span class="input_wrap">
																	<input type="text" title="사업자등록번호 뒷자리 입력" id="u_pay_licensee3" maxlength="5" data-type="onlyNumber" />
																</span>
															</td>
														</tr>
														<tr class="u_account last">
															<td colspan="2">
																<strong>※무통장입금(가상계좌)시 주의사항</strong>
																<p>주문시 마다 결제계좌가 변경되오니 꼭 계좌번호를 확인해주십시오.</p>
																<p>입금은행을 선택하시고 고객님의 전용 계좌번호를 확인해주십시오.</p>
																<p>주문 후 24시간 이내 입금 확인되지 않으면 주문이 자동 취소될 수 있습니다.</p>
															</td>-->
														</tr>
														<!-- // 페이코 선택시 : 2016-04-18 : 수정 -->
													</tbody>
												</table>
											</section>
											<!-- // 결제 수단 선택 -->

											<!-- 최종 결제금액 // -->
											<section class="total_pay">
												<h4>최종 결제금액</h4>

												<table>
													<caption>최종 결제금액 및 동의서</caption>

													<colgroup>
														<col style="width:100%;" />
													</colgroup>

													<tbody>
														<tr>
															<td>최종 결제금액 <strong data-fn="price">153,000원</strong></td>
														</tr>

														<tr>
															<td>
																<span>주문 동의</span>
																<span class="agreement_area"><label for="order_agreement">약관동의</label><input type="checkbox" id="order_agreement" /></span>
																<pre>
주문할 상품의 상품명, 상품가격, 배송 정보를 확인하였으며, 구매에 동의하시겠습니까?
(전자상거래법 제 8조 2항)
																</pre>
															</td>
														</tr>

														<tr>
															<td>
																<span>개인정보 제3자 제공/위탁동의</span>
																<span class="agreement_area"><label for="privacy_agreement">약관동의</label><input type="checkbox" id="privacy_agreement" /></span>
																<pre>
 회사는 이용자의 개인정보를 본 개인정보 취급 방침 에서 고지한 범위 내에서 사용하며, 이용자 의사동의 없동 범위를 초과하여 이용하거나 이 용자의 개인 정보를 제3자에게 제공하지 않습니다.

 다만, 관련 법령에 의하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 등에 개인정보 를 제공하여야 하는 경우는 예외로 합니다.
회사의 서비스 이행을 위하여 개인정보를 제3자에게 제공하고 있는 경우는 다음과 같습니다.

- 제공목적 : 신용카드 결제
- 제공받는 자 :
1) 신용카드사: 국민, 비씨, 롯데, 삼성, NH농협, 현대, 외환, 신한, 하나 등
2) 4개 시중은행 : 신한, SC제일, 씨티, 하나
3) 4개 특수은행 : 농협, 기업, 국민, 수협
3) 3개 지방은행 : 광주, 전북, 제주
3) 1개 전업카드사 : 우리
- 제공정보 : 거래정보

- 제공목적 : 신용카드 VAN사
- 제공받는 자 : NICE정보통신, KIS 정보통신, KCP 정보통신
- 제공정보 : 거래정보

- 제공목적 : SSG PAY
- 제공받는 자 : 신세계I&C
- 제공정보 : 거래정보

- 제공목적 : 카카오페이
- 제공받는 자 : (주)LG CNS
- 제공정보 : 거래정보

- 제공목적 : 유비페이
- 제공받는 자 : 하렉스인포텍
- 제공정보 : 거래정보

- 제공목적 : 계좌이체
- 제공받는 자 :
1) 금융결제원
2) 은행 : 기업/국민/외환/수협/농협중앙회/단위농협/우리/SC제일/한국씨티/대구/부산/광주/제주/전북/경남/새마을금고/신협/우체국/하나/신한/산림조합/산업
3) 증권 : 유안타/현대/미래에셋/한국투자/NH투자/하이/HMC/SK/대신/하나대투/신한금융/동부/유진/메리츠/신영/삼성/한화/대우
- 제공정보 : 거래정보

- 제공목적 : 가상계좌
- 제공받는 자 :
1) 은행 : 국민/농협중앙회/우체국/우리/신한/하나/부산/SC제일/외환/기업
2) 케이아이비넷
- 제공정보 : 거래정보

- 제공목적 : 휴대폰 결제
- 제공받는 자 : ㈜SKT, ㈜KT, ㈜LGU+, ㈜한국케이블텔레콤, ㈜CJ헬로비전, ㈜모빌리언스, ㈜다날
- 제공정보 : 거래정보(모빌리언스, 다날IP포함), 휴대폰번호/고유식별번호

- 제공목적 : 상품권 결제
- 제공받는 자 :
1) 문화상품권 – 컬쳐랜드
2) 전자상품권 (신세계기프트카드/SSG MONEY) – 신세계I&C
- 제공정보 : 거래정보(한국문화진흥IP포함)

- 제공목적 : 해외결제
- 제공받는 자 : PayGate, KG이니시스
- 제공정보 : 거래정보

- 제공목적 : 포인트 결제
- 제공받는 자 :
1) 신세계포인트 – 이마트, 신세계I&C
 2) 쇼핑적립금, 쇼핑모아적립금, LGU+멤버쉽포인트 – LG U+
 3) OK캐쉬백 - SK플래닛
- 제공정보 : 거래정보

- 제공목적 : 현금영수증 발행
- 제공받는 자 : 국세청, 엘지데이콤
- 제공정보 : 거래정보, 고유식별번호, 휴대전화번호, 카드정보

- 제공목적 : U+결제
- 제공받는 자 : XPAY
- 제공정보 : 거래정보

 제공 정보 보유 및 이용기간 : 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. (다른 법령에 특별한 규정이 있을 경우 관련 법령에 따라 보관합니다.


2. 개인정보 취급 위탁을 하는 업무의 내용 및 수탁자

회사는 서비스 이행을 위하여 이용자들의 개인정보를 외부전문업체에 위탁하여 운영하고 있지 않으며, 개인정보의 처리를 위탁하는 경우에는 미리 그 사실을 이용자들에게 공지할 것 입니다. 또한 업무제휴 계약서 등을 통하여 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담, 위탁기간 종료 즉시 개인정보의 반납/파기 의무 등을 명확히 규정하고 당해 계약 내용을 서면 또는 전자적으로 보관하여 이용자의 권익을 보호하고 있습니다. 회사는 이용자로부터 수집한 개인정보를 이용자의 동의없이 제3자에게 위탁하고 있지 않습니다. 향후 취급 위탁이 필요한 경우 이용자에게 사전 통지하고 필요한 경우 사전 동의를 받습니다.


3. 제 3자에게 제공된 개인정보의 보유 ,이용기간이 만료된 개인정보는 아래와 같은 방법으로 파기합니다.

- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다
- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.


4. 개인정보의 제3자 제공 및 위탁 거부

이용자는 개인정보의 제3자 제공 및 위탁 동의를 거부할 수 있습니다.
단, 동의를 거부하는 경우 본 서비스 결제가 정상적으로 이루어질 수 없음을 알려드립니다.


제 2 조 [ 공지 ]
1. 본 규정은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력을 발생합니다.
2. 미술관은 본 규정을 변경할 수 있으며, 변경된 규정은 제1항과 같은 방법으로 공지함으로써 효력을 발생합니다.

제 3 조 [ 약관외 준칙 ]
본 약관에 규정되지 않은 사항은 전기통신사업법 및 정보통신망 이용촉진 및 정보보호 등에 관한 법률 기타 관련법령의 규정에 의합니다.
																</pre>
															</td>
														</tr>
														<tr>
															<td>
																<div class="btn_area">
																	<button type="submit" id="btn_pay" class="big type1">결제하기</button>
																	<button type="reset" id="btn_cancel" class="big type4">취소하기</button>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</section>
											<!-- // 최종 결제금액 -->
										</div>

									</fieldset>
								</form>
							</div>

							<!-- 2016-03-11 : 삭제
							<div class="caution_area">
								<strong>알려드립니다.</strong>
								<div>
									<p>컬처상품 주문/취소에 관한 규정안내</p>
									<p>컬처상품 주문/취소에 관한 규정안내</p>
								</div>
							</div>-->
						</section>
						<!-- // 전시/공연/체험 탭 -->
					</div>
					<!-- // 탭 -->

					<!-- 무이자 카드 정보 안내 팝업 // -->
					<div id="card" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">무이자 카드 정보 안내</h2>

							<div class="popup_content">

								<table>
									<caption>무이자 카드 안내 표</caption>

									<colgroup>
										<col style="width:146px;" />
										<col style="width:170px;" />
										<col style="width:264px;" />
									</colgroup>

									<thead>
										<tr>
											<th scope="col">카드종류</th>
											<th scope="col">무이자</th>
											<th scope="col">상세 내용</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td class="card">현대카드</td>
											<td>2~4개월 할부거래<br />(5만원 이상 결제)</td>
											<td>5만원 이상 결제시, 1회차 수수료 고객부담<br />5만원 이상 결제시, 1,2회차 수수료 고객부담</td>
										</tr>

										<tr>
											<td class="card">신한카드</td>
											<td>5~6개월 할부거래<br />(5만원 이상 결제)</td>
											<td>5만원 이상 결제시, 1회차 수수료 고객부담<br />5만원 이상 결제시, 1,2회차 수수료 고객부담</td>
										</tr>

										<tr>
											<td rowspan="3" class="card">삼성카드</td>
											<td>10개월 할부거래<br />(5만원 이상 결제)</td>
											<td>상세내용 노출</td>
										</tr>
										<tr>
											<td>6개월 할부거래<br />(5만원 이상 결제)</td>
											<td>10만원 이상 결제시</td>
										</tr>
										<tr>
											<td>12개월 할부거래<br />(5만원 이상 결제)</td>
											<td>5만원 이상 결제시, 1회차 수수료 고객부담<br />5만원 이상 결제시, 1,2회차 수수료 고객부담</td>
										</tr>

										<tr>
											<td class="card">KB국민카드</td>
											<td>6개월 할부거래<br />(5만원 이상 결제)</td>
											<td>5만원 이상 결제시, 1회차 수수료 고객부담<br />5만원 이상 결제시, 1,2회차 수수료 고객부담</td>
										</tr>

										<tr>
											<td class="card">현대카드</td>
											<td>10개월 할부거래<br />(5만원 이상 결제)</td>
											<td>상세내용 노출</td>
										</tr>

										<tr>
											<td class="card">롯데카드</td>
											<td>6개월 할부거래<br />(5만원 이상 결제)</td>
											<td>5만원 이상 결제시</td>
										</tr>
									</tbody>
								</table>
								<strong class="caution">* BC, 법인, 체크, 기프트카드 제외</strong>

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 무이자 카드 정보 안내 팝업 -->

					<script>
					$('[name=pay_method]').click(function(){
						if ( $('#u_card').is(':checked') ) {
							$('.u_card').css({ 'visibility':'visible', 'position':'inherit' });
							$('.u_card [data-ui=select]').css({ 'visibility':'visible' });
							$('.u_account').css({ 'visibility':'hidden', 'position':'absolute' });
							$('.u_account [data-ui=select]').css({ 'visibility':'hidden' })
						} else if ( $('#u_account').is(':checked') ) {
							$('.u_card').css({ 'visibility':'hidden', 'position':'absolute' });
							$('.u_card [data-ui=select]').css({ 'visibility':'hidden' });
							$('.u_account:not(.licensee)').css({ 'visibility':'visible', 'position':'inherit' });
							$('.u_account [data-ui=select]').css({ 'visibility':'visible' })
						}
					});

					$('[name=number]').click(function(){
						if ( $('#u_deduct').is(':checked') ) {
							$('.u_account.hp').css({ 'visibility':'visible', 'position':'inherit' });
							$('.u_account.hp [data-ui=select]').css({ 'visibility':'visible' });
							$('.u_account.licensee').css({ 'visibility':'hidden', 'position':'absolute' });
						} else if ( $('#u_licensee').is(':checked') ) {
							$('.u_account.hp').css({ 'visibility':'hidden', 'position':'absolute' });
							$('.u_account.hp [data-ui=select]').css({ 'visibility':'hidden' });
							$('.u_account.licensee').css({ 'visibility':'visible', 'position':'inherit' });
						}
					});

					$('form').submit(function(e){
						e.preventDefault();

						function validationPass(){
							if ( $('[name=pay_method]#u_card').is(':checked') ) { //신용카드
								if ( $('#u_card_select').val() == '' ) {
									alert('카드 종류를 선택해 주세요');
									return false;
								} else if ( $('#u_monthly_select').val() == '' ) {
									alert('결제기간을 선택해 주세요');
									return false;
								}
							} else if ( $('[name=pay_method]#u_account').is(':checked') ) { //가상계좌
								if ( $('#u_account_select').val() == '' ) {
									alert('은행을 선택해 주세요');
									return false;
								} else if ( $('#u_publish').is(':checked') && $('#u_deduct').is(':checked') ) { //소득공제 휴대전화번호
									if ( $('#u_pay_hp1').val() == '' ) {
										alert('휴대전화번호를 입력해주세요.');
										$('#u_pay_hp1').focus();
										return false;
									} else if ( $('#u_pay_hp2').val() == '' ) {
										alert('휴대전화번호를 입력해주세요.');
										$('#u_pay_hp2').focus();
										return false;
									}
								} else if ( $('#u_publish').is(':checked') && $('#u_licensee').is(':checked') ) { //소득공제 사업자등록번호
									if ( $('#u_pay_licensee1').val() == '' ) {
										alert('사업자등록번호를 입력해주세요.');
										$('#u_pay_licensee1').focus();
										return false;
									} else if ( $('#u_pay_licensee2').val() == '' ) {
										alert('사업자등록번호를 입력해주세요.');
										$('#u_pay_licensee2').focus();
										return false;
									} else if ( $('#u_pay_licensee3').val() == '' ) {
										alert('사업자등록번호를 입력해주세요.');
										$('#u_pay_licensee3').focus();
										return false;
									}
								}
							}

							if ( !$('#order_agreement').is(':checked') ) { //약관동의
								alert('주문 동의에 동의해 주세요.');
								return false;
							} else if ( !$('#privacy_agreement').is(':checked') ) {
								alert('개인정보 제3자 제공/위탁동의에 동의해 주세요.');
								return false;
							}

							document.form.submit();
						};

						formValidation(
							'alert', [
							['#u_orderer_name', '주문자를 입력해주세요.'],
							['#u_orderer_hp1', '전화번호를 입력해주세요.'],
							['#u_orderer_hp2', '전화번호를 입력해주세요.'],
							['#u_orderer_mail1', '이메일을 입력해주세요.'],
							['#u_orderer_mail2', '이메일을 입력해주세요.'],
							['#u_orderer_pw1', '주문비밀번호를 입력해주세요.'],
							['#u_orderer_pw2', '주문비밀번호를 입력해주세요.'],
							['#u_reservation_name', '예약하시는 분을 입력해주세요.'],
							['#u_reservation_hp1', '휴대전화번호를 입력해주세요.'],
							['#u_reservation_hp2', '휴대전화번호를 입력해주세요.']
						], validationPass );
					});
					</script>

					<!-- -->
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
