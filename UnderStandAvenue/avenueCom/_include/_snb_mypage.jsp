<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- snb include -->
<nav id="snb">
	<h2 class="hide">Mypage 메뉴</h2>

	<ul>
		<%-- <li class="depth1">
			<a href="/mypage/program_list.jsp" <% if ( path2.equals("heart") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_mypage_heart.png" alt="HEART STAND" /></a><!-- 해당페이지에서 class="on" -->

			<ul class="depth2">
				<li><a href="/mypage/program_list.jsp" <% if ( path2.equals("heart") && path3.equals("program") ){ %> class="on" <% } %> >프로그램 신청 내역</a></li><!-- 해당페이지에서 class="on" -->
			</ul>
		</li>

		<li class="depth1">
			<a href="/mypage/recruit_list.jsp" <% if ( path2.equals("mom") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_mypage_mom.png" alt="MOM STAND" /></a>

			<ul class="depth2">
				<li><a href="/mypage/recruit_list.jsp" <% if ( path2.equals("mom") && path3.equals("recruit") ){ %> class="on" <% } %> >입사지원 내역</a></li>
			</ul>
		</li> --%>

		<%-- <li class="depth1">
			<a href="/mypage/contest_list.jsp" <% if ( path2.equals("open") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_mypage_open.png" alt="OPEN STAND" /></a>

			<ul class="depth2">
				<li><a href="/mypage/contest_list.jsp" <% if ( path2.equals("open") && path3.equals("contest") ){ %> class="on" <% } %> >공모전 신청 내역</a></li>
			</ul>
		</li> --%>

		<!-- 2018.02.02 : 추가 // -->
		<li class="depth1">
			<a href="/mypage/apply_list_stations.jsp" <% if ( path2.equals("dodream") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_mypage_dodream.png" alt="DO DREAM" /></a>

			<ul class="depth2">
				<li><a href="/mypage/apply_list_stations.jsp" <% if ( path2.equals("dodream") && path3.equals("stations") ){ %> class="on" <% } %> >상담예약 내역</a></li>
				<li><a href="/mypage/apply_list_academy.jsp" <% if ( path2.equals("dodream") && path3.equals("academy") ){ %> class="on" <% } %> >아카데미 수강신청 내역</a></li>
				<li><a href="/mypage/apply_list_room.jsp" <% if ( path2.equals("dodream") && path3.equals("room") ){ %> class="on" <% } %> >회의실 예약내역</a></li>
			</ul>
		</li>
		<!-- // 2018.02.02 : 추가 -->

		<li class="depth1">
			<a href="#" <% if ( path2.equals("shop") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_mypage_shop.png" alt="WALKSHOP" /></a>

			<ul class="depth2">
				<li><a href="/mypage/inquiry_product_list.jsp" <% if ( path2.equals("shop") && path3.equals("product") ){ %> class="on" <% } %> >주문/배송 조회</a></li>
				<li><a href="/mypage/exchange.jsp" <% if ( path2.equals("shop") && path3.equals("exchange") ){ %> class="on" <% } %> >교환/반품 신청</a></li>
				<li><a href="/mypage/inquiry_ticket_list.jsp" <% if ( path2.equals("shop") && path3.equals("ticket") ){ %> class="on" <% } %> >CULTURE 예매내역</a></li>
				<li><a href="/mypage/coupon_able.jsp" <% if ( path2.equals("shop") && path3.equals("coupon") ){ %> class="on" <% } %> >쿠폰</a></li>
				<li><a href="/mypage/delivery_list.jsp" <% if ( path2.equals("shop") && path3.equals("delivery") ){ %> class="on" <% } %> >배송지 관리</a></li>
				<li><a href="/mypage/post_list_able.jsp" <% if ( path2.equals("shop") && path3.equals("post") ){ %> class="on" <% } %> >상품후기 내역</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/mypage/qna_list.jsp" <% if ( path2.equals("customer") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_mypage_cs.png" alt="CS CENTER" /></a>

			<ul class="depth2">
				<li><a href="/mypage/qna_list.jsp" <% if ( path2.equals("customer") && path3.equals("list") ){ %> class="on" <% } %> >1:1 문의내역</a></li>
			</ul>
		</li>

		<li class="depth1">
			<a href="/mypage/modify.jsp" <% if ( path2.equals("membership") ){ %> class="on" <% } %>><img src="/avenueCom/images/sub/snb_mypage_member.png" alt="회원정보" /></a>

			<ul class="depth2">
				<li><a href="/mypage/modify.jsp" <% if ( path2.equals("membership") && path3.equals("modify") ){ %> class="on" <% } %> >개인정보 변경</a></li>
				<li><a href="/mypage/leave.jsp" <% if ( path2.equals("membership") && path3.equals("leave") ){ %> class="on" <% } %> >회원탈퇴</a></li>
			</ul>
		</li>

		<!-- 비회원일 경우 //
		<li class="depth1">
			<a href="#" <% if ( path2.equals("shop") ){ %> class="on" <% } %> ><img src="/avenueCom/images/sub/snb_mypage_shop.png" alt="WALKSHOP" /></a>

			<ul class="depth2">
				<li><a href="/mypage/inquiry_product_list.jsp" <% if ( path2.equals("shop") && path3.equals("product") ){ %> class="on" <% } %> >주문/배송 조회</a></li>
			</ul>
		</li>-->
		<!-- // 비회원일 경우 -->
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
