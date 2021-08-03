<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">SOCIAL STAND 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/social/about.jsp" <% if ( path3.equals("about") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_about.png" alt="About" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/social/about.jsp" <% if ( path3.equals("about") && path4.equals("about") ){ %> class="on" <% } %> >소개</a></li><!-- 해당페이지에서 class="on" -->
			</ul>
		</li>
		<li class="depth1">
			<a href="/social/brand_intro.jsp" <% if ( path3.equals("brand") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_social_brand.png" alt="브랜드 스토리" /></a>
		</li>

		<li class="depth1">
			<a href="/social/partner.jsp" <% if ( path3.equals("partner") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_social_partner.png" alt="청년 파트너 소개"></a>
		</li>
	</ul>
</nav>
<!-- //snb include -->
