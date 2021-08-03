<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">HEART STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/heart/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/heart/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
				<li><a href="/heart/staff.jsp" <% if ( path3.equals("about") && path4.equals("staff") ){ %> class="on" <% } %> >스텝 &amp; 자문위원</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/heart/program.jsp" <% if ( path3.equals("program") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_heart_program.png" alt="프로그램 안내" /></a>
			<ul class="depth2">
				<li><a href="/heart/program_company_list.jsp" <% if ( path3.equals("program") && path4.equals("company") ){ %> class="on" <% } %> >기업 프로그램</a></li>
				<li><a href="/heart/program_adult_list.jsp" <% if ( path3.equals("program") && path4.equals("adult") ){ %> class="on" <% } %> >성인 프로그램</a></li>
				<li><a href="/heart/program_child_list.jsp" <% if ( path3.equals("program") && path4.equals("child") ){ %> class="on" <% } %> >아동 프로그램</a></li>
				<li><a href="/heart/program_family_list.jsp" <% if ( path3.equals("program") && path4.equals("family") ){ %> class="on" <% } %> >가족 프로그램</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/heart/psychild.jsp" <% if ( path3.equals("psy") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_heart_psy.png" alt="심리검사" /></a>

			<ul class="depth2">
				<li><a href="/heart/psychild.jsp" <% if ( path3.equals("psy") && path4.equals("child") ){ %> class="on" <% } %> >아동 심리검사</a></li>
				<li><a href="/heart/psyadult.jsp" <% if ( path3.equals("psy") && path4.equals("adult") ){ %> class="on" <% } %> >성인 심리검사</a></li>
			</ul>
		</li>


		<li class="depth1">
			<a href="/heart/guide.jsp" <% if ( path3.equals("request") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_heart_reserve.png" alt="예약/신청하기" /></a>

			<ul class="depth2">
				<li><a href="/heart/guide.jsp" <% if ( path3.equals("request") && path4.equals("guide") ){ %> class="on" <% } %> >이용안내</a></li>
				<li><a href="/heart/request.jsp#" <% if ( path3.equals("request") && path4.equals("request") ){ %> class="on" <% } %> >프로그램 신청</a></li>
			</ul>
		</li>
		<!--
		<li class="depth1">
			<a href="/heart/column_list.jsp" <% if ( path3.equals("column") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_heart_column.png" alt="칼럼게시판" /></a>
		</li> 2016-04-20 -->
	</ul>
</nav>
<!-- //snb include -->
