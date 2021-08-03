<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="workplace";
	String path4="doodle";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="ABOUT";
	String path4tit="소개";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="youth">
		<div class="workplace doodle">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/doodle.jsp">Work Place</a>
						<a href="/youth/doodle.jsp"><strong>Doodle Shop</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Work Place</h2>
					<p class="con_tit_txt">꿈이 실현되는 일터</p>

			          <%-- <p class="txt1">
			            YOUTH STAND의 청소년은 애완동물관리, 네일아트, 바리스타, 베이커리, 매장접객서비스 등<br>
			            직업의 재능과 관심에 따라 필요한 전문 역량을 일터 현장에서 키워가고 있습니다.
			          </p> --%>

					<div class="img_area">
						<img src="/avenueCom/images/sub/youth_doodle_img.gif" alt="">
					</div>

					<div class="txt2_area">
						<p class="txt2">
							<strong>Doodle Shop(두들샵-펫샵)</strong>
							반려견과의 행복한 생활을 두들샵과 함께 만들어가세요.<br><br>

							두들숍은 서울숲 산책길에 나서는 반려견과 반려인을 위한 다양한 용품과<br>
							건강한 먹거리, 미용서비스를 제공합니다.
						</p>

						<dl>
							<dt>영업시간</dt>
							<dd>월~일  11:00~21:00</dd>

							<dt>제공서비스</dt>
							<dd>애완동물 용품, 미용 서비스, 호텔 · 놀이방 서비스</dd>

							<dt>연락처</dt>
							<dd>02-2135-8186 / <span class="insta">@doodleshop_seoul <a href="http://www.instagram.com/doodleshop_seoul" target="_blank">바로가기</a></span> </dd>

							<dt>위치</dt>
							<dd>언더스탠드에비뉴 16호<br></dd>
						</dl>
						<p class="txt3">※미용서비스의 경우 예약제로 운영되고 있사오니 이 점 양해 부탁 드립니다.</p>
					</div>

					<div class="img_area img2">
						<img src="/avenueCom/images/sub/youth_doodle_img2.gif" alt="">
					</div>
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
