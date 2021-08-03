<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">ART STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/art/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/art/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
				<!--<li><a href="#">이용안내</a></li>2016-04-20 -->
			</ul>
		</li>

		<li class="depth1">
			<a href="/art/program_now_list.jsp" <% if ( path3.equals("program") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_heart_program.png" alt="Program" /></a>

			<ul class="depth2">
				<li><a href="/art/program_now_list.jsp" <% if ( path3.equals("program") && path4.equals("now") ){ %> class="on" <% } %> >현재프로그램</a></li>
				<li><a href="/art/program_expect_list.jsp" <% if ( path3.equals("program") && path4.equals("expect") ){ %> class="on" <% } %> >예정프로그램</a></li>
				<li><a href="/art/program_end_list.jsp" <% if ( path3.equals("program") && path4.equals("end") ){ %> class="on" <% } %> >지난프로그램</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/art/rent_list.jsp" <% if ( path3.equals("rent") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_art_rent.png" alt="대관안내" /></a>

			<ul class="depth2">
				<li><a href="/art/rent_list.jsp" <% if ( path3.equals("rent") && path4.equals("rent") ){ %> class="on" <% } %> >대관안내 및 절차</a></li>
				<li><a href="/art/facility.jsp" <% if ( path3.equals("rent") && path4.equals("facility") ){ %> class="on" <% } %> >대관시설</a></li>
				<li><a href="/art/pay.jsp" <% if ( path3.equals("rent") && path4.equals("pay") ){ %> class="on" <% } %> >대관료</a></li>
				<li><a href="/art/agreement.jsp" <% if ( path3.equals("rent") && path4.equals("agreement") ){ %> class="on" <% } %>>대관규약 및 관련 서식</a></li>
			</ul>
		</li>
	</ul>
</nav>
<!-- //snb include -->
