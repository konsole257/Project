<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">성공 두드림 Academy 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/academy/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_academy_about.png" alt="소개" /></a><!-- 해당페이지에서 class="on" -->
		</li>

		<!-- 2018.02.02 : 추가 // -->
		<li class="depth1">
			<a href="/academy/apply.jsp" <% if ( path3.equals("apply") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_academy_apply.png" alt="수강신청" /></a>
		</li>
		<!-- // 2018.02.02 : 추가 -->
	</ul>
</nav>
<!-- //snb include -->
