<%@ page contentType="text/html; charset=UTF-8" %>
<header id="header">
	<!-- 로딩 : 추가 : 2018.06.14 // -->
	<div class="loading" id="loadingImg">
		<div><img src="/m/mpjtCom/images/common/loading.png" alt=""></div>
	</div>
	<!-- // 로딩 : 추가 : 2018.06.14 -->

	<div class="typelogo">
		<h1 class="logo">
			<a href="/m/">
				<img src="/m/mpjtCom/images/common/logo.png" alt="LIPSS" />
			</a>
		</h1>
		<button class="icon btn-category">category</button>
	</div>
	<div class="typeback">
		<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
	</div>

	<!-- category// -->
	<div class="category">
		<!-- catels// -->
		<div class="swiper-container catels">
			 <ul class="sti">
				<li onclick="alert(1)">ALL</li>
				<li onclick="alert(2)">FNC</li>
				<li onclick="alert(3)">YG</li>
			 </ul>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<ul>
							<li><label><input type="radio" name="group" title="AOA" checked /><span>AOA</span></label></li>
							<li><label><input type="radio" name="group" title="iKON" /><span>iKON</span></label></li>
							<li><label><input type="radio" name="group" title="CNBLUE" /><span>CNBLUE</span></label></li>
							<li><label><input type="radio" name="group" title="NFLYING" /><span>NFLYING</span></label></li>
							<li><label><input type="radio" name="group" title="FTISLAND" /><span>FTISLAND</span></label></li>
							<li><label><input type="radio" name="group" title="SECHSKIES" /><span>SECHSKIES</span></label></li>
							<li><label><input type="radio" name="group" title="HONEYST" /><span>HONEYST</span></label></li>
							<li><label><input type="radio" name="group" title="SF9" /><span>SF9</span></label></li>
							<li><label><input type="radio" name="group" title="AOA" /><span>AOA</span></label></li>
							<li><label><input type="radio" name="group" title="iKON" /><span>iKON</span></label></li>
							<li><label><input type="radio" name="group" title="CNBLUE" /><span>CNBLUE</span></label></li>
							<li><label><input type="radio" name="group" title="NFLYING" /><span>NFLYING</span></label></li>
							<li><label><input type="radio" name="group" title="FTISLAND" /><span>FTISLAND</span></label></li>
							<li><label><input type="radio" name="group" title="SECHSKIES" /><span>SECHSKIES</span></label></li>
							<li><label><input type="radio" name="group" title="HONEYST" /><span>HONEYST</span></label></li>
							<li><label><input type="radio" name="group" title="SF9" /><span>SF9</span></label></li>
						</ul>
					</div></div><div class="swiper-scrollbar"></div></div>
				</div>
				<div class="swiper-slide">
					<ul>
						<li><label><input type="radio" name="group" title="AOA" /><span>AOA</span></label></li>
						<li><label><input type="radio" name="group" title="iKON" /><span>iKON</span></label></li>
					</ul>
				</div>
				<div class="swiper-slide">
					<ul>
						<li><label><input type="radio" name="group" title="NFLYING" /><span>NFLYING</span></label></li>
						<li><label><input type="radio" name="group" title="FTISLAND" /><span>FTISLAND</span></label></li>
						<li><label><input type="radio" name="group" title="SECHSKIES" /><span>SECHSKIES</span></label></li>
						<li><label><input type="radio" name="group" title="HONEYST" /><span>HONEYST</span></label></li>
						<li><label><input type="radio" name="group" title="SF9" /><span>SF9</span></label></li>
					</ul>
				</div>
			</div>
			 <div class="swiper-pagination"></div>
		</div>
		<!-- //catels/ -->
		<!-- memls// -->
		<div class="memls">
			<h3>MEMBERS</h3>
			<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
				<ul>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>김재덕김재덕</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>김재덕</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>김재덕</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>김재덕</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>김재덕</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_logo_112x112.jpg" alt="" /></span>ALL</a></li>
					<li><a href="#"><span><img src="/m/mpjtCom/images/temp/img_singer_112x112.jpg" alt="" /></span>Group Photo</a></li>
				</ul>
			</div></div><div class="swiper-scrollbar"></div></div>
		</div>
		<!-- //memls -->
	</div>
	<!-- //category -->
</header>
