<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="event";
	String path2="schedule";
	String path3="";
	String path4="";
	String path1tit="EVENT";
	String path2tit="캘린더";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<script src="/avenueCom/js/angular.min.js"></script>
	<script src="/avenueCom/js/angular_module.js"></script>

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="event">

		<div class="schedule" ng-app="schedule" ng-controller="list">
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
						<a href="/event/calendar.jsp"><strong>캘린더</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">캘린더</h2>

					<p class="con_tit_txt">언더스탠드에비뉴의 공연&middot;전시&middot;체험 일정을 한눈에 알려드립니다.</p>

          <!-- -->
          <article class="calendar_area">
            <h3 class="hide">공연 전시 일정</h3>

            <h4>
              <span class="yyyy">2016<span class="hide">년</span></span>
              <span class="mm">4<span class="hide">월</span></span>
              <small>January</small>

              <a href="#" class="btn_prev">이전</a>
              <a href="#" class="btn_next">다음</a>
            </h4>
          </article>

          <ul class="list">
						<!-- 캘린더 없는경우 // -->
						<li class="no_data">
							<strong><span>준비중</span>입니다.</strong>
							다양한 프로그램으로 여러분을 찾아 뵙겠습니다!
						</li>
						<!-- // 캘린더 없는경우 -->

            <!-- 반복영역 //
						<li ng-repeat="schedule in scheduleData">
              <a href="{{schedule.link}}">
                <img src="/avenueCom/images/upload/calendar/calendar_thumb_{{schedule.index}}.jpg" alt="" />
                <div class="subject_area">
                  <div class="subject dotdot"><pre>{{schedule.subject}}</pre></div>
                  <time class="date">{{schedule.period}}</time>
                </div>
              </a>
            </li>-->
            <!-- // 반복영역 -->
          </ul>
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
