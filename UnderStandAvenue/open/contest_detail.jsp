<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="contest";
	String path4="contest";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="공모전 신청";
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
	<main id="wrap" class="open">
		<div class="contest detail">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_open.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/open/about.jsp">OPEN STAND</a>
						<a href="/open/contest_list.jsp"><strong>공모전 신청</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">OPEN STAND</h2>
					<p class="con_tit_txt">세상을 밝힐 아이디어를 기다립니다.</p>

          <article class="bbs detail type1">
						<header>
							<h4 class="subject">[OPEN STAND] 제목이 표시됩니다.</h4>
							<time class="date">2016.10.23 ~ 2016.12.23</time>
						</header>

						<div class="bbs_content">
							<div class="download">
								<ul>
									<li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
									<li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
                  <li><a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a></li>
								</ul>
							</div>

							<div class="txt_viewer">
                <img src="/avenueCom/images/temp/art_contest900x480.jpg" alt="" />

                <br /><br />
								<p>
									내용이 표시됩니다.<br />
									내용이 표시됩니다. 내용이 표시됩니다.
								</p>
							</div>

						</div>
					</article>

					<div class="btn_area">
            <a href="#" class="midium type4 btn_bbs_list">목록</a>
						<a href="#" class="midium type1 btn_request">신청하기</a>
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
