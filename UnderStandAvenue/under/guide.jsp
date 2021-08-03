<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="guide";
  String path3="";
  String path4="";
	String path1tit="ABOUT";
	String path2tit="소개";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="under">

		<div class="guide">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_under.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/under/about.jsp">About</a>
						<a href="/under/guide.jsp"><strong>이용안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">UNDER STAND AVENUE</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 이용방법을 안내합니다.</p>

					<div class="method">
						<dl class="desk">
							<dt>이용 안내 </dt>
							<dd>
								<p>
									편의시설 안내 및 공간 문의사항, 분실물 습득 등은 아래로 연락주시기 바랍니다.
								</p>

				                <dl>
				                  <dt>전화번호</dt>
				                  <dd>02 - 725 - 5526 (평일 09:30~18:30)</dd>

				                  <dt>카카오 ID</dt>
				                  <dd>@언더스탠드에비뉴 (10:00 ~ 20:00)</dd>
				                </dl>

							</dd>
						</dl>

						<dl class="call">
							<dt>공간 별 문의전화</dt>
							<dd>
				                <dl>
									<dt>아트스탠드</dt>
									<dd>02 - 2135 - 8182</dd>

									<dt>Restaurant/Cafe 브리너</dt>
									<dd>02 - 2135 - 8178</dd>

									<dt>WALKSHOP</dt>
									<dd>02 - 2135 - 8179(매장) / 02 - 2135 - 8190(사무실)</dd>

									<dt>Pet shop 두들샵</dt>
									<dd>02 - 2135 - 8186</dd>

									<dt>Café 서울숲</dt>
									<dd>02 - 468 - 9890</dd>

									<dt>엄마손만두 소풍</dt>
									<dd>070 - 4216 - 0960</dd>

									<dt>파워스탠드 다목적홀 대관</dt>
									<dd>070 - 4215 - 3770</dd>
				                </dl>
							</dd>
						</dl>

						<dl class="disabled">
							<dt>장애인용 화장실</dt>
							<dd>파워스탠드 내 1층 화장실에 남녀 장애인용 화장실이 구비되어 있습니다.</dd>
						</dl>

						<%-- <dl class="pre">
							<dt>견학</dt>
							<dd>
								<p>
									언더스탠드에비뉴를 더욱 자세하게 알고 싶으신 분을 위하여<br />
									견학프로그램을 운영하고 있습니다.
								</p>

								<dl>
									<dt>견학대상</dt>
									<dd>단체 30명 이상</dd>

									<dt>견학코스</dt>
									<dd>동선에 따른 7개의 스탠드 내외부</dd>

									<dt>소요시간</dt>
									<dd>30분 소요(날씨 및 공연 사정으로 단축 가능)</dd>

									<dt>문의방법</dt>
									<dd>전화(02-6959-7023) 및 이메일(<a href="mailto:jiho@understandavenue.com">jiho@understandavenue.com</a>)</dd>
								</dl>
							</dd>
						</dl> --%>

						<%-- <dl class="progress">
							<dt>분실물 찾기</dt>
							<dd>
								<p>분실물을 보관하고 있습니다.<br />
									분실하신 물건이 있을 경우 인포데스크로 연락 주시기 바랍니다.</p>

                <dl>
                  <dt>운영시간</dt>
                  <dd>월~일 10:00~18:00 / Break Time 13:00~14:00</dd>

                  <dt>위치</dt>
                  <dd>인포데스크</dd>

                  <dt>전화번호</dt>
                  <dd>02-725-5526</dd>
                </dl>

                <p class="txt">분실물은 습득일 다음 날부터 2개월간 인포데스크에 보관하고 있으며,<br />
                  분실물을 찾아가실 경우에는 본인 확인을 위하여 반드시 신분증을 지참하여 주시기 바랍니다.</p>

                <p class="txt">습득일로부터 2개월 이내 분실자가 나타나지 않을 경우에는<br />
								  분실물 처리 기준에 의하여 경찰서에 인계하거나 자체 폐기합니다. </p>
							</dd>
						</dl>


						<dl class="after">
							<dt>장애인용 화장실</dt>
							<dd>파워스탠드 내 1층 화장실에 남녀 장애인용 화장실이 구비되어 있습니다.</dd>
						</dl> --%>
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
