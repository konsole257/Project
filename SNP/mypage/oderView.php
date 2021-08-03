<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "주문배송 조회";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/oderList.php";
	$pageClass = "mypage oder";
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
					<a href="/mypage/oderList.php" class="active">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<div class="order-step">
					<div class="active"><span>주문<br>접수</span></div>
					<div><span>결제<br>완료</span></div>
					<div><span>상품<br>준비중</span></div>
					<div><span>출고<br>완료</span></div>
					<div><span>배송중</span></div>
					<div><span>배송<br>완료</span></div>
				</div>

				<!-- view // -->
				<div class="order-view">
					<div class="left-area">
						<!-- 주문상품 // -->
						<div class="orderproduct">
							<h3>주문번호<span>201901171235750S45GWA</span></h3>
							<table class="orderpls">
								<caption class="hide">주문상품 목록</caption>
								<colgroup>
									<col style="width:180px">
									<col>
									<col style="width:74px">
									<col style="width:135px">
								</colgroup>

								<thead>
									<tr>
										<th colspan="2">상품정보</th>
										<th>수량</th>
										<th>가격</th>
									</tr>
								</thead>

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
							<h3>주문자 정보</h3>
							<table class="tbl-type2">
								<caption class="hide">주문자 정보 목록</caption>
								<colgroup>
									<col style="width:170px;">
									<col>
								</colgroup>

								<tbody>
									<tr>
										<th>이름</th>
										<td>박보검</td>
									</tr>
									<tr>
										<th>휴대폰 번호</th>
										<td>010 - 1234 - 5678</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>abcdefg12345@naver.com</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- // 주문자 정보 -->

						<!-- 배송지 정보 // -->
						<div class="deliveryinfo">
							<h3>배송지 정보</h3>
							<table class="tbl-type2">
								<caption class="hide">배송지 정보 목록</caption>
								<colgroup>
									<col style="width:170px;">
									<col>
								</colgroup>

								<tbody>
									<tr>
										<th>수령자명</th>
										<td>박보검</td>
									</tr>
									<tr>
										<th>휴대폰 번호</th>
										<td>010 - 1234 - 5678</td>
									</tr>
									<tr>
										<th>주소</th>
										<td>(382-134) 서울특별시 강서구 공항대로 61길 29</td>
									</tr>
									<tr>
										<th>배송시 요청사항</th>
										<td>부재 시 경비실에 맡겨주세요.</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- // 배송지 정보 -->

						<!-- 2019.03.15 : 2019.04.11 : 수정 // -->
						<!-- 안내문구 // -->
						<div class="infoarea">
							<strong class="tit-txt">취소/교환/반품 안내</strong>
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

					<div class="right-area">
						<!-- 총 상품금액 // -->
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
								<strong>- 등급할인</strong>
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
						<!-- // 총 상품금액 -->

						<!-- 총 결제 금액 // -->
						<div class="txt-orderprice">
							<ul>
								<li class="txt-total">
									<strong>총 결제 금액</strong>
									<span><em>3,121,000</em>원</span>
								</li>
								<li class="txt-point">
									<strong>적립 예정 포인트</strong>
									<span><em>3,200</em>P</span>
								</li>
							</ul>
						</div>
						<!-- // 총 결제 금액 -->

						<!-- 결제수단 : 2019.05.22 : 수정 // -->
						<div class="paydiv">
							<p>결제수단 - 가상계좌</p>

							<dl>
								<dt>예금주</dt>
								<dd>에스디생명공학</dd>
								<dt>입금계좌</dt>
								<dd>농협중앙회 79014507491901</dd>
								<dt>입금기한</dt>
								<dd><span>2019.04.30 23:59:59</span></dd>
							</dl>
						</div>
						<!-- // 결제수단 -->

						<!-- btn // -->
						<div class="btn-area">
							<a href="#" class="btn fill black">주문취소</a>
						</div>
						<!-- // btn -->
					</div>
				</div>
				<!-- // view -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
