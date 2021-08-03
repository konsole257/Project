<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "취소/교환/반품 조회";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/claimList.php";
	$pageClass = "mypage claim";
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
					<a href="/mypage/claimList_history.php" class="active">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- view // -->
				<div class="order-view reject"> <!-- 주문취소 거절 상세 class="reject" 추가 -->
					<div class="left-area">
						<!-- 주문상품 // -->
						<div class="orderproduct">
							<h3>
								주문번호<span>201901171235750S45GWA</span>
								<div class="delivery">운송장번호<span>306064007852</span><a href="#" class="btn smaller fill black">배송 조회</a></div>
							</h3>
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
						<!-- // 주문자 정보 -->

						<!-- 취소 정보 // -->
						<div class="cancalinfo">
							<h3>취소 정보</h3>
							<table class="tbl-type2">
								<caption class="hide">취소 정보 목록</caption>
								<colgroup>
									<col style="width:170px;">
									<col>
								</colgroup>

								<tbody>
									<tr>
										<th>취소 구분</th>
										<td>단순 변심</td>
									</tr>
									<tr>
										<th>취소 사유</th>
										<td>다른게 가지고 싶어졌어요.</td>
									</tr>
									<tr>
										<th>환불 계좌</th>
										<td>(382-134) 서울특별시 강서구 공항대로 61길 29</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- // 취소 정보 -->
					</div>

					<div class="right-area">
						<div class="state">주문취소 거절</div>

						<!-- 총 상품금액 // -->
						<ul>
							<li class="txt-totprice">
								<strong>총 상품금액</strong>
								<em>135,000원</em>
							</li>
							<li>
								<strong>- 일반할인</strong>
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

						<!-- 결제수단 // -->
						<div class="paydiv">
							결제수단 - 신용카드(현대)
						</div>
						<!-- // 결제수단 -->

						<!-- 교환/반품 신청 : 추가 : 2019.03.14 // -->
						<button type="button" class="btn big fill black btn-request">교환/반품 신청</button>
						<!-- // 교환/반품 신청 -->

						<!-- 안내문구 // -->
						<div class="infoarea">
							<strong class="tit-txt">취소/교환/반품 안내</strong>
							<div class="info-txt">
								<p>고객 단순 변심에 의한 교환/반품은 고객님께서 교환/반품 왕복 배송비 5,000원을 부담하셔야 합니다. (제품 하자,배송 오류 제외)</p>
								<p>도서/산간/오지 지역의 경우 교환/반품 배송비를 추가로 부담하셔야 합니다.</p>
								<p>교환/반품 기간 : 상품 수령 후 7일 이내에 1:1상담문의, CS센터, 마이페이지를 통해 신청해주세요.</p>
								<p>교환/반품 시 환불 : 교환/반품 신청 시 상품 수거/확인 후 환불 및 교환이 이루어집니다.</p>
								<p>교환/반품 불가 : 개봉/사용 후에는 제품 불량의 경우를 제외하고 교한/반품 기간 이내라도 교환이나 반품이 되지 않습니다.</p>
								<p>교환 배송 방법 : 택배 기사 맞교환 형식으로 이루어집니다.</p>
								<p>가상 계좌/무통장 입금 자동 주문취소 : 주문 후 24시간 이내에 입금되지 않는 경우 주문 자동 취소됩니다.</p>
							</div>
						</div>
						<!-- // 안내문구 -->
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
