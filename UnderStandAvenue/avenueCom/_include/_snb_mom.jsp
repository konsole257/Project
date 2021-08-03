<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">MOM STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/mom/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/mom/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
				<li><a href="/mom/recruit.jsp" <% if ( path3.equals("about") && path4.equals("recruit") ){ %> class="on" <% } %> >채용안내</a></li>
				<li><a href="/mom/momstory.jsp" <% if ( path3.equals("about") && path4.equals("momstory") ){ %> class="on" <% } %> >Mom story</a></li>
				<%-- <li><a href="/mom/with.jsp" <% if ( path3.equals("about") && path4.equals("with") ){ %> class="on" <% } %> >함께하는 사람들</a></li> --%>
			</ul>
		</li>

		<li class="depth1">
			<a href="/mom/brinner.jsp" <% if ( path3.equals("brinner") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_mom_brinner.png" alt="Brinner" /></a>
		</li>

		<%-- <li class="depth1">
			<a href="/mom/bistro.jsp" <% if ( path3.equals("bistro") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_mom_bistro.png" alt="Bistro" /></a>
		</li> --%>
	</ul>
</nav>
<!-- //snb include -->
