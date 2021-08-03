<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">MOM STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<!--<a href="/under/about.jsp" <% if ( path1.equals("under") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a> 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/under/about.jsp" <% if ( path1.equals("under") && path2.equals("about") ){ %> class="on" <% } %> >소개</a></li> <!-- 해당페이지에서 class="on" -->
				<li><a href="/under/philosophy.jsp" <% if ( path1.equals("under") && path2.equals("philosophy") ){ %> class="on" <% } %> >철학 </a></li>
				<li><a href="/under/people.jsp" <% if ( path1.equals("under") && path2.equals("people") ){ %> class="on" <% } %> >함께 만드는 사람들</a></li>
				<li><a href="/under/area.jsp" <% if ( path1.equals("under") && path2.equals("area") ){ %> class="on" <% } %> >공간안내</a></li><!-- /under/area.jsp 추가예정 -->
				<li><a href="/under/guide.jsp" <% if ( path1.equals("under") && path2.equals("guide") ){ %> class="on" <% } %> >이용안내</a></li>

				<!-- 2018.02.02 : 추가 // -->
				<li><a href="/under/news.jsp" <% if ( path1.equals("under") && path2.equals("news") ){ %> class="on" <% } %> >언론보도</a></li>
				<!-- // 2018.02.02 : 추가 -->

				<li><a href="/under/location.jsp" <% if ( path1.equals("under") && path2.equals("location") ){ %> class="on" <% } %> >찾아오는 길</a></li>
			</ul>
		</li>
	</ul>
</nav>
<!-- //snb include -->
