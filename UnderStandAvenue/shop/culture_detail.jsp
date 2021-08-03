<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="culture";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="CULTURE";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
	<script type="text/javascript">
	//<![CDATA[
	$(function(){
		// 옵션 추가
		var proOptionIdx = 0;
		$(".u_option").change(function(){
			var idx = $(this).find(':selected').index();
			if ( idx != 0 ){
				$(".optioninsert div").remove();
				if ( $(".optioninsert div").filter(".optionvalue"+idx).index() < 0 ){
					var optionvalue = "<div class='optionvalue"+idx+"'><strong>"+$(this).find(':selected').text()+"</strong><div class='btn'><span class='quantity'><input id='optionvalue"+idx+"' type='text' title='수량' value='1' data-type='onlyNumber' /><a class='btn_plus'>수량 +</a><a class='btn_minus'>수량 -</a></span><a href='#optionvalue"+idx+"' class='btn_del'>삭제</a></div></div>";
					$(".optioninsert").append(optionvalue);
				}
			}
		});

		// 옵션 삭제
		$(document).on("click",".optioninsert .btn_del", function(e){
			e.preventDefault();
			$("."+$(this).attr('href').replace("#","")).remove();
		});
	});
	//]]>
	</script>
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop">
		<div class="culture detail">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>

						<a href="/">HOME</a>

						<span class="depth1">WALKSHOP</span>

						<select title="">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>

						<select title="">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
				</div>

				<div id="contents_inner">

					<!-- prodetail // -->
					<div class="prodetail">
						<!-- 상품이미지 // -->
						<div id="detailpic" class="detailpic pajinate">
							<ul class="pajinatels">
								<li><img src="/avenueCom/images/temp/culture670x670.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/culture670x670.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/culture670x670.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/culture670x670.jpg" alt="" /></li>
							</ul>
							<!-- 품절일때 // -->
							<!--
							<span class="culture_icon shop_icon big">
								<span class="icon_soldout">SOLD OUT</span>
							</span>
							-->
							<!-- // 품절일때 -->
						</div>
						<!-- // 상품이미지 -->
						<!-- 상품안내 // -->
						<div class="detailinfo">
							<!-- 상품명 // -->
							<h2>
								[P00000CC] PURPLE&GREY PRETTY MAGIC TORTOISESHELL
								<small>상품코드  <em>000000000000</em></small>
							</h2>
							<!-- // 상품명 -->
							<!-- sns // -->
							<div class="sns">
								<a href="#" class="icon_twitter" title="twitter 공유하기">twitter</a>
								<a href="#" class="icon_facebook" title="facebook 공유하기">facebook</a>
								<a href="#" class="icon_kakaostory" title="카카오스토리 공유하기">pinterest</a>
							</div>
							<!-- // sns -->
							<!-- 가격 // -->
							<div class="price">
								<dl>
									<dt>판매가</dt>
									<dd class="txt_price1">300,000원</dd>
									<!-- 할인가 있을때 // -->
									<dt>
										할인가
									</dt>
									<dd class="txt_price2">
										300,000원
									</dd>
									<!-- // 할인가 있을때 -->
									<dt>
										쿠폰적용가
										<a href="#download_coupon" class="btn_coupondw" data-fn="popupBtnOpen" onclick="couponOpen()">쿠폰다운</a><!-- 2016-03-14 : 수정 -->
									</dt>
									<dd class="txt_price2">300,000원</dd>
								</dl>
								<dl class="deliver">
									<dt>배송비</dt>
									<dd>무료(현장수령)</dd>
								</dl>
							</div>
							<!-- // 가격 -->

							<!-- 옵션 // -->
							<div class="optionselect">
								<dl>
									<dt>옵션</dt>
									<dd>
										<select class="u_option" title="옵션 선택">
											<option>선택하세요.</option>
											<option>Grey</option>
											<option>Charcoal</option>
											<option>Grey2</option>
											<option>Charcoal2</option>
											<option>Grey3</option>
											<option>Charcoal3</option>
										</select>
									</dd>
								</dl>
								<div class="optioninsert"></div>

								<strong class="caution">CULTURE는 한 가지 옵션 선택 후 구매 해 주세요.</strong>
							</div>
							<!-- // 옵션 -->

							<!-- 총 합계금액 // -->
							<div class="totalprice">
								<dl>
									<dt>총 합계금액</dt>
									<dd>300,000원</dd>
								</dl>
							</div>
							<!-- // 총 합계금액 -->
							<!-- btn // -->
							<div class="btn_area">
								<a href="#" class="type1 big btn_buy">구매하기</a>
								<!--<a href="#cartInsert" onclick="UIcartInsert(this);" class="type2 big btn_cart">장바구니</a>-->
								<!-- 품절일때 //
								<a href="#" class="type3 big btn_soldout">SOLD OUT</a>
								 // 품절일때 -->
							</div>
							<!-- // btn -->
						</div>
						<!-- // 상품안내 -->
					</div>
					<!-- // prodetail -->
					<!-- proetc // -->
					<div class="proetc">
						<!-- 함께 구매한 상품 // -->
						<div class="together">
							<h3 class="sti">함께 구매한 상품</h3>
							<div class="prolist small">
								<ul class="ls">
									<li>
										<a href="#">
											<span class="pic"><img src="/avenueCom/images/temp/product160x160.jpg" alt="" /></span>
											<strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
											<span class="txt_price">
												<strong>245,000원</strong>
											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span class="pic"><img src="/avenueCom/images/temp/product160x160.jpg" alt="" /></span>
											<strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
											<span class="txt_price">
												<strong>245,000원</strong>
											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span class="pic"><img src="/avenueCom/images/temp/product160x160.jpg" alt="" /></span>
											<strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
											<span class="txt_price">
												<strong>245,000원</strong>
											</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span class="pic"><img src="/avenueCom/images/temp/product160x160.jpg" alt="" /></span>
											<strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
											<span class="txt_price">
												<strong>245,000원</strong>
											</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- // 함께 구매한 상품 -->
						<!-- 브랜드 정보 // -->
						<div class="brand">
							<h3 class="sti">브랜드 정보</h3>
							<div class="info">
								<span class="pic"><img src="/avenueCom/images/temp/brand140x125.jpg" alt="ETEAQ" /></span>
								<p class="dotdot">ETEAQ는 캄보디아에서 버려 지는 찢어진 그물을 수거하여 가방, 클러치 등 패션 잡화를 생산하며 현지인들에게 건전한 환경의 일자리를 제공하는 기업 입니다.ETEAQ는 캄보디아에서 버려 지는 찢어진 그물을 수거하여 가방, 클러치 등 패션 잡화를 생산하며 현지인들에게 건전한 환경의 일자리를 제공하는 기업 입니다.</p>
								<a href="#" class="btn_brand">브랜드상품 더보기</a>
							</div>
						</div>
						<!-- // 브랜드 정보 -->
					</div>
					<!-- // proetc -->
					<!-- 상품정보 // -->
					<a id="productInfo"></a>
					<!-- protabs // -->
					<div class="protabs">
						<ul>
							<li><a href="#productInfo" data-fn="anchor" class="on">상품정보</a><span class="hide">현재위치</span></li>
							<li><a href="#productPost" data-fn="anchor">상품후기<em>(24)</em></a></li>
							<li><a href="#productDeliver" data-fn="anchor">예매 및 취소 정책</a></li>
						</ul>
					</div>
					<!-- // protabs -->
					<div class="productinfo">
						<!-- 상품기본정보 // -->
						<table>
							<caption>상품기본정보 안내</caption>
							<colgroup>
								<col style="width:30%;"/>
								<col style="width:70%;"/>
							</colgroup>
							<tbody>
								<tr>
									<th>품명 및 모델명</th>
									<td>바라 배쓰 앤 샤워 크림 300mL</td>
								</tr>
								<tr>
									<th>법에 의한 인증,허가</th>
									<td>해당없음</td>
								</tr>
								<tr>
									<th>제조국 또는 원산지</th>
									<td>영국</td>
								</tr>
								<tr>
									<th>제조자</th>
									<td>PENHALIGON'S Ltd</td>
								</tr>
								<tr>
									<th>품질보증기준</th>
									<td>교환/반품/AS안내 참조</td>
								</tr>
								<tr>
									<th>A/S 책임자와 전화번호</th>
									<td>02)555-5152</td>
								</tr>
							</tbody>
						</table>
						<!-- // 상품기본정보 -->
						<!-- 상품상세정보 // -->
						<div class="prodetailinfo">
							<img src="/avenueCom/images/temp/productdetail_1.jpg" alt="" /><br />
							<img src="/avenueCom/images/temp/productdetail_2.jpg" alt="" /><br />
							<img src="/avenueCom/images/temp/productdetail_3.jpg" alt="" /><br />
							<img src="/avenueCom/images/temp/productdetail_4.jpg" alt="" /><br />
							<img src="/avenueCom/images/temp/productdetail_5.jpg" alt="" /><br />
							<img src="/avenueCom/images/temp/productdetail_6.jpg" alt="" /><br />
						</div>
						<!-- // 상품상세정보 -->
					</div>
					<!-- // 상품정보 -->
					<!-- 상품후기 // -->
					<a id="productPost"></a>
					<!-- protabs // -->
					<div class="protabs">
						<ul>
							<li><a href="#productInfo" data-fn="anchor">상품정보</a></li>
							<li><a href="#productPost" data-fn="anchor" class="on">상품후기<em>(24)</em></a><span class="hide">현재위치</span></li>
							<li><a href="#productDeliver" data-fn="anchor">예매 및 취소 정책</a></li>
						</ul>
					</div>
					<!-- // protabs -->
					<div class="productpost">
						<div class="postcon">
							<!-- 만족도 // -->
							<div class="totalpost">
								<h4>만족도<em>총 124개</em></h4>
								<span class="post_icon big"><span style="width:80%;">80점</span></span>
							</div>
							<!-- // 만족도 -->
							<p class="infotxt">언더스탠드에비뉴에서 이 상품을 <br />구매한 회원님들의 상품평입니다.</p>
							<p class="btn_area"><a href="#" class="type4 midium btn_post">상품후기 작성</a></p>
						</div>
						<!-- 상품후기리스트 // -->
						<div class="postlist">
							<ul class="ls">
								<!-- 상품평이 없을때 // -->
								<li class="no_data">첫번째 상품평을 작성해 주세요.</li>
								<!-- //상품평이 없을때 -->

								<li>
									<span class="post_icon small"><span style="width:60%;">60점</span></span>
									<span class="txt_id">kl***</span>
									<span class="txt_date">2015.12.01</span>
									<p>심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다. 심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다. 심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
								</li>
								<li>
									<span class="post_icon small"><span style="width:50%;">50점</span></span>
									<span class="txt_id">kl***</span>
									<span class="txt_date">2015.12.01</span>
									<p>심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
								</li>
								<li>
									<span class="post_icon small"><span style="width:20%;">20점</span></span>
									<span class="txt_id">kl***</span>
									<span class="txt_date">2015.12.01</span>
									<p>심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
								</li>
								<li>
									<span class="post_icon small"><span style="width:100%;">100점</span></span>
									<span class="txt_id">kl***</span>
									<span class="txt_date">2015.12.01</span>
									<p>심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
								</li>
								<li>
									<span class="post_icon small"><span style="width:80%;">80점</span></span>
									<span class="txt_id">kl***</span>
									<span class="txt_date">2015.12.01</span>
									<p>심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
								</li>
							</ul>
							<!-- paging // -->
							<div class="paging">
								<a href="#" class="prev">이전</a>
								<span class="num">
									<a href="#" class="on"><strong>1</strong></a>
									<a href="#">2</a>
									<a href="#">3</a>
								</span>
								<a href="#" class="next">다음</a>
							</div>
							<!-- // paging -->
						</div>
						<!-- // 상품후기리스트 -->
					</div>
					<!-- // 상품후기 -->
					<a id="productDeliver"></a>
					<!-- 배송/교환/환불 정보 // -->
					<!-- protabs // -->
					<div class="protabs">
						<ul>
							<li><a href="#productInfo" data-fn="anchor">상품정보</a></li>
							<li><a href="#productPost" data-fn="anchor">상품후기<em>(24)</em></a></li>
							<li><a href="#productDeliver" data-fn="anchor" class="on">예매 및 취소 정책</a><span class="hide">현재위치</span></li>
						</ul>
					</div>
					<!-- // protabs -->
					<div class="productdeliver">
						<ul>
							<li>
								<h4>예매정책</h4>
								<ol>
									<li>공연 및 전시<br />
										<ul>
											<li>신용카드: 행사 전일 17:00시까지 예매 가능</li>

											<li>가상계좌<br />
												<ul>
													<li>행사 당일 3일 전까지 예매 가능</li>
													<li>예매 후 24시간 이내 미입금 시 예매 자동 취소</li>
												</ul>
											</li>

											<li>기타<br />
												<ul>
													<li>공연 당일 온라인 예매 불가, 현장 구매만 가능</li>
												</ul>
											</li>
										</ul>
									</li>

									<li>
										체험 클래스 및 아카데미 <br />
										<ul>
											<li>최소모집안내<br />
												<ul>
													<li>강의 별 수업진행이 가능한 수강생 최소인원 규정</li>
													<li>강의 시작 이틀 전 폐강여부 결정</li>
													<li>폐강이 결전된 강좌 신청한 분들 개별연락 후 수강 취소 및 환불</li>
												</ul>
											</li>
											<li>신용카드: 강의 3일전까지 예매 가능</li>
											<li>가상계좌<br />
												<ul>
													<li>강의 당일 3일 전까지 예매 가능</li>
													<li>예매 후 24시간 이내 미입금 시 신청 자동 취소</li>
												</ul>
											</li>
											<li>기타<br />
												강의 당일 현장 구매불가
											</li>
										</ul>
									</li>
								</ol>
							</li>

							<li>
								<h4>취소&middot;환불 정책</h4>
								<ol>
									<li>취소 및 환불
										<ul>
											<li>공연 및 전시
												<ul>
													<li>고객센터 전화 또는 1:1 게시판으로 접수 후 처리 가능</li>
													<li>행사 전일 17:00까지 가능, 이후 취소&middot;환불 불가 </li>
													<li>행사 당일 현장 구매 티켓 취소&middot;환불 불가 </li>
												</ul>
											</li>
											<li>체험 클래스 및 아카데미
												<ul>
													<li>고객센터 전화 또는 1:1 게시판으로 접수 후 처리 가능</li>
													<li>취소는 강좌 시작 3일 전까지만 가능, 이후 취소 환불 불가</li>
												</ul>
											</li>
										</ul>
									</li>
									<li>부분취소 및 부분환불
										<ul>
											<li>공연 및 전시
												<ul>
													<li>행사 전일 17:00까지 가능, 이후 취소환불 불가</li>
													<li>전체 예매건 취소 후 재예매</li>
													<li>동일 상품에 대해 일부 변경을 원하는 경우, 기존 예매건 취소 후 재예매</li>
												</ul>
											</li>
											<li>수강 기간이 1개월 이내인 체험클래스 및 아카데미
												<ul>
													<li>강의 당일 3일 전까지 전액 환불</li>
													<li>강의 시간 1/3 지나기 전: 이미 납부한 수강료의 2/3 해당 금액</li>
													<li>강의 시간 1/2 지나기 전: 이미 납부한 수강료의 1/2 해당금액</li>
													<li>강의 시간 1/2 경과 후: 환불 없음 </li>
												</ul>
											</li>
										</ul>
									</li>
								</ol>
							</li>

							<li>
								<h4>취소&middot;환불 수수료</h4>
								<ol>
									<li>공연 및 전시
										<ul>
											<li>행사개최일 7일 전까지 수수료 없이 취소 가능
												<ul>
													<li>카드 결제 시: 전액 취소</li>
													<li>가상계좌 환불 시: 환불계좌 이체 수수료 500원 제외 후 입금</li>
												</ul>
											</li>
											<li>행사전일 6일부터 1일까지 예매 금액의 10% 취소 수수료 발생
												<ul>
													<li>카드 결제 시: 취소 수수료 결제 후 전액 취소</li>
													<li>가상계좌 환불 시: 환불계좌 이체 수수료 500원과 취소수수료 제외 후 입금</li>
												</ul>
											</li>
										</ul>
									</li>
									<li>체험클래스 및 아카데미
										<ul>
											<li>강의 당일 7일전까지 수수료 없이 취소 가능</li>
											<li>강의전일 6일부터 3일까지 수강금액의 10% 취소 수수료 발생
												<ul>
													<li>카드 결제 시: 취소수수료 결제 후 전액 취소</li>
													<li>가상계좌 환불 시: 환불계좌 이체수수료 500원과 취소수수료 제외 후 입금</li>
												</ul>
											</li>
										</ul>
									</li>
								</ol>
							</li>
						</ul>
					</div>
					<!-- // 배송/교환/환불 정보 -->

					<!-- 쿠폰다운 팝업 2016-03-14 : 추가 // -->
					<div id="download_coupon" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">쿠폰 다운로드</h2>

							<div class="popup_content">
								<form name="form">
									<fieldset>
										<legend>쿠폰 다운로드</legend>

										<table>
												<caption></caption>

												<colgroup>
														<col style="width:290px;"/>
														<col style="width:145px;"/>
														<col style="width:145px;"/>
												</colgroup>

												<thead>
													<tr>
															<th scope="col">쿠폰명</th>
															<th scope="col">혜택</th>
															<th scope="col">다운로드</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td colspan="3" class="list">
															<div>
																<table>
																	<caption>상품 쿠폰 리스트</caption>

																	<colgroup>
																		<col style="width:256px;" />
																		<col style="width:216px;" />
																		<col style="width:108px;" />
																	</colgroup>
																	<!-- 반복영역 // -->
																	<tr>
																		<td>Foix scarf 할인쿠폰</td>
																		<td data-fn="price">100000원</td>
																		<td>
																			<div class="btn_area">
																				<a href="#" class="small type1 btn_download">다운로드</a>
																			</div>
																		</td>
																	</tr>
																	<!-- // 반복영역 -->

																	<tr>
																		<td>Foix scarf 할인쿠폰</td>
																		<td data-fn="price">100000원</td>
																		<td>
																			<div class="btn_area">
																				<a href="#" class="small type1 btn_download">다운로드</a>
																			</div>
																		</td>
																	</tr>

																	<tr>
																		<td>Foix scarf 할인쿠폰</td>
																		<td data-fn="price">100000원</td>
																		<td>
																			<div class="btn_area">
																				<a href="#" class="small type1 btn_download">다운로드</a>
																			</div>
																		</td>
																	</tr>

																	<tr>
																		<td>Foix scarf 할인쿠폰</td>
																		<td data-fn="price">100000원</td>
																		<td>
																			<div class="btn_area">
																				<a href="#" class="small type1 btn_download">다운로드</a>
																			</div>
																		</td>
																	</tr>

																	<tr>
																		<td>Foix scarf 할인쿠폰</td>
																		<td data-fn="price">100000원</td>
																		<td>
																			<div class="btn_area">
																				<a href="#" class="small type1 btn_download">다운로드</a>
																			</div>
																		</td>
																	</tr>
																</table>
															</div>
														</td>
													</tr>
												</tbody>
										</table>

										<p>쿠폰 발급내역 및 사용조건은 “MY PAGE > WALKSHOP > 쿠폰”에서 확인 가능합니다.</p>
										<p>상품 쿠폰은 중복 사용이 불가능합니다. 쿠폰은 주문서에서 적용해 주세요.</p>

										<div class="btn_area">
											<button type="button" class="midium type1 btn_all_download">전체 다운로드</button>
											<button type="button" class="midium type2 btn_cancel" data-fn="popupBtnClose" onclick="couponClose()">취소</button>
										</div>
									</fieldset>
								</form>

								<button type="button" class="btn_close" data-fn="popupBtnClose" onclick="couponClose()">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 쿠폰다운 팝업 2016-03-14 : 추가 -->

					<script>
					function couponOpen() {
						alert('팝업 오픈');
					}

					function couponClose() {
						alert('팝업 클로즈');
					}
					</script>

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
