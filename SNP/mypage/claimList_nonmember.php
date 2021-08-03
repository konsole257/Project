<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "비회원 주문 조회";
	$path2Tit = "취소/교환/반품 조회";
	$path1Href = "";
	$path2Href = "/mypage/claimList_nonmember.php";
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
				<h2 class="tit ko"><?= $path1Tit ?></h2> <!-- 비회원 국문 텍스트 일때 class="ko" 추가 -->

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<div class="tab-menu">
					<a href="/mypage/oderList.php">주문배송 조회</a>
					<a href="/mypage/claimList_history.php" class="active">취소/교환/반품 조회</a>
				</div>

				<!-- 2019.04.11 : 삭제
				<div class="myinfo-box">
					<div class="info-txt">
						<p>고객 단순 변심에 의한 교환/반품은 고객님께서 교환/반품 왕복 배송비 5,000원을 부담하셔야 합니다. (상품 결함,배송 오류 제외)</p>
						<p>도서/산간/오지 지역의 경우 교환/반품 배송비를 추가로 부담하셔야 합니다.</p>
						<p>교환/반품 기간 : 상품 수령 후 7일 이내에 1:1상담문의, CS센터, 마이페이지를 통해 신청해주세요.</p>
						<p>교환/반품 시 환불 : 교환/반품 신청 시 상품 수거/확인 후 환불 및 교환이 이루어집니다.</p>
						<p>교환/반품 불가 : 개봉/사용 후에는 제품 불량의 경우를 제외하고 교한/반품 기간 이내라도 교환이나 반품이 되지 않습니다.</p>
						<p>교환 배송 방법 : 택배 기사 맞교환 형식으로 이루어집니다.</p>
						<p>가상 계좌/무통장 입금 자동 주문취소 : 주문 후 24시간 이내에 입금되지 않는 경우 주문 자동 취소됩니다.</p>
					</div>
				</div>
				-->

				<!-- sub tab // -->
				<div class="tab-menu sub">
					<!-- 2019.03.15// -->
					<a href="#">신청내역</a>
					<a href="#" class="active">취소/교환/반품 신청</a>
					<!-- //2019.03.15 -->
				</div>
				<!-- // sub tab -->

				<!-- list // -->
				<table class="tbl-type1">
					<caption class="hide">취소/교환/반품 조회 목록</caption>
					<colgroup>
						<col style="width:140px;">
						<col style="width:237px;">
						<col>
						<col style="width:143px;">
						<col style="width:143px;">
					</colgroup>
					<thead>
						<tr>
							<th>주문일</th>
							<th>주문번호</th>
							<th>상품정보</th>
							<th>결제금액</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
<!-- 2019.03.15 : 버튼 삭제// -->
						<tr>
							<td>2019.01.16</td>
							<td><a href="#">201901171235750S45GWA</a></td>
							<td><a href="#">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</a></td>
							<td>85,000원</td>
							<td class="state">
								<span class="bold">출고완료</span>
							</td>
						</tr>
<!-- //2019.03.15 : 버튼 삭제 -->
					</tbody>
				</table>
				<!-- // list -->
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
