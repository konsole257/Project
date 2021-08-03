<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="product";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="CLOTHING";
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
		<div class="product detail">

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
								<li><img src="/avenueCom/images/temp/product670x670.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/product670x670_2.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/product670x670.jpg" alt="" /></li>
								<li><img src="/avenueCom/images/temp/product670x670_2.jpg" alt="" /></li>
							</ul>
							<span class="shop_icon big">
								<span class="icon_new">NEW</span>
								<span class="icon_best">BEST</span>
								<span class="icon_md">MD's pick</span>
							</span>
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
									<dd>
										2,500원
										<a href="#questionpopup" class="btn_question" data-fn="qpopupBtnOpen" title="배송비? 화면 열림">배송비?</a>
										<!-- 배송비? Layer // -->
										<div id="questionpopup" class="questionpopup" data-ui="qpopup">
											<section class="popup_inner">
												<div class="popup_content">
													<ul>
														<li>3만원 이상 구매시 무료배송</li>
														<li>도서산간 추가배송비</li>
													</ul>
													<table>
														<caption>배송비 안내</caption>
														<colgroup>
															<col style="width:50%;"/>
															<col style="width:50%;"/>
														</colgroup>
														<tbody>
															<tr>
																<th>제주지역</th>
																<td>3,000원</td>
															</tr>
															<tr>
																<th>도서산간지역</th>
																<td>~ 8,000원</td>
															</tr>
														</tbody>
													</table>
													<button type="button" class="btn_close" data-fn="qpopupBtnClose">닫기</button>
												</div>
											</section>
										</div>
										<!-- // 배송비? Layer -->
									</dd>
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
							</div>
							<!-- // 옵션 -->

							<!-- 옵션이 없는경우 // -->
							<div class="no_option">
								<strong>Grey</strong>
								<div class="btn">
									<span class="quantity">
										<input title="수량" id="optionvalue1" type="text" value="1">
										<a class="btn_plus">수량 +</a>
										<a class="btn_minus">수량 -</a>
									</span>
								</div>
							</div>
							<!-- // 옵션이 없는경우 -->

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
								<a href="#cartInsert" onclick="UIcartInsert('cartInsert');" class="type2 big btn_cart">장바구니</a>
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
							<li><a href="#productInfo" class="on" data-fn="anchor">상품정보</a><span class="hide">현재위치</span></li>
							<li><a href="#productPost" data-fn="anchor">상품후기<em>(24)</em></a></li>
							<li><a href="#productDeliver" data-fn="anchor">배송/교환/환불 정보</a></li>
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
							<li><a href="#productPost" class="on" data-fn="anchor">상품후기<em>(24)</em></a><span class="hide">현재위치</span></li>
							<li><a href="#productDeliver" data-fn="anchor">배송/교환/환불 정보</a></li>
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
							<li><a href="#productDeliver" class="on" data-fn="anchor">배송/교환/환불 정보</a><span class="hide">현재위치</span></li>
						</ul>
					</div>
					<!-- // protabs -->
					<div class="productdeliver">
						<ul>
							<li>
								<h4>배송안내</h4>
								<ol>
									<li>배송방법 - 택배(이외 배송방법은 상품설명에 고지)</li>
									<li>배송지역 - 전국</li>
									<li>
										배송비<br />
										<ul>
											<li>3만원 미만 주문 시 2,500원/3만원 이상 주문 시 무료배송</li>
											<li>배송 지역에 따라 배송비가 추가 발생할 수 있으니 양해바랍니다.</li>
										</ul>
									</li>
									<li>
										배송기간<br />
										<ul>
											<li>상품 구매 후 2~5일 이내 배송(영업일 기준)</li>
											<li>포장 및 각인 서비스 신청 시 : 포장 및 각인 서비스 당 1~2일 추가 소요</li>
											<li>개별 주문제작 상품, 상품의 재고 상황 및 지역과 운송업체(택배사 등)에 따라 배송기일이 다소 지연될 수 있으니 양해바랍니다.</li>
										</ul>
										*단, 상품설명에 업체별 배송/교환/반품/AS 관련 안내가 별도로 기재된 경우, 업체가 규정한 내용이 우선 적용됩니다.
									</li>
								</ol>
							</li>
							<li>
								<h4>교환/반품/환불<br />기준</h4>
								<ol>
									<li>교환 및 반품은 상품 수령 후 7일 이내 가능</li>
									<li>단, 상품의 내용이 표시/광고와 다른 경우 상품 수령일로부터 3개월, 인지시점부터 30일 이내 가능</li>
									<li>제품 불량이 아닌 고객 단순변심 및 착오구매의 경우, 구매상품에 대한 왕복 택배비는 고객 부담임</li>
									<li>교환 및 반품 시 택배사는 2~3일 이내(영업일 기준) 방문 수거함</li>
									<li>상품 구매 후, 가격 변동으로 인한 반품 및 가격 보상 불가</li>
									<li>교환/반품 시, 교환/반품 상품이 도착한 후에 상품교환/결제취소 가능</li>
									<li>협력사의 사정에 따라 주문 후 품절이 발생할 수 있으며 이 경우 환불 가능하오니 이점 양해바랍니다.</li>
									<li>환불이 지연될 경우, 지연에 따른 배상금은 지급 가능하며 배상금 지급의 구체적 조건 및 절차는 ‘전자상거래 등에서의 소비자보호에 관한 법률’에 따름</li>
								</ol>
							</li>
							<li>
								<h4>교환/반품/환불<br />불가기준</h4>
								<ol>
									<li>반품 및 교환 요청 기간이 경과한 경우</li>
									<li>고객의 책임 있는 사유로 제품이 훼손된 경우</li>
									<li>상품 사용 및 소비, 시간의 경과에 따라 상품가치가 현저히 감소한 경우</li>
									<li>배송된 상품이 하자가 없음을 확인 후 설치/조립한 경우(가전, 가구, 조명, 자전거, 캠핑용품 등)</li>
									<li>포장 봉인 해제 시 반품 불가가 공지된 복제 가능한 제품 등(도서, 가전 등)</li>
									<li>구매 상품의 구성품이 누락된 경우(가전제품의 부속품, 사은품 등)</li>
									<li>고객님의 요청에 따라 주문 제작된 상품의 경우</li>
									<li>상품 사용 시 상품설명에 기재된 주의사항을 지키지 않은 경우</li>
									<li>상품택을 파손 및 분실했을 경우</li>
									<li>반품 택, 혹은 홀로그램 부착을 제거한 경우</li>
									<li>기타(전자상거래 소비자보호 관련 법률이 정하는 청약철회 제한사유에 해당하는 경우)</li>
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
