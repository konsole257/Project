<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="column";
	String path4="column";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="칼럼게시판";
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
	<main id="wrap" class="heart">
		<div class="column detail">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_heart.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
            <a href="/heart/about.jsp">HEART STAND</a>
            <a href="/heart/column_list.jsp"><strong>칼럼 게시판</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공지사항</h2>
					<p class="con_tit_txt">하트스탠드에서 유용한 정보를 알려드립니다.</p>

					<!-- -->
          <article class="bbs detail type1">
						<header>
							<h4 class="subject">제목이 표시됩니다.</h4>
							
							<time class="date">2016.01.10</time>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
								<p>
									내용이 표시됩니다.<br />
									언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br />
									내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.
								</p><br /><br />

								<p>
									내용이 표시됩니다.<br />
									내용이 표시됩니다. 내용이 표시됩니다.
								</p>
							</div>

						</div>
					</article>

					<div class="btn_area">
						<a href="#" class="midium type4 btn_bbs_list">목록</a>
					</div>
					<!-- -->
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
