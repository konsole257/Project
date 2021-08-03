<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">CS CENTER 메뉴</h2>

	<ul>
		<li class="depth1">
			<a href="/customer/notice_list.jsp" <% if ( path1.equals("customer") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_cs_customer.png" alt="Cs center" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/customer/notice_list.jsp" <% if ( path1.equals("customer") && path2.equals("notice") ){ %> class="on" <% } %> >공지사항</a></li><!-- 해당페이지에서 class="on" -->
				<li><a href="/customer/faq.jsp" <% if ( path1.equals("customer") && path2.equals("faq") ){ %> class="on" <% } %> >FAQ</a></li>
				<li><a href="/customer/qna.jsp" <% if ( path1.equals("customer") && path2.equals("qna") ){ %> class="on" <% } %> >1:1문의하기</a></li>
			</ul>
		</li>
	</ul>

	<dl>
		<dt class="call">대표번호</dt>
		<dd class="call">02-725-5526</dd>

		<dt class="time">상담시간</dt>
		<dd class="time">월~금 10:00~18:00</dd>
		<dd class="time">주말, 공휴일 10:00~18:00</dd>
	</dl>
</nav>
<!-- //snb include -->
