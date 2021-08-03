<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="customer";
	String path2="notice";
	String path3="";
	String path4="";
	String path1tit="고객센터";
	String path2tit="공지사항";
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
	<main id="wrap" class="customer">
		<div class="notice">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_customer.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/customer/notice.jsp">고객센터</a>
						<a href="/customer/notice.jsp"><strong>공지사항</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공지사항</h2>

					<p class="con_tit_txt">언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.</p>

					<!-- -->
					<nav class="notice_tab" data-ui="tab">
						<h3 class="hide">공지사항 분류</h3>
						<!-- 2018.02.02 : 수정 // -->
						<ul>
							<li class="on"><!-- 해당페이지에서 class="on" -->
								<span class="all_tab_menu" data-ui="tab_menu"><a href="#">전체</a></span>
							</li>

							<li>
								<span class="under_tab_menu" data-ui="tab_menu"><a href="#">UNDER STAND AVENUE</a></span>
							</li>

							<li>
								<span class="dodream_tab_menu" data-ui="tab_menu"><a href="#">DO DREAM</a></span>
							</li>

							<!-- 2016-04-22 : 추가 // -->
							<li>
								<span class="walkshop_tab_menu" data-ui="tab_menu"><a href="#">WALKSHOP</a></span>
							</li>
							<!-- // 2016-04-22 : 추가 -->
						</ul>
						<!-- // 2018.02.02 : 수정 -->
					</nav>

					<article class="bbs detail type1">
						<header>
							<h4 class="subject">[UNDER STAND AVENUE] 제목이 표시됩니다.</h4>
							<time class="date">2016.01.10</time>
						</header>

						<div class="bbs_content">
							<div class="download">
								<strong>첨부파일</strong>
								<ul>
									<li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
									<li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
								</ul>
							</div>

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
