<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">회의실 예약 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/room/info.jsp" <% if ( path3.equals("info") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_room_info.png" alt="회의실 이용안내" /></a><!-- 해당페이지에서 class="on" -->
		</li>

		<li class="depth1">
			<a href="/room/reserve.jsp" <% if ( path3.equals("reserve") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_room_reserve.png" alt="회의실 예약" /></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
