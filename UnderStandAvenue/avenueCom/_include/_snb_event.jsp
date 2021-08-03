<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">Event 메뉴</h2>

  <ul>
		<li class="depth1">
			<a href="/event/carlendar.jsp" <% if ( path1.equals("event") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_event_event.png" alt="Event" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/event/calendar.jsp" <% if ( path1.equals("event") && path2.equals("schedule") ){ %> class="on" <% } %> >캘린더</a></li><!-- 해당페이지에서 class="on" -->
        <li><a href="/event/event_ing_list.jsp" <% if ( path1.equals("event") && path2.equals("event") ){ %> class="on" <% } %> >이벤트</a></li>
			</ul>
		</li>
	</ul>
</nav>
<!-- //snb include -->
