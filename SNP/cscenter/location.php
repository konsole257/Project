<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "CS CENTER";
	$path2Tit = "찾아오시는 길";
	$path1Href = "/cscenter/noticeList.php";
	$path2Href = "/cscenter/location.php";
	$pageClass = "cscenter location";
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
					<a href="/cscenter/store.php">국내 공식 판매처</a>
					<a href="/cscenter/location.php" class="active">찾아오시는 길</a>
				</div>

				<!-- 본사 // -->
				<div class="mapinfo">
					<h3>본사</h3>
					<ul>
						<li>
							<strong>주소</strong>
							서울특별시 강서구 공항대로 61길 29, 서울신기술창업센터 C동 301호
						</li>
						<li>
							<strong>TEL</strong>
							02-583-1846
						</li>
						<li>
							<strong>FAX</strong>
							02-587-1846
						</li>
						<li>
							<strong>E-mail</strong>
							snpcos@sdbiotech.co.kr
						</li>
						<li>
							<br>
							지하철  9호선 등촌역 2번출구 (100m 이동)<br>
							버스  등촌중학교, 백석초등학교 정류장 (700m 이동)
						</li>
					</ul>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5319.768901836246!2d126.8654032280049!3d37.551446813908065!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9c02d99af03d%3A0x914727f10772f554!2z7ISc7Jq47Iug6riw7Iig7LC97JeF7IS87YSw!5e0!3m2!1sko!2skr!4v1547699473683" width="656" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
				<!-- // 본사 -->

				<!-- 영업본부 // -->
				<div class="mapinfo">
					<h3>영업본부</h3>
					<ul>
						<li>
							<strong>주소</strong>
							서울특별시 강서구 공항대로 535, 6층
						</li>
						<li>
							<strong>TEL</strong>
							02-583-1846
						</li>
						<li>
							<strong>FAX</strong>
							070-7427-1846
						</li>
						<li>
							<strong>E-mail</strong>
							snpcos@sdbiotech.co.kr
						</li>
						<li>
							<br>
							지하철  9호선 등촌역 2번출구 (100m 이동)<br>
							버스  등촌중학교, 백석초등학교 정류장 (700m 이동)
						</li>
					</ul>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6326.3424929331595!2d126.86137836721082!3d37.55102899990008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9c1d242f9417%3A0x697ed002060469a0!2z7ISc7Jq47Yq567OE7IucIOqwleyEnOq1rCDsl7zssL3rj5kg6rO17ZWt64yA66GcIDUzNQ!5e0!3m2!1sko!2skr!4v1547699504283" width="656" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
				<!-- // 영업본부 -->
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
