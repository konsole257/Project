<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">DO DREAM SPACE 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/startup/social.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_space.png" alt="DO DREAM SPACE" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/startup/social.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
			</ul>
		</li>
	</ul>
</nav>
<!-- //snb include -->
