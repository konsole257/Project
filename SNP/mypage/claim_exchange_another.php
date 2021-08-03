<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "취소/교환/반품 조회";
	$path3Tit = "교환/반품";
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
							<td>무통장 입금</td>
							<td class="state">
								<span>배송완료</span>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- // list -->

				<form class="form-area">
					<fieldset>
						<legend>교환/반품 정보</legend>

						<div class="input-area">
							<div>
								<div>
									<span class="field-tit require">신청 유형</span>
									<span class="field-input type">
										<span class="inner">
											<label><input type="radio" name="type" checked><span>교환</span></label>
											<label><input type="radio" name="type"><span>반품</span></label>
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit require">구분</span>
									<span class="field-input">
										<span class="inner">
											<span class="select">
												<select title="구분 선택">
													<option>선택해주세요.</option>
													<option>상품 결함</option>
													<option>단순 변심</option>
													<option>상품상세 정보와 상이함</option>
													<option>다른 상품 잘못 주문</option>
													<option>배송 오류</option>
													<option>기타</option>
												</select>
											</span>
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit require">교환/반품 사유</span>
									<span class="field-input">
										<span class="inner">
											<textarea title="입력"></textarea>
										</span>
									</span>
								</div>
							</div>

							<!-- 2019.03.14 : 수정 // -->
							<div>
								<div>
									<span class="field-tit require">반송 정보</span>
									<span class="field-input return">
										<span class="inner">
											<label><input type="radio" name="return" checked><span>지정택배</span></label>
											<label><input type="radio" name="return"><span>타 택배</span></label>
										</span>
									</span>
								</div>
							</div>
							<!-- // 2019.03.14 : 수정 -->

							<!-- 타택배 : 2019.03.14 : 추가 // -->
							<div class="another">
								<div>
									<span class="field-tit require">택배사</span>
									<span class="field-input">
										<span class="inner">
											<input type="text" title="택배사 입력">
										</span>
									</span>
								</div>
							</div>

							<div class="another">
								<div>
									<span class="field-tit require">송장번호</span>
									<span class="field-input">
										<span class="inner">
											<input type="text" title="송장번호 입력">
										</span>
									</span>
								</div>
							</div>
							<!-- // 타택배 : 2019.03.14 : 추가 -->
						</div>
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

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
