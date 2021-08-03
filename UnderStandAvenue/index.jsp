<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>
	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/main.css" />
	<script src="/avenueCom/js/main.js" type="text/javascript"></script>

	<script language="Javascript">
	function setCookie( name, value, expiredays ) {
	    var todayDate = new Date();
	        todayDate.setDate( todayDate.getDate() + expiredays );
	        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}

	function closePopup(div, chk, cookname) {
	    if ( document.getElementById(chk).checked ){
	        setCookie(cookname, "done", 1);
	    }
	    $('#'+div).css({'visibility':'hidden'});
	}

	window.onload = function() {
	   cookiedata = document.cookie;
	   /* popup1 */
	  if ( cookiedata.indexOf("popup=done") < 0 ){
	  	$('#popup1').css({'visibility':'visible'});
	  } else {
	    $('#popup1').css({'visibility':'hidden'});
		}
	}
	</script>
</head>
<body class="main">

	<div class="popup" id="popup1" style="left:50px; top:150px; width:470px; height:440px;">
		<div class="popup_inner">
			<a href="http://blog.naver.com/understandavenue/220664347922" target="_blank"><img src="/avenueCom/images/main/popup_img_01.gif" alt="" /></a>
		</div>

		<div class="popup_bottom">
			<input type="checkbox" id="today" />
			<label for="today">오늘 하루 이창을 띄우지 않음</label>

			<button type="button" class="btn_close" onclick="closePopup('popup1', 'today', 'popup');">닫기</button>
		</div>
	</div>


	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap">

		<!-- 메인 비주얼 // -->
		<article class="main_visual_wrap">
			<h2 class="hide">Under Stand Avenue 메인사진</h2>

			<div id="main_visual">
				<figure class="img">
					<a href="/event/event_ing_detail.jsp?04"><img src="/avenueCom/images/main/main_visual1.jpg" alt="그랜드 오픈" /></a>
				</figure>
			</div>
		</article>
		<!-- // 메인 비주얼 -->

		<!-- 공지사항 // -->
		<article class="notice_area">
			<h2><a href="/customer/notice_list.jsp">NOTICE</a></h2>

			<ul>
				<li>
					<a href="#" class="subject dotdot">언더스탠드에비뉴에서 보내드린 소중한 우편물, 언더스탠드에비뉴에서 보내드린 소중한 우편물</a>
					<time>2016.03.21</time>
				</li>

				<li>
					<a href="#" class="subject dotdot">언더스탠드에비뉴에서 보내드린 소중한 우편물</a>
					<time>2016.03.21</time>
				</li>
			</ul>
		</article>
		<!-- // 공지사항 -->

		<!-- 캘린더 // -->
		<article class="schedule_area">
			<header>
				<h2>2016.04</h2>
				<a href="/event/calendar.jsp">more</a>
			</header>

			<ul>
	      <!-- 반복영역 // -->
	      <li>
	        <a href="/event/event_ing_detail.jsp?04">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_05.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">GRAND OPENING<br />FESTIVAL</strong>
	            <time class="date">2016.4.18 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li>
	        <a href="/art/program_now_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_04.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[전시] ART STAND<br />조세현 사진전</strong>
	            <time class="date">2016.4.19 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?02">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_03.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] MOM STAND<br />선착순 50명 화분 증정</strong>
	            <time class="date">2016.4.19 ~ 2016.5.15</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?03">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_02.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] HEART STAND<br />오픈하우스</strong>
	            <time class="date">2016.4.23 ~ 2016.4.24</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>

				<li ng-repeat="calendar in calendarData">
	        <a href="/event/event_ing_detail.jsp?01">
	          <img src="/avenueCom/images/upload/calendar/calendar_thumb_01.jpg" alt="" />
	          <div class="subject_area">
	            <strong class="subject dotdot">[EVENT] WALKSHOP<br />구매자 대상 선물 증정</strong>
	            <time class="date">2016.4.22 ~ 2016.5.1</time>
	          </div>
	        </a>
	      </li>
	      <!-- // 반복영역 -->
	  	</ul>

			<div class="btn_area">
				<button type="button" class="btn_prev">이전</button>
				<button type="button" class="btn_next">다음</button>
			</div>
		</article>
		<!-- // 캘린더 -->

		<!-- 두드림 스페이스 : 추가 : 2018-02-28 // -->
		<article class="dodream_area">
			<h2 class="tit">Do Dream Space</h2>
			<p class="txt">신한은행과 고용노동부과 청년의 취업과 창업을 든든하게 서포트 합니다.</p>

			<ul>
				<li>
					<a href="#">
						<span>신한 두드림 스페이스란?</span>
						<span class="arrow"><img src="/avenueCom/images/main/news_arrow.png" alt=""></span>
						<img src="/avenueCom/images/main/news_img_shinhan.jpg" alt="" class="img">
					</a>
				</li>
				<li>
					<a href="#">
						<span>OZ Start業 Digital Life School</span>
						<span class="arrow"><img src="/avenueCom/images/main/news_arrow.png" alt=""></span>
						<img src="/avenueCom/images/main/news_img_startup.jpg" alt="" class="img">
					</a>
				</li>
				<li>
					<a href="#">
						<span>성공 두드림 아카데미 수강신청</span>
						<span class="arrow"><img src="/avenueCom/images/main/news_arrow.png" alt=""></span>
						<img src="/avenueCom/images/main/news_img_academy.jpg" alt="" class="img">
					</a>
				</li>
				<li>
					<a href="#">
						<span>고용노동부 청년 취업 상담신청</span>
						<span class="arrow"><img src="/avenueCom/images/main/news_arrow.png" alt=""></span>
						<img src="/avenueCom/images/main/news_img_moel.jpg" alt="" class="img">
					</a>
				</li>
				<li class="exclusive">
					<span>두드림 회원 전용 서비스</span>

					<ul>
						<li><a href="/stations/about.jsp">금융 컨설팅 상담 <img src="/avenueCom/images/main/news_exclusive_arrow.png" alt=""></a></li>
						<li><a href="/room/reserve.jsp">회의실 예약 <img src="/avenueCom/images/main/news_exclusive_arrow.png" alt=""></a></li>
						<li><a href="/stations/digital.jsp">데이터 이노베이션 센터 <img src="/avenueCom/images/main/news_exclusive_arrow.png" alt=""></a></li>
					</ul>
				</li>
			</ul>
		</article>
		<!-- // 두드림 스페이스 : 추가 : 2018-02-28 -->

		<!-- 스탠드 : 삭제 : 2018-02-28 //
		<article class="stand_area">
			<header>
				<h2>NEWS</h2>
				<p>언더스탠드<br />에비뉴의<br />최근 소식을<br />확인하세요.</p>
				<a href="/under/location.jsp" class="btn_location">찾아오는길</a>
			</header>

			<article class="top">
				<a href="/social/partner.jsp">
					<h3>SOCIAL <span>S</span>TAND</h3>
					<p>
					소셜스탠드<br>
					청년파트너 17’-18’
					</p>
					<strong>
					새롭고 활기 넘치는<br>
					청년파트너 일곱 브랜드
					</strong>
					<img src="/avenueCom/images/main/news_img_social.gif" alt="" />
				</a>
			</article>

			<div>
				<article class="right">
					<a href="/mom/brinner.jsp">
						<h3>MOM <span>S</span>TAND</h3>
						<p>
						맘스탠드브리너<br>
						WINTER SPECIAL
						</p>
						<strong>
						따뜻한 크림과 그릴로<br>
						즐기는 특별한 식사
						</strong>
						<img src="/avenueCom/images/main/news_img_mom.gif" alt="" />
					</a>
				</article>

				<article class="left">
					<a href="/youth/doodle.jsp">
						<h3><span>D</span>OODLE SHOP</h3>
						<p>
						두들샵
						</p>
						<strong>
						행복한 반려가족을 위한<br>
						용품&amp;미용&amp;호텔서비스
						</strong>
						<img src="/avenueCom/images/main/news_img_doodle.gif" alt="" />
					</a>
				</article>
			</div>

			<article class="bottom">
				<a href="#">
					<h3>SOCIAL <span>S</span>TAND</h3>
					<p>
					WALKSHOP<br>
					겨울아, 기다렸어
					</p>
					<strong>
					추운 겨울도 두렵지 않을<br>
					Winter Collection
					</strong>
					<img src="/avenueCom/images/main/news_img_social.gif" alt="" />
				</a>
			</article>

			<div>
				<article class="left">
					<a href="/power/about.jsp">
						<h3>POWER <span>S</span>TAND</h3>
						<p>
						미생의 꿈을<br>
						함께 응원합니다.
						</p>
						<strong>일하고 싶은 당신의<br>든든한 동반자</strong>
						<img src="/avenueCom/images/main/news_img_power.gif" alt="" />
					</a>
				</article>

				<article class="right dodream">
					<a href="/startup/social.jsp">
						<h3>DO <span>D</span>REAM</h3>
						<p>
							창업창직취업<br>
							플랫폼 오픈
						</p>
						<strong>
						신한 두드림 스페이스 &amp;<br>
						고용노동부 청년 스테이션 오픈
						</strong>
						<img src="/avenueCom/images/main/news_img_dodream.jpg" alt="" />
					</a>
				</article>
			</div>

			<article class="top">
				<a href="#">
					<h3>ART <span>S</span>TAND</h3>
					<p>
					멜리언즈<br>
					반려생활 展
					</p>
					<strong>
					나와 함께하는<br>
					반려동물, 행복할까요?
					</strong>
					<img src="/avenueCom/images/main/news_img_art.gif" alt="" />
				</a>
			</article>

		</article>-->
		<!-- // 스탠드 -->

		<!-- 공연, 전시, 체험 소식 // -->
		<article class="culture_area">
			<h2 class="hide">공연, 전시, 체험 소식</h2>

			<p>언더스탠드에비뉴를 다채롭게 물들일 공연, 전시, 체험 소식</p>

			<ul>
				<li>
					<a href="/event/event_ing_detail.jsp?04">
						<img src="/avenueCom/images/upload/culture/culture_thumb_01.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_01_ov.jpg" alt="" class="ov" />
					</a>
				</li>
				<li>
					<a href="http://blog.naver.com/understandavenue/220684223135" target="_blank">
						<img src="/avenueCom/images/upload/culture/culture_thumb_02.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_02_ov.jpg" alt="" class="ov" />
					</a>
				</li>
				<li>
					<a href="/event/event_ing_detail.jsp?04">
						<img src="/avenueCom/images/upload/culture/culture_thumb_03.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_03_ov.jpg" alt="" class="ov" />
					</a>
				</li>
			</ul>

			<a href="/shop/">WALKSHOP 바로가기</a>
		</article>
		<!-- // 공연, 전시, 체험 소식 -->

		<!-- SNS // -->
		<section class="sns">
			<h2 class="hide">Under Stand Avenue SNS</h2>

			<div>
				<article class="facebook">
					<h3>Facebook.</h3>

					<a href="https://www.facebook.com/understandavenue/posts/1162067017144907:0" target="_blank">
						<img src="/avenueCom/images/main/@temp_sns_facebook.jpg" alt="" />
						<strong class="subject">[GRAND OPENING]<br />조세현 사진전 (4.19~5.1)</strong>
					</a>

					<a href="https://www.facebook.com/understandavenue" target="_blank" class="btn_more">more</a>
				</article>

				<article class="blog">
					<h3>Blog.</h3>

					<a href="http://blog.naver.com/understandavenue/220678067387" target="_blank">
						<img src="/avenueCom/images/main/@temp_sns_blog.jpg" alt="" />
						<strong class="subject">[OPEN EVENT] Grow Green Share Green<br />화분 증정 이벤트</strong>
					</a>

					<a href="http://blog.naver.com/understandavenue" target="_blank" class="btn_more">more</a>
				</article>

				<article class="instagram">
					<h3>Instagram.</h3>

					<a href="https://instagram.com/p/BEGMGZnj4Pq/" target="_blank">
						<img src="/avenueCom/images/main/@temp_sns_instagram.jpg" alt="" />
						<strong class="subject">[HEART STAND] 커플이 함께하는<br />커플 욕구 테스트</strong>
					</a>

					<a href="https://instagram.com/understandavenue/" target="_blank" class="btn_more">more</a>
				</article>

				<article class="youtube">
					<h3>Youtube.</h3>

					<a href="https://youtu.be/ZgaVIPgmlmQ" target="_blank">
						<img src="/avenueCom/images/main/@temp_sns_youtube.jpg" alt="" />
						<strong class="subject">[UNDER STAND AVENUE]<br />7개월 간의 빌드모션 공개</strong>
					</a>

					<a href="https://www.youtube.com/channel/UCynM15yprQX8mBVzt5QoPBA" target="_blank" class="btn_more">more</a>
				</article>
			</div>
		</section>
		<!-- // SNS -->

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
