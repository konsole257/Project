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
	<script src="/avenueCom/js/angular.min.js"></script>
	<script src="/avenueCom/js/angular-route.min.js"></script>
	<script src="/avenueCom/js/angular_module.js"></script>
	<base href="/">

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="event">

		<div class="event detail" ng-app="event" ng-controller="detail">
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
              <li class="on">
                <span data-ui="tab_menu"><a href="/event/event_ing_list.jsp">진행중 이벤트</a></span>
              </li>
							<li>
                <span data-ui="tab_menu"><a href="/event/event_expect_list.jsp">예정 이벤트</a></span>
              </li>
              <li>
                <span data-ui="tab_menu"><a href="/event/event_end_list.jsp">종료 이벤트</a></span>
              </li>
              <li>
                <span data-ui="tab_menu"><a href="/event/event_winner_list.jsp">당첨자 발표</a></span>
              </li>
            </ul>
          </nav>

          <article class="bbs detail type1">
						<header>
							<h4 class="subject">{{event.subject}}</h4>
							<time class="date">{{event.periodStart}} ~ {{event.periodEnd}}</time>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
								<p>
                  <img src="/avenueCom/images/upload/event/event_detail_{{event.index}}.jpg" alt="" class="img" />
									<map name="Map" ng-if="map">
										<area shape="rect" coords="{{area.coords}}" href="{{area.link}}"  alt="" ng-repeat="area in event.detailLink" />
									</map>

									{{event.detailTxt}}
								</p>
							</div>
						</div>
					</article>

					<div class="btn_area">
          	<a href="/event/event_ing_list.jsp?page={{pageNow}}" class="midium type4 btn_bbs_list">목록</a>
					</div>

          <!-- 댓글영역 //-->
          <div class="reply">
            <div class="txt_area">
              <p>댓글로 이벤트에 참여해보세요!</p>

              <div>
                <label for="secret">비밀댓글</label>
                <input type="checkbox" id="secret">
              </div>
            </div>

            <div>
              <form>
                  <fieldset>
                    <legend>댓글작성</legend>

                    <textarea title="댓글 입력"></textarea>
                    <span class="btn_area">
                        <button type="submit" class="big type3 btn_submit">등록</button>
                    </span>
                  </fieldset>
              </form>

            </div>
          </div>

          <ul class="reply_list">
						<!-- 댓글이 없을때 // -->
						<li class="no_data">첫번째 이벤트 댓글을 작성해 주세요.</li>
						<!-- // 댓글이 없을때 -->

            <!-- 반복영역 //-->
            <li>
              <span class="name">kl***</span>
              <time class="date">2015.12.01</time>
              <p>댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이
                댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.<span class="btn_area"><a href="#" class="small type1 btn_del">삭제</a></span></p>
            </li>
            <!-- // 반복영역-->

            <li>
              <span class="name">kl***</span>
              <time class="date">2015.12.01</time>
              <p>댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이
                댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.</p>
            </li>
          </ul>

          <div class="paging">
    				<a href="#" class="prev">이전</a>
    				<span class="num">
    					<a href="#" class="on"><strong>1</strong></a>
    					<a href="#">2</a>
    					<a href="#">3</a>
    				</span>
    				<a href="#" class="next">다음</a>
    			</div>
          <!-- // 댓글영역 -->

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
