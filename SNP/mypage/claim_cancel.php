<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "취소/교환/반품 조회";
	$path3Tit = "주문취소";
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
							<td>현금결제</td>
							<td class="state">
								<span>주문접수</span>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- // list -->

				<form class="form-area">
					<fieldset>
						<legend>취소 정보</legend>

						<!-- 2019.03.14 : 수정 // -->
						<div class="input-area">
							<div>
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
						</div>
						<!-- // 2019.03.14 : 수정 -->

					</fieldset>

					<div class="btn-area">
						<button type="button" class="btn big stroke gray">취소</button>
						<button type="button" class="btn big fill black">신청하기</button>
					</div>
				</form>

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
