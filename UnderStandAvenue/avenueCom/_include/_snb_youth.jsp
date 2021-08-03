<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">YOUTH STAND 메뉴</h2>

	<ul>
		<%-- <li class="depth1">
			<a href="/youth/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/youth/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
				<li><a href="/youth/curriculum.jsp" <% if ( path3.equals("about") && path4.equals("curriculum") ){ %> class="on" <% } %> >Curriculum</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/youth/info_list.jsp" <% if ( path3.equals("info") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_youth_recruit.png" alt="지원신청" /></a>

			<ul class="depth2">
				<li><a href="/youth/info_temp.jsp" <% if ( path3.equals("info") && path4.equals("info") ){ %> class="on" <% } %> >모집안내</a></li>
				<li><a href="/youth/recruit.jsp" <% if ( path3.equals("info") && path4.equals("recruit") ){ %> class="on" <% } %> >지원하기</a></li>
			</ul>
		</li> --%>

		<li class="depth1">
			<a href="/youth/doodle.jsp" <% if ( path3.equals("workplace") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_youth_workplace.png" alt="WORK PLACE" /></a>

			<ul class="depth2">
				<li><a href="/youth/doodle.jsp" <% if ( path3.equals("workplace") && path4.equals("doodle") ){ %> class="on" <% } %> >Doodle Shop</a></li>
				<%-- <li><a href="/youth/maylily.jsp" <% if ( path3.equals("workplace") && path4.equals("maylily") ){ %> class="on" <% } %> >May Lily</a></li> --%>
			</ul>
		</li>


		<%-- <li class="depth1">
			<a href="/youth/photo_list.jsp" <% if ( path3.equals("gallery") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_youth_photo.png" alt="활동사진 및 영상" /></a>

			<ul class="depth2">
				<li><a href="/youth/photo_list.jsp" <% if ( path3.equals("gallery") && path4.equals("photo") ){ %> class="on" <% } %> >이미지 갤러리</a></li>
				<li><a href="/youth/vidio_list.jsp" <% if ( path3.equals("gallery") && path4.equals("vidio") ){ %> class="on" <% } %> >동영상갤러리</a></li>
			</ul>
		</li> --%>
	</ul>
</nav>
<!-- //snb include -->
