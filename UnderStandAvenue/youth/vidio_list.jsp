<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="gallery";
	String path4="vidio";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="활동사진 및 영상";
	String path4tit="동영상 갤러리";
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
		<div class="vidio list">
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
						<a href="/youth/vidio_list.jsp"><strong>동영상 갤러리</strong></a>
					</div>
				</div>

				<div id="contents_inner">
						<h2 class="con_tit">YOUTH STAND</h2>
						<p class="con_tit_txt">유스스탠드의 생생한 현장을 보여드립니다.</p>

            <!-- -->
            <div class="bbs gallery type1">
              <ul>
				<!-- 등록된 글이 없을때 // -->
 				<li class="no_data">준비중입니다.</li>
 				<!-- // 등록된 글이 없을때 -->

                <!-- 반복영역 //
                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="no Image" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정</strong>
                  </a>
                </li>


                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
                </li>

                <li>
                  <a href="#">
                    <img src="/avenueCom/images/temp/youth_vidio192x122.jpg" alt="" />
                    <strong class="subject dotdot">웹 편집출판·디자인 과정웹 편집출판·디자인 과정</strong>
                  </a>
			  </li>-->
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
