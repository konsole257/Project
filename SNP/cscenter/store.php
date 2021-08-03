<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "CS CENTER";
	$path2Tit = "국내 공식 판매처";
	$path1Href = "/cscenter/noticeList.php";
	$path2Href = "/cscenter/store.php";
	$pageClass = "cscenter store";
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
					<a href="/cscenter/faq.php">FAQ</a>
					<a href="/cscenter/store.php" class="active">국내 공식 판매처</a>
					<a href="/cscenter/location.php">찾아오시는 길</a>
				</div>

				<!-- offline // -->
				<div class="list">
					<h3>OFFLINE SHOP <small>* 오프라인 매장별/지점별 <br>입점품목은 상이할 수 있습니다.</small></h3>
					<ul>
						<li><span class="oliveyoung">올리브영</span></li>
						<li><span class="lalavla">랄라블라</span></li>
						<li><span class="lohb">롭스</span></li>
						<li><span class="lottemart">롯데마트</span></li>
						<li><span class="homeplus">홈플러스</span></li>
						<li><span class="allmask">올마스크</span></li>
						<li><span class="boots">Boots</span></li><!-- 2019.02.22 : 수정 -->
						<li><span class="elcube">엘큐브</span></li>
						<li><span class="emart">이마트</span></li>
					</ul>
				</div>
				<!-- // offline -->

				<!-- online // -->
				<div class="list">
					<h3>ONLINE SHOP</h3>
					<ul>
						<li><span class="lotte">롯데닷컴</span></li>
						<li><span class="ssg">SSG닷컴</span></li>
						<li><span class="hmall">현대홈쇼핑</span></li>
						<li><span class="immall">공영홈쇼핑</span></li>
						<li><span class="gmarket">G마켓</span></li>
						<li><span class="auction">옥션</span></li>
						<li><span class="cj">CJ오쇼핑</span></li>
						<li><span class="ak">AK몰</span></li>
						<li><span class="gs">GS샵</span></li>
						<li><span class="sk11st">11번가</span></li>
						<li><span class="interpark">인터파크</span></li>
						<li><span class="kakao">카카오</span></li>
						<li><span class="lotteimall">롯데i몰</span></li>
						<li><span class="nsmall">NS몰</span></li>
						<li><span class="hnsmall">홈앤쇼핑</span></li>
						<li><span class="wemakeprice">위메프</span></li>
						<li><span class="tmon">티몬</span></li>
						<li><span class="coupang">쿠팡</span></li>
					</ul>
				</div>
				<!-- // online -->
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
