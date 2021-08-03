<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="event";
	String path2="event";
	String path3="";
	String path4="";
	String path1tit="EVENT";
	String path2tit="이벤트";
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
	<main id="wrap" class="event">

		<div class="event detail">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_event.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/event/calendar.jsp">EVENT</a>
						<a href="/event/event_list.jsp"><strong>이벤트</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">이벤트</h2>

					<p class="con_tit_txt">언더스탠드에비뉴에서 준비한 이벤트를 소개합니다.</p>

          <!-- -->
          <nav class="event_tab" data-ui="tab">
            <h3 class="hide">이벤트 분류</h3>
            <ul>
              <li>
                <span data-ui="tab_menu"><a href="/event/event_ing_list.jsp">진행중 이벤트</a></span>
              </li>
							<li>
                <span data-ui="tab_menu"><a href="/event/event_expect_list.jsp">예정 이벤트</a></span>
              </li>
              <li>
                <span data-ui="tab_menu"><a href="/event/event_end_list.jsp">종료 이벤트</a></span>
              </li>
              <li class="on">
                <span data-ui="tab_menu"><a href="/event/event_winner_list.jsp">당첨자 발표</a></span>
              </li>
            </ul>
          </nav>

          <article class="bbs detail type1">
						<header>
							<h4 class="subject">[ART STAND] 제목이 표시됩니다.</h4>
							<time class="date">2016.01.10</time>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
								<p>
									내용이 표시됩니다.<br>
									언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br>
									내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.
								</p><br><br>

								<p>
									내용이 표시됩니다.<br>
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
