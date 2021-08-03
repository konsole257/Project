<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">OPEN STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/open/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/open/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
			</ul>
		</li>

		<li class="depth1">
			<a href="/open/choice.jsp" <% if ( path3.equals("choice") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_open_choice.png" alt="선정팀 소개" /></a>
		</li>

		<!--
		<li class="depth1">
			<a href="/open/contest_list.jsp" <% if ( path3.equals("contest") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_open_contest.png" alt="공모전 신청" /></a>
		</li> 2016-04-20 -->

		<li class="depth1">
			<a href="/open/tanki.jsp" <% if ( path3.equals("tanki") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_open_tanki.png" alt="TANKI STORY" /></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
