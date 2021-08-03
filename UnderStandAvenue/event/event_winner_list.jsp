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

		<div class="event list">
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

					<table class="bbs list type1">
						<caption>당첨자 발표 목록</caption>

						<colgroup>
							<col style="width:78px;"/>
							<col style="width:165px;"/>
							<col style="width:508px;"/>
							<col style="width:149px;"/>
						</colgroup>

						<thead>
								<tr>
									<th scopw="col">번호</th>
									<th scopw="col">구분</th>
									<th scopw="col">제목</th>
									<th scopw="col">등록일</th>
								</tr>
						</thead>

						<tbody>
							<tr>
								<td colspan="4" class="no_data">등록된 글이 없습니다.</td>
							</tr>

								<!-- 반복영역 // -->
								<tr>
									<td>2</td>
									<td>ART STAND</td>
									<td class="subject">
										<a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.표시됩니다.</a>
									</td>
									<td>2016.01.10</td>
								</tr>
								<!-- // 반복영역 -->

								<tr>
									<td>1</td>
									<td>ART STAND</td>
									<td class="subject">
										<a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.</a>
									</td>
									<td>2016.01.10</td>
								</tr>
						</tbody>
					</table>

          <div class="paging">
    				<a class="prev" href="#">이전</a>
    				<span class="num">
    					<a class="on" href="#"><strong>1</strong></a>
    					<a href="#">2</a>
    					<a href="#">3</a>
    				</span>
    				<a class="next" href="#">다음</a>
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
