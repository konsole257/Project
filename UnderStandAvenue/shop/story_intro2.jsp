<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="story";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="STORY";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop">
		<div class="story list">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>

						<a href="/">HOME</a>

						<span class="depth1">WALKSHOP</span>

						<span class="depth1">STORY</span>
					</div>
				</div>

				<div id="contents_inner">
					<!-- 2뎁스에선 이미지 // -->
					<h2 class="con_tit"><img src="/avenueCom/images/sub/shop_tit_story.gif" alt="STORY"/></h2>
					<!-- 2뎁스에선 이미지 // -->

					<!-- prolist // -->
					<div class="prolist big type1">
						<ul class="ls">
							<!-- 캘린더 없는경우 //
							<li class="no_data">
								<strong><span>준비중</span>입니다.</strong>
								다양한 스토리로 여러분을 찾아 뵙겠습니다!
							</li>-->
							<!-- // 캘린더 없는경우 -->

							<li>
								<a href="/shop/story_list2.jsp">
									<span class="pic">
										<img src="/avenueCom/images/upload/shop_story/penduka_thumb.jpg" alt="" />
									</span>
									<strong class="txt_ti dotdot">나미비아 여성들의 공동체, PENDUKA(펜두카)</strong>
									<time class="date">2016. 6. 1 ~ 6. 30</time>
								</a>
							</li>

						</ul>

						<!-- paging // -->
						<div class="paging">
							<a href="#" class="prev">이전</a>
							<span class="num">
								<a href="#" class="on"><strong>1</strong></a>
							</span>
							<a href="#" class="next">다음</a>
						</div>
						<!-- // paging -->
					</div>
					<!-- // prolist -->

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
