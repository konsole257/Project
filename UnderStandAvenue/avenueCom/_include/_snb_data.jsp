<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">데이터 이노베이션 센터 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/stations/digital.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_data_about.png" alt="소개" /></a>
		</li>

		<li class="depth1">
			<a href="/stations/reserve_digital.jsp" <% if ( path3.equals("reserve") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_data_reserve.png" alt="예약" /></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
