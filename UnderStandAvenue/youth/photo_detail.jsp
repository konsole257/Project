<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="gallery";
	String path4="photo";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="활동사진 및 영상";
	String path4tit="이미지 갤러리";
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
		<div class="photo detail">
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
						<a href="/youth/photo_list.jsp">활동사진 및 영상</a>
						<a href="/youth/photo_list.jsp"><strong>이미지 갤러리</strong></a>
					</div>
				</div>

				<div id="contents_inner">
						<h2 class="con_tit">YOUTH STAND</h2>
						<p class="con_tit_txt">유스스탠드의 생생한 현장을 보여드립니다.</p>

            <!-- -->
            <article class="bbs detail type2">
  						<header>
  							<h4 class="subject">가죽공예 과정</h4>
  						</header>

  						<div class="bbs_content">
  							<div class="txt_viewer">
  								<p>
  									내용이 표시됩니다.<br>
  									언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br><br>
  								</p>

                  <div id="detailpic" class="detailpic pajinate">
      							<ul class="pajinatels">
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
                      <li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      								<li><img src="/avenueCom/images/temp/youth_photo900x573.jpg" alt="" /></li>
      							</ul>
      						</div>
  							</div>
  						</div>
  					</article>

            <div class="btn_area">
  						<a class="midium type4 btn_bbs_list" href="#">목록</a>
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
