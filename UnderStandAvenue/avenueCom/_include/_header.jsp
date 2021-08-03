<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- header include -->
<noscript>
이 사이트를 이용하기 위해서 자바스크립트를 활성화 시킬 필요가 있습니다.
<a href="http://www.enable-javascript.com/ko/" target="_blank">브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
</noscript>

<div class="skip">
	 <a class="skip_contents" href="#contents">본문으로 건너뛰기</a>
	 <!-- <a class="skip_gnb" href="javascript:;">주 메뉴로 건너뛰기</a>
	 <a class="skip_snb" href="javascript:;">서브메뉴로 건너뛰기</a> -->
</div>

<!-- 장바구니 Layer // -->
<div id="cartInsert" class="cartinsertpopup" data-ui="popup">
	<section class="popup_inner">
		<h4 class="popup_tit">장바구니 담기</h4>
		<div class="popup_content">
			<p>상품이 장바구니에 담겼습니다.<br />바로 확인하겠습니까?</p>
			<div class="btn_area">
				<a href="#" class="type3 small">예</a>
				<a href="javascript:void('0');" class="type4 small" data-fn="popupBtnClose">아니오</a>
			</div>
			<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
		</div>
	</section>
</div>
<!-- // 장바구니 Layer -->

<header id="header" <% if ( path2.equals("story2") ){ %> class="scroll story2" <% } %> >
	<div id="header_inner">
		<h1 class="logo"><a href="/">Under Stand Avenue</a></h1>

		<nav id="all_menu">
			<header>
				<h2>전체메뉴</h2>

				<button type="button" class="btn_close">닫기</button>
			</header>

			<div id="all_menu_inner">
				<ul>
					<li class="depth1 about">
						<span>about</span>

						<ul class="depth2">
							<li><a href="/under/about.jsp">소개</a></li>
							<li><a href="/under/philosophy.jsp">철학</a></li>
							<li><a href="/under/people.jsp">함께 만드는 사람들</a></li>
							<li><a href="/under/area.jsp">공간안내</a></li>
							<li><a href="/under/guide.jsp">이용안내</a></li>

							<!-- 2018.02.02 : 추가 // -->
							<li><a href="/under/news.jsp">언론보도</a></li>
							<!-- // 2018.02.02 : 추가 -->

							<li><a href="/under/location.jsp">찾아오는길</a></li>
						</ul>
					</li>

					<li class="depth1 stands">
						<span>STANDS</span>

						<ul class="depth2">
							<li>
								<a href="/youth/about.jsp">YOUTH STAND</a>

								<ul class="depth3">
									<%-- <li><a href="/youth/about.jsp">About</a></li> --%>
									<%-- <li><a href="/youth/info_list.jsp">지원신청</a></li> --%>
									<li><a href="/youth/doodle.jsp">Work Place</a></li>
									<%-- <li><a href="/youth/photo_list.jsp">활동사진 및 영상</a></li> --%>
								</ul>
							</li>
							<%-- <li>
								<a href="/heart/about.jsp">HEART STAND</a>

								<ul class="depth3">
									<li><a href="/heart/about.jsp">About</a></li>
									<li><a href="/heart/program.jsp">Program</a></li>
									<li><a href="/heart/psychild.jsp">심리검사</a></li>
									<li><a href="/heart/guide.jsp">예약/신청하기</a></li>
									<li><a href="/heart/column_list.jsp">칼럼게시판</a></li>
								</ul>
							</li> --%>
							<li>
								<a href="/mom/about.jsp">MOM STAND</a>

								<ul class="depth3">
									<li><a href="/mom/about.jsp">About</a></li>
									<li><a href="/mom/brinner.jsp">Brinner</a></li>
									<%-- <li><a href="/mom/bistro.jsp">Bistro Hive</a></li> --%>
								</ul>
							</li>
							<li>
								<a href="/art/about.jsp">ART STAND</a>

								<ul class="depth3">
									<li><a href="/art/about.jsp">About</a></li>
									<li><a href="/art/program_now_list.jsp">Program</a></li>
									<li><a href="/art/rent_list.jsp">대관안내</a></li>
								</ul>
							</li>
							<li>
								<a href="/power/about.jsp">POWER STAND</a>

								<ul class="depth3">
									<li><a href="/power/about.jsp">About</a></li>
									<!--<li><a href="#">Program</a></li> 2016-04-20 -->
									<!--<li><a href="#">시설이용안내</a></li> 2016-04-20 -->
								</ul>
							</li>
							<li>
								<a href="/social/about.jsp">SOCIAL STAND</a>

								<ul class="depth3">
									<li><a href="/social/about.jsp">About</a></li>
									<li><a href="/social/brand_intro.jsp">WALKSHOP 브랜드</a></li>
									<li><a href="/social/partner.jsp">청년파트너 소개</a></li>
								</ul>
							</li>
						</ul>
					</li>

					<!-- 2018.03.06 : 수정 // -->
					<li class="depth1 dodream">
						<span>DO DREAM</span>

						<ul class="depth2">
							<li>
								<a href="/startup/about.jsp">DO DREAM SPACE</a>

								<ul class="depth3">
									<li><a href="/startup/about.jsp">소개</a></li>
								</ul>
							</li>

							<li>
								<a href="/startup/digital.jsp">OZ START業</a>

								<ul class="depth3">
									<li><a href="/startup/digital.jsp">Digital &middot; Life &middot; School</a></li>
									<li><a href="/startup/incubation.jsp">Incubation Center</a></li>
								</ul>
							</li>

							<li>
								<a href="/stations/about.jsp">두드림 금융컨설팅룸</a>

								<ul class="depth3">
									<li><a href="/stations/about.jsp">소개</a></li>
									<li><a href="/stations/reserve_finance.jsp">금융 상담신청</a></li>
								</ul>
							</li>

							<li>
								<a href="/stations/youth.jsp">고용노동부 청년 스테이션</a>

								<ul class="depth3">
									<li><a href="/stations/youth.jsp">소개</a></li>
									<li><a href="/stations/reserve_youth.jsp">청년 취업상담</a></li>
								</ul>
							</li>

							<li>
								<a href="/academy/about.jsp">성공 두드림 아카데미</a>

								<ul class="depth3">
									<li><a href="/academy/about.jsp">소개</a></li>
									<li><a href="/academy/apply.jsp">수강신청</a></li>
								</ul>
							</li>

							<li>
								<a href="/stations/digital.jsp">데이터 이노베이션 센터</a>

								<ul class="depth3">
									<li><a href="/stations/digital.jsp">소개</a></li>
								</ul>
							</li>

							<li>
								<a href="/room/info.jsp">회의실 예약</a>

								<ul class="depth3">
									<li><a href="/room/info.jsp">이용안내</a></li>
									<li><a href="/room/reserve.jsp">예약</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- // 2018.03.06 : 수정 -->

					<li class="depth1 walkshop">
						<span>WALKSHOP</span>

						<ul class="depth2">
							<li><a href="/shop/brand_intro.jsp">BRAND</a></li>
							<li><a href="/shop/product_list.jsp">FASHION</a></li>
							<li><a href="/shop/product_list.jsp">BEAUTY & SCENT</a></li>
							<li><a href="/shop/product_list.jsp">HOME & FOOD</a></li>
							<li><a href="/shop/product_list.jsp">LIFE</a></li>
							<li><a href="/shop/culture_list.jsp">CULTURE</a></li>
						</ul>
					</li>

					<li class="depth1 event">
						<span>EVENT</span>

						<ul class="depth2">
							<li><a href="/event/calendar.jsp">캘린더</a></li>
							<li>
								<a href="/event/event_ing_list.jsp">이벤트</a>

								<ul class="depth3">
									<li><a href="/event/event_ing_list.jsp">진행중 이벤트</a></li>
									<li><a href="/event/event_end_list.jsp">종료 이벤트</a></li>
									<li><a href="/event/event_winner_list.jsp">당첨자 발표</a></li>
								</ul>
							</li>
						</ul>
					</li>

					<li class="depth1 customer">
						<a href="/customer/notice_list.jsp">CUSTOMER</a>
					</li>

					<li class="depth1 mypage">
						<a href="/mypage/mypage.jsp">MYPAGE</a>
					</li>

					<li class="depth2 sns">
						<ul>
							<li class="facebook"><a href="https://www.facebook.com/understandavenue" target="_blank">FACEBOOK</a></li>
							<li class="blog"><a href="http://blog.naver.com/understandavenue" target="_blank">BLOG</a></li>
							<li class="instagram"><a href="https://instagram.com/understandavenue" target="_blank">INSTAGRAM</a></li>
							<li class="youtube"><a href="https://www.youtube.com/channel/UCynM15yprQX8mBVzt5QoPBA" target="_blank">YOUTUBE</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>

		<nav id="gnb">
			<h2 class="hide">메인 메뉴</h2>

			<ul class="depth1">
				<li>
					<ul id="sns">
						<li id="facebook"><a href="https://www.facebook.com/understandavenue" target="_blank">FACEBOOK</a></li>
						<li id="blog"><a href="http://blog.naver.com/understandavenue" target="_blank">BLOG</a></li>
						<li id="instagram"><a href="https://instagram.com/understandavenue" target="_blank">INSTAGRAM</a></li>
						<li id="youtube"><a href="https://www.youtube.com/channel/UCynM15yprQX8mBVzt5QoPBA" target="_blank">YOUTUBE</a></li>
					</ul>
				</li>

				<li id="about">
					<a href="/under/about.jsp" <% if ( path1.equals("under") ){ %> class="on" <% } %> >ABOUT</a><!-- 해당페이지에서 class="on" -->

					<div class="lnb">
						<div class="lnb_inner">
							<ul class="depth2">
								<li><a href="/under/about.jsp" <% if ( path1.equals("under") && path2.equals("about") ){ %> class="on" <% } %> >소개</a></li> <!-- 해당페이지에서 class="on" -->
								<li><a href="/under/philosophy.jsp" <% if ( path1.equals("under") && path2.equals("philosophy") ){ %> class="on" <% } %> >철학 </a></li>
								<li><a href="/under/people.jsp" <% if ( path1.equals("under") && path2.equals("people") ){ %> class="on" <% } %> >함께 만드는 사람들</a></li>
								<li><a href="/under/area.jsp" <% if ( path1.equals("under") && path2.equals("area") ){ %> class="on" <% } %> >공간안내</a></li>
								<li><a href="/under/guide.jsp" <% if ( path1.equals("under") && path2.equals("guide") ){ %> class="on" <% } %> >이용안내</a></li>

								<!-- 2018.02.02 : 추가 // -->
								<li><a href="/under/news.jsp" <% if ( path1.equals("under") && path2.equals("news") ){ %> class="on" <% } %> >언론보도</a></li>
								<!-- // 2018.02.02 : 추가 -->

								<li><a href="/under/location.jsp" <% if ( path1.equals("under") && path2.equals("location") ){ %> class="on" <% } %> >찾아오는길</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li id="stand">
					<a href="/youth/doodle.jsp" <% if ( path1.equals("stand") ){ %> class="on" <% } %> >STANDS</a>

					<div class="lnb">
						<div class="lnb_inner">
							<ul class="depth2">
								<li id="youth"><a href="/youth/doodle.jsp" <% if ( path1.equals("stand") && path2.equals("youth") ){ %> class="on" <% } %> >YOUTH <span>S</span>TAND</a></li>
								<li id="mom"><a href="/mom/about.jsp" <% if ( path1.equals("stand") && path2.equals("mom") ){ %> class="on" <% } %> >MOM <span>S</span>TAND</a></li>
								<li id="art"><a href="/art/about.jsp" <% if ( path1.equals("stand") && path2.equals("art") ){ %> class="on" <% } %> >ART <span>S</span>TAND</a></li>
								<li id="power"><a href="/power/about.jsp" <% if ( path1.equals("stand") && path2.equals("power") ){ %> class="on" <% } %> >POWER <span>S</span>TAND</a></li>
								<li id="social"><a href="/social/about.jsp" <% if ( path1.equals("stand") && path2.equals("social") ){ %> class="on" <% } %> >SOCIAL <span>S</span>TAND</a></li>
							</ul>
						</div>
					</div>
				</li>

				<!-- 2018.03.06 : 수정 // -->
				<li id=dodream>
					<a href="/startup/about.jsp" <% if ( path1.equals("dodream") ){ %> class="on" <% } %> >DO DREAM</a>

					<div class="lnb">
						<div class="lnb_inner">
							<ul class="depth2">
								<li id="space"><a href="/startup/about.jsp" <% if ( path1.equals("dodream") && path2.equals("space") ){ %> class="on" <% } %> >DO DREAM SPACE</a></li>
								<li id="startup"><a href="/startup/digital.jsp" <% if ( path1.equals("dodream") && path2.equals("startup") ){ %> class="on" <% } %> >OZ START業</a></li>
								<li id="finance"><a href="/stations/about.jsp" <% if ( path1.equals("dodream") && path2.equals("finance") ){ %> class="on" <% } %> >두드림 금융컨설팅룸</a></li>
								<li id="stations"><a href="/stations/youth.jsp" <% if ( path1.equals("dodream") && path2.equals("stations") ){ %> class="on" <% } %> >고용노동부 청년 스테이션</a></li>
								<li id="academy"><a href="/academy/about.jsp" <% if ( path1.equals("dodream") && path2.equals("academy") ){ %> class="on" <% } %> >성공 두드림 아카데미</a></li>
								<li id="data"><a href="/stations/digital.jsp" <% if ( path1.equals("dodream") && path2.equals("data") ){ %> class="on" <% } %> >데이터 이노베이션 센터</a></li>
								<li id="room"><a href="/room/info.jsp" <% if ( path1.equals("dodream") && path2.equals("room") ){ %> class="on" <% } %> >회의실 예약</a></li>
							</ul>
						</div>
					</div>
				</li>
				<!-- // 2018.03.06 : 수정 -->

				<li id="warkshop">
					<a href="/shop/" <% if ( path1.equals("shop") ){ %> class="on" <% } %> >WALKSHOP</a>

					<div class="lnb">
						<div class="lnb_inner">
							<ul class="depth2">
								<li id="brand"><a href="/shop/brand_intro.jsp" <% if ( path1.equals("shop") && path2.equals("brand") ){ %> class="on" <% } %> >BRAND</a></li>
								<li id="product"><a href="/shop/product_list.jsp" <% if ( path1.equals("shop") && path2.equals("product") ){ %> class="on" <% } %> >FASHION</a></li>
								<li id="bag"><a href="/shop/product_list.jsp" <% if ( path1.equals("shop") && path2.equals("bag") ){ %> class="on" <% } %> >BEAUTY & SCENT</a></li>
								<li id="living"><a href="/shop/product_list.jsp" <% if ( path1.equals("shop") && path2.equals("living") ){ %> class="on" <% } %> >HOME & FOOD</a></li>
								<li id="living"><a href="/shop/product_list.jsp" <% if ( path1.equals("shop") && path2.equals("living") ){ %> class="on" <% } %> >LIFE</a></li>
								<li id="culture"><a href="/shop/culture_list.jsp" <% if ( path1.equals("shop") && path2.equals("culture") ){ %> class="on" <% } %> >CULTURE</a></li>
								<%-- <li id="story"><a href="/shop/story_intro2.jsp" <% if ( path1.equals("shop") && path2.equals("story") || path2.equals("story2") ){ %> class="on" <% } %> >STORY</a></li> --%>
							</ul>
						</div>
					</div>
				</li>
				<li id="event">
					<a href="/event/calendar.jsp" <% if ( path1.equals("event") ){ %> class="on" <% } %> >EVENT</a>

					<div class="lnb">
						<div class="lnb_inner">
							<ul class="depth2">
								<li id="calendar"><a href="/event/calendar.jsp" <% if ( path1.equals("event") && path2.equals("schedule") ){ %> class="on" <% } %> >캘린더</a></li>
								<li id="event"><a href="/event/event_ing_list.jsp" <% if ( path1.equals("event") && path2.equals("event") ){ %> class="on" <% } %> >이벤트</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>

			<ul id="personal">
				<li id="customer"><a href="/customer/notice_list.jsp" <% if ( path1.equals("customer") ){ %> class="on" <% } %> >고객센터</a></li>
				<li id="cart"><a href="/mypage/cart.jsp" <% if ( path1.equals("cart") ){ %> class="on" <% } %> >장바구니 <small>99</small></a></li><!-- 2016-04-25 : 수정 -->
				<li id="mypage"><a href="/mypage/mypage.jsp" <% if ( path1.equals("mypage") ){ %> class="on" <% } %> >MY PAGE</a></li>
				<li id="btn_lang">
					<a href="http://www.understandavenue.com/" target="_blank" class="kr">KR</a> / <a href="http://www.understandavenue.com/en/" target="_blank" class="en">EN</a>
				</li>
			</ul>

			<!-- 로그인 전 //-->

			<ul id="membership">
				<li id="join"><a href="/membership/join_step1.jsp">회원가입</a></li>
				<li id="login"><a href="/membership/login.jsp">로그인</a></li>
			</ul>
			<!-- // 로그인 전 -->

			<!-- 로그인 후 //

			<div id="membership">
				<strong id="name">김선아님</strong>
				<a href="#" id="logout">로그아웃</a>
			</div>-->

			<!-- // 로그인 후 -->
		</nav>

		<a href="#" class="btn_all_menu">전체메뉴</a>
	</div>
</header>
<!-- //header include -->
