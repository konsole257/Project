<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">두드림 금융 컨설팅룸 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/stations/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_finance_about.png" alt="소개" /></a>
		</li>

		<li class="depth1">
			<a href="/stations/reserve_finance.jsp" <% if ( path3.equals("reserve") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_finance_reserve.png" alt="금융 상담신청" /></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
