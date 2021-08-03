<%@ page contentType="text/html; charset=UTF-8" %>
<nav id="quickMenu">
	<ul class="menu_inner">
		<li><a href="#" class="icon mylipss">MY LIPSS</a></li>
		<li><a href="#" class="icon search">검색</a></li>
		<li><a href="/m/order/cart.jsp" class="icon bag">장바구니<em>3</em></a></li>
		<!-- 로그인 되어있을때
		<li><a href="#" class="icon login">로그아웃</a></li>
		-->
		<li><a href="#" class="icon logout">로그인</a></li>
		<li><button class="icon nav">MENU</button></li>
	</ul>

	<!-- loginlayer// -->
	<div class="loginlayer">
		<ul>
			<li><a href="/m/member/login.jsp">로그인</a></li>
			<li><a href="/m/member/join_choice.jsp">회원가입</a></li>
			<li><a href="/m/member/login.jsp">비회원 주문조회</a></li>
		</ul>
	</div>
	<!-- //loginlayer -->

	<!-- mylipss// -->
	<div id="quickMylipps" class="inner mylipss">
		<h2>MY LIPSS</h2>
		<button class="icon btn-close">Close</button>
		<button class="icon btn-setting">Setting</button>
		<button class="icon btn-prev">Prev</button>

		<div class="swiper-container popscroll view_area">
			<div class="swiper-wrapper"><div class="swiper-slide">
				<ul class="view_list">
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
							<div class="progress1"><div></div></div>
							<div class="progress2"><div></div></div>
							<div class="progress3"><div></div></div>
							<div class="progress4"><div></div></div>
						</div>
						<div class="have"><span class="now">7</span> / <span class="max">100</span></div>
						<div class="name">BOBBY</div>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
							<div class="progress1"><div></div></div>
							<div class="progress2"><div></div></div>
							<div class="progress3"><div></div></div>
							<div class="progress4"><div></div></div>
						</div>
						<div class="have"><span class="now">7</span> / <span class="max">100</span></div>
						<div class="name">BOBBY</div>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
							<div class="progress1"><div></div></div>
							<div class="progress2"><div></div></div>
							<div class="progress3"><div></div></div>
							<div class="progress4"><div></div></div>
						</div>
						<div class="have"><span class="now">80</span> / <span class="max">100</span></div>
						<div class="name">BOBBY</div>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
							<div class="progress1"><div></div></div>
							<div class="progress2"><div></div></div>
							<div class="progress3"><div></div></div>
							<div class="progress4"><div></div></div>
						</div>
						<div class="have"><span class="now">50</span> / <span class="max">100</span></div>
						<div class="name">BOBBY</div>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<button type="button" class="btn_add">당신의 최애는 누구인가요?</button>
					</li>
				</ul>
			</div></div>
			<div class="swiper-scrollbar"></div>
		</div>

		<div class="settings_area">
			<!-- mysinger// -->
			<div class="my_singer">
				<ul>
					<!-- 수정 : 2018.05.25 // -->
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">LEE SEUNG HOON</span>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<!-- // 수정 : 2018.05.25 -->
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">LEE SEUNG HOON</span>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">LEE SEUNG HOON</span>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">LEE SEUNG HOON</span>
						<button type="button" class="btn_del">삭제</button>
					</li>
					<li>
						<div class="img_area">
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">LEE SEUNG HOON</span>
						<button type="button" class="btn_del">삭제</button>
					</li>
				</ul>
			</div>
			<!-- //mysinger -->

			<!-- alphabet// -->
			<div class="alphabet_area">
				<h3>GROUP (A - Z)</h3>
				<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
					<ul>
						<li><label><input type="radio" name="group" checked><span>AOA</span></label></li>
						<li><label><input type="radio" name="group"><span>iKON</span></label></li>
						<li><label><input type="radio" name="group"><span>CNBLUE</span></label></li>
						<li><label><input type="radio" name="group"><span>NFLYING</span></label></li>
						<li><label><input type="radio" name="group"><span>FTISLAND</span></label></li>
						<li><label><input type="radio" name="group"><span>SECHSKIES</span></label></li>
						<li><label><input type="radio" name="group"><span>HONEYST</span></label></li>
						<li><label><input type="radio" name="group"><span>SF9</span></label></li>
					</ul>
				</div></div><div class="swiper-scrollbar"></div></div>
			</div>
			<!-- //alphabet -->

			<!-- singer_list// -->
			<div class="swiper-container popscroll singer_list"><div class="swiper-wrapper"><div class="swiper-slide">
				<ul>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name="" checked><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name=""><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name=""><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name=""><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name=""><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name=""><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">BOBBY</span>
					</li>
					<li>
						<div class="img_area">
							<label><input type="checkbox" name="" checked><span>선택</span></label>
							<figure class="pic"><img src="/m/mpjtCom/images/temp/img_logo_112x112.jpg" alt=""></figure>
						</div>
						<span class="name">ALL</span>
					</li>
				</ul>
			</div></div><div class="swiper-scrollbar"></div></div>
			<!-- //singer_list -->
		</div>

	</div>
	<!-- //mylipss -->
	<!-- search// -->
	<div id="quickSearch" class="inner search">
		<h2 class="hide">검색</h2>
		<button class="icon btn-close">Close</button>

		<!-- search// -->
		<div class="searcharea">
			<input type="text" name="" title="검색어 입력" />
			<button class="icon btn-search">검색</button>
		</div>
		<!-- //search -->

		<!-- recommend// -->
		<div class="recommend">
			<h3>Recommend</h3>
			<div class="swiper-container popscroll ls"><div class="swiper-wrapper"><div class="swiper-slide">
				<a href="#">#젝키에이틴미공개CUT</a>
				<a href="#">#젝키Thestudio컷</a>
				<a href="#">#EVERYD4Y</a>
				<a href="#">#젝키20주년콘서트</a>
				<a href="#">#YG</a>
				<a href="#">#iKON</a>
				<a href="#">#B.I입덕컷</a>
				<a href="#">#정용화</a>
				<a href="#">#FNC</a>
				<a href="#">#젝키에이틴미공개CUT</a>
				<a href="#">#젝키Thestudio컷</a>
				<a href="#">#EVERYD4Y</a>
				<a href="#">#젝키20주년콘서트</a>
				<a href="#">#YG</a>
				<a href="#">#iKON</a>
				<a href="#">#B.I입덕컷</a>
				<a href="#">#정용화</a>
				<a href="#">#FNC</a>
			</div></div><div class="swiper-scrollbar"></div></div>
		</div>
		<!-- //recommend -->

		<!-- group// -->
		<div class="group">
			<h3>GROUP (A - Z)</h3>
			<div class="swiper-container popscroll ls"><div class="swiper-wrapper"><div class="swiper-slide">
				<a href="#">AOA</a>
				<a href="#">iKON</a>
				<a href="#">CNBLUE</a>
				<a href="#">NFLYING</a>
				<a href="#">FTISLAND</a>
				<a href="#">SF9</a>
				<a href="#">HONEYST</a>
				<a href="#">SECHSKIES</a>
				<a href="#">AOA</a>
				<a href="#">iKON</a>
				<a href="#">CNBLUE</a>
				<a href="#">NFLYING</a>
				<a href="#">FTISLAND</a>
				<a href="#">SF9</a>
				<a href="#">HONEYST</a>
				<a href="#">SECHSKIES</a>
			</div></div><div class="swiper-scrollbar"></div></div>
		</div>
		<!-- //group -->
	</div>
	<!-- //search -->
	<!-- menu// -->
	<div id="quickNav" class="inner nav">
		<h2 class="hide">menu</h2>
		<button class="icon btn-close">Close</button>

		<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
			<div class="navinner">
				<!-- nav//-->
				<ul class="nav">
					<li><a href="/m/"><span>Home</span><small>홈</small></a></li>
					<li><a href="/m/goods/index.jsp"><span>Goods</span><small>상품</small></a></li>
					<li><a href="#"><span>LIPSS Ranking</span><small>립스 랭킹</small></a></li>
					<li><a href="#"><span>LIPSS Talk</span><small>립스 토크</small></a></li>
					<li><a href="/m/customer/index.jsp"><span>Customer</span><small>고객센터</small></a></li>
					<li><a href="#"><span>ABOUT LIPSS?</span><small>ABOUT LIPSS란?</small></a></li>
				</ul>
				<ul class="navetc">
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#noemail" onclick="fn.popupOpen('#noemail')">이메일무단수집거부</a></li>
					<li><a href="#ssl" onclick="fn.popupOpen('#ssl')">SSL보안인증</a></li>
				</ul>
				<!-- //nav-->
				<div class="info">
					COPYRIGHT(C) 2014 한국후지필름(주). ALL RIGHTS RESERVED
					사업자등록번호 : 248-86-00926  대표 : 박호성<br />
					통신판매업신고번호 : 제2012-서울금천-0536호<br />
					개인정보 보호책임자 : 안병규 사업자명 : 한국후지필름(주)<br />
					서울시 금천구 가산디지털1로 222 어바니엘가산 2층<br />
					TEL : 02-3281-7700  FAX : 02-3281-4070
				</div>

				<div class="certification">
					<a href="#" class="kcp">KCP</a>
					<a href="#" class="ftc">공정거래위원회</a>
				</div>
			</div>
		</div></div><div class="swiper-scrollbar"></div></div>
	</div>
	<!-- //menu -->

	<!-- SSL인증 : 추가 : 2018.06.04// -->
	<div id="ssl" class="popup ssl">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#ssl')">닫기</button>
				<h3>SSL인증 <span>SSL Security Authentication</span></h3>

				<div class="swiper-container popscroll scroll_area"><div class="swiper-wrapper"><div class="swiper-slide">
					<div class="txt">
						<p>
							http://www.lipss.kr은 다음과 같이 Globalsign Organization 서비스를 사용합니다.
						</p>

						<ul>
							<li>사이트 이름 http://www.lipss.kr</li>
							<li>SSL 인증 상태 <span>유효 (24-May-2018 - 25-May-2019)</span></li>
							<li>회사/단체 KOREA FUJIFILM.<br>kasan-dong Seoul, KR</li>
						</ul>

						<dl>
							<dt>암호화된 데이타 전송</dt>
							<dd>
								이 웹사이트는 Globalsign SSL 인증서 를 사용해 사용자의 개인 정보를<br>안전하게 유지할 수 있습니다.<br>
								https로 시작하는 모든 주소와 교환되는 정보는 전송하기 전에 SSL을 사용하여<br>암호화됩니다.
							</dd>

							<dt>신원 확인</dt>
							<dd>
								KOREA FUJIFILM은 www.fujifilm.co.kr에 위치한 웹사이트의 소유업체 또는<br>운영업체로 확인되었습니다. 공식적인 기록을 통해 KOREA FUJIFILM이 유효한<br>사업체임을 확인할 수 있습니다.
							</dd>
						</dl>

						<p class="txt2">
							웹 사이트를 방문할 때 보안상의 위험을 방지하려면 방문한 웹 사이트의 주소가 방문하고자<br>
							했던 주소와 일치하는지 항상 확인하십시오 . 이 확인 페이지의 주소가 http://www.lipss.kr/<br>
							추가필요 으로 시작하는지 항상 확인하십시오 .
						</p>

						<a href="#" class="btn_ok" onclick="fn.popupClose();"><span>UCERT 확인</span></a>
					</div>

				</div></div><div class="swiper-scrollbar"></div></div>
			</div>
		</div>
	</div>
	<!-- //SSL인증-->

	<!-- 이메일 무단 수집 거부 : 추가 : 2018.06.04// -->
	<div id="noemail" class="popup noemail">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#noemail')">닫기</button>
				<h3>이메일 무단 수집 거부</h3>

				<div class="swiper-container popscroll scroll_area"><div class="swiper-wrapper"><div class="swiper-slide">
					<div class="txt">
						<p>
							본 웹사이트에서는 게시된 이메일 주소가 전자우편 수집프로그램이나 그 밖의 기술적 장치를 이용하여 수집되는 것을 거부합니다.이를 위반 시 ‘정보통신망 이용촉진 및 정보보호’ 등에 의해 처벌받을 수 있습니다.
						</p>

						<a href="#" class="btn_ok" onclick="fn.popupClose();"><span>확인<span>Ok</span></span></a>
					</div>

				</div></div><div class="swiper-scrollbar"></div></div>
			</div>
		</div>
	</div>
	<!-- //이메일 무단 수집 거부-->
</nav>



<div class="landscape"><span>Rotate your device</span></div>

<script type="text/javascript" src="/m/mpjtCom/js/function.js"></script>
<script type="text/javascript" src="/m/mpjtCom/js/lipss.js"></script>
