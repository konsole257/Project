<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">고용노동부 청년 스테이션 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/stations/youth.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_stations_about.png" alt="소개" /></a>
		</li>

		<li class="depth1">
			<a href="/stations/reserve_youth.jsp" <% if ( path3.equals("reserve") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_stations_reserve.png" alt="청년 취업상담" /></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
