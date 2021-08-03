<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "비회원 주문 조회";
	$path2Tit = "주문배송 조회";
	$path1Href = "";
	$path2Href = "/mypage/oderList_nonmember.php";
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
				<h2 class="tit ko"><?= $path1Tit ?></h2> <!-- 비회원 국문 텍스트 일때 class="ko" 추가 -->

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<div class="tab-menu">
					<a href="/mypage/oderList.php" class="active">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
				</div>

				<div class="myinfo-box">
					<!-- 2019.03.14 : 수정 // -->
					<ul class="state">
						<li class="active"><!-- 활성화 class="active"-->
							<a href="#">
								<span>입금/결제</span>
								<strong>1</strong>
							</a>
						</li>
						<li>
							<a href="#">
								<span>출고완료</span>
								<strong>0</strong>
							</a>
						</li>
						<li class="active">
							<a href="#">
								<span>배송중</span>
								<strong>1</strong>
							</a>
						</li>
					</ul>
					<!-- // 2019.03.14 : 수정 -->
					
					<!-- 2019.03.29 : 수정 // -->
					<div class="info-txt">
						<p>주문번호를 클릭하시면 주문 상세내역을 확인하실 수 있습니다.</p>
						<p>가상 계좌/무통장 결제는 주문 후 24시간 이내 미입금 시 자동 취소됩니다.</p>
						<p>주문 취소/교환/반품은 주문내역 상세 및 취소/교환/반품 조회 화면에서 신청 가능합니다.</p>
					</div>
					<!-- // 2019.03.29 : 수정 -->
				</div>

				<!-- list // -->
				<table class="tbl-type1">
					<caption class="hide">주문배송 조회 목록</caption>
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
						<tr>
							<td>2019.01.16</td>
							<td><a href="#">201901171235750S45GWA</a></td>
							<td><a href="#">히든랩 브랜 뉴 마그네틱 클렌저 외 3개</a></td>
							<td>85,000원</td>
							<td class="state">
								<span>출고완료</span>
							</td>
						</tr>
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
