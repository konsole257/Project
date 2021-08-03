<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">청년START業 메뉴</h2>

	<ul>
		<%-- <li class="depth1">
			<a href="/startup/social.jsp" <% if ( path3.equals("course") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_startup_course.png" alt="Course" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/startup/social.jsp" <% if ( path3.equals("course") && path4.equals("social") ){ %> class="on" <% } %> >Social Entrepreneur</a></li><!-- 해당페이지에서 class="on" -->
				<li><a href="/startup/innovative.jsp" <% if ( path3.equals("course") && path4.equals("innovative") ){ %> class="on" <% } %> >Innovative<br>Entrepreneur</a></li>
			</ul>
		</li> --%>

		<!-- 2018.02.02 : 수정 // -->
		<li class="depth1">
			<a href="/startup/digital.jsp" <% if ( path3.equals("digital") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_startup_digital.png" alt="Digital ･ Life ･ School" /></a><!-- 해당페이지에서 class="on" -->
		</li>

		<li class="depth1">
			<a href="/startup/incubation.jsp" <% if ( path3.equals("incubation") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_startup_incubation.png" alt="Incubation Center" /></a><!-- 해당페이지에서 class="on" -->
		</li>
		<!-- // 2018.02.02 : 수정 -->



		<%-- <li class="depth1">
			<a href="/startup/apply_social.jsp" <% if ( path3.equals("apply") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_startup_apply.png" alt="APPLY" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/startup/apply_social.jsp" <% if ( path3.equals("apply") && path4.equals("social") ){ %> class="on" <% } %> >Social Entrepreneur Course</a></li><!-- 해당페이지에서 class="on" --> --%>
				<%-- <li><a href="/startup/apply_innovative.jsp" <% if ( path3.equals("apply") && path4.equals("innovative") ){ %> class="on" <% } %> >INNOVATIVE<br>ENTREPRENEUR</a></li> --%>
			<%-- </ul>
		</li> --%>
	</ul>
</nav>
<!-- //snb include -->
