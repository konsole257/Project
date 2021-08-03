<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "CS CENTER";
	$path2Tit = "FAQ";
	$path1Href = "/cscenter/noticeList.php";
	$path2Href = "/cscenter/faq.php";
	$pageClass = "cscenter faq";
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
					<a href="/cscenter/noticeList.php">공지사항</a>
					<a href="/cscenter/faq.php" class="active">FAQ</a>
					<a href="/cscenter/store.php">국내 공식 판매처</a>
					<a href="/cscenter/location.php">찾아오시는 길</a>
				</div>

				<!-- search // -->
				<form class="search-area">
					<fieldset>
						<legend class="hide">검색</legend>
						<input type="text" placeholder="검색어를 입력하세요." title="검색어 입력">
						<button type="button" class="btn btn-search" onclick="fn.popupOpen('#popSearchAlert');">검색</button>
					</fieldset>
				</form>
				<!-- // search -->

				<!-- faq tab // -->
				<div class="tab-menu faq">
					<a href="/cscenter/faq.php" class="active">전체</a>
					<a href="/cscenter/faq.php">회원/가입</a>
					<a href="/cscenter/faq.php">배송</a>
					<a href="/cscenter/faq.php">주문/결제</a>
					<a href="/cscenter/faq.php">상품</a>
					<a href="/cscenter/faq.php">취소/교환/반품</a>
					<a href="/cscenter/faq.php">적립급/쿠폰 </a>
					<a href="/cscenter/faq.php">기타</a>
				</div>
				<!-- // faq tab -->

				<!-- list // -->
				<ul class="list">
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>회원/가입</em>
							<strong>회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다. 고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>최소/교환/반품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>상품</em>
							<strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
						</a>
						<div class="acont">
							회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
							인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
							<br>
							고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>
						</div>
					</li>
				</ul>
				<!-- // list -->

				<!-- pagination // -->
				<div class="pagination">
					<a href="#" class="btn-first">처음</a>
					<a href="#" class="btn-prev">이전</a>
					<span class="num">
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn-next">다음</a>
					<a href="#" class="btn-last">끝</a>
				</div>
				<!-- // pagination -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 검색어와 일치하는 내용이 없음 // -->
	<div id="popSearchAlert" class="alert guide-alert">
		<div class="inner">
			<div class="contents">
				검색어와 일치하는 내용이 없습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 검색어와 일치하는 내용이 없음 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
