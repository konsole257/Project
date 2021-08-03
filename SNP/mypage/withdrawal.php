<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "회원 탈퇴";
	$path2Tit = "";
	$path1Href = "/mypage/withdrawal.php";
	$path2Href = "";
	$pageClass = "mypage withdrawal";
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
				<div class="cont-area">
					<h3>그동안 SNP화장품을 이용해주셔서 감사합니다. <small>회원탈퇴 전 다음 사항을 숙지하여 주시기 바랍니다.</small></h3>

					<div class="total-point">
						보유 포인트<strong>16,000P</strong>
					</div>

					<form class="form-area">
						<fieldset>
							<legend class="hide">탈퇴 사유</legend>

							<div class="input-area">
								<div>
									<div>
										<span class="field-tit">탈퇴 사유</span>
										<span class="field-input">
											<!-- 2019.03.12 : 수정 // -->
											<span class="inner">
												<label><input type="checkbox" name="reason" checked><span>아이디 및 비밀번호를 수정하기 위해</span></label>
												<label><input type="checkbox" name="reason"><span>주문 및 기타 서비스 문의 시 불만족하여</span></label>
												<label><input type="checkbox" name="reason"><span>주문결제 시 서비스 이용이 불편해서</span></label>
												<label><input type="checkbox" name="reason"><span>상품주문 후 배송이 느려서</span></label>
												<div><label><input type="checkbox" name="reason"><span>기타</span></label><input type="text" placeholder="직접입력" title="직접입력"></div>
											</span>
											<!-- // 2019.03.12 : 수정 -->
										</span>
									</div>
								</div>
							</div>
						</fieldset>

						<!-- 안내문구 : 2019.03.29 : 수정 // -->
						<div class="infoarea">
							<div class="info-txt">
								<p>회원 탈퇴 진행시 포인트, 쿠폰 등 모든 혜택이 소멸되며 다시 복원되지 않습니다.</p>
								<p>탈퇴하신 아이디로 재가입은 불가능하여, 탈퇴 시점에 참여하신 이벤트가 있을 경우 당첨 무효 처리됩니다.</p>
								<p>작성하신 리뷰와 문의는 자동으로 삭제 처리되지 않기 때문에 탈퇴 전 직접 삭제를 하시거나고객센터 0505-864-1846로 연락 주시기 바랍니다. (탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 없기 때문에 삭제 요청을 주셔도 처리가 불가능합니다.)</p>

							</div>
						</div>
						<!-- // 안내문구 -->

						<div class="btn-area">
							<button type="button" class="btn big stroke gray">탈퇴 취소</button>
							<button type="button" class="btn big fill black" onclick="fn.popupOpen('#complete-withdrawal');">회원탈퇴</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 탈퇴 완료 // -->
	<div id="complete-withdrawal" class="alert">
		<div class="inner">
			<div class="contents">
				탈퇴가 정상적으로 이루어졌습니다.<br>그동안 SNP화장품을 이용해주셔서 감사합니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 탈퇴 완료 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
