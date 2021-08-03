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
		<div class="photo list">
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
			<nav class="event_tab" data-ui="tab">
				<h3 class="hide">활동사진 및 영상 분류</h3>
				<ul>
					<li class="on">
						<span data-ui="tab_menu"><a href="#">현장직업체험</a></span>
					</li>
					<li>
						<span data-ui="tab_menu"><a href="#">일터학교</a></span>
					</li>
				</ul>
			</nav>

            <div class="bbs gallery type1">
              <ul>
				 <!-- 등록된 글이 없을때 // -->
				<li class="no_data">준비중입니다.</li>
				<!-- // 등록된 글이 없을때 -->

                <%-- <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_photo192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li> --%>
              </ul>
            </div>

            <!-- paging // -->
            <div class="paging">
              <a class="prev" href="#">이전</a>
              <span class="num">
                <a class="on" href="#"><strong>1</strong></a>
                <a href="#">2</a>
                <a href="#">3</a>
              </span>
              <a class="next" href="#">다음</a>
            </div>
            <!-- // paging -->

            <script>
            var listLength = $('.bbs.gallery.type1 li').length%4;
            listLength == 0 ? listLength = 4 : '';
            for ( var i=1; i<=listLength; i++ ) {
              $('.bbs.gallery.type1 li:nth-last-child('+i+')').addClass('last_line');
            }
            </script>
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
