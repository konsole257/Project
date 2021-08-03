<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="room";
	String path3="info";
	String path4="";
	String path1tit="Do DREAM";
	String path2tit="회의실 예약";
	String path3tit="이용안내";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="room">

		<div class="info">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_room.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/room/info.jsp">회의실 예약</a>
						<a href="/room/info.jsp"><strong>이용안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회의실 이용안내</h2>

					<p class="con_tit_txt">신한 두드림 스페이스 프로그램을 이용하는 교육생이면 누구나 회의실을 자유롭게 이용할 수 있습니다.</p>

					<ul class="room_list">
						<li class="dodream">
							<img src="/avenueCom/images/sub/room_about_img1.jpg" alt="">
							<p class="name">두드림룸</p>
							<ul class="option">
								<li><b>수용인원 </b>: 최대 12인</li>
								<li><b>구비시설 </b>: 모니터 1개, 테이블 4개, 의자 12개</li>
							</ul>
						</li>

						<li class="oz">
							<img src="/avenueCom/images/sub/room_about_img2.jpg" alt="">
							<p class="name">OZ룸 (포토 스튜디오)</p>
							<ul class="option">
								<li><b>수용인원 </b>: 최대 6인</li>
								<li><b>구비시설 </b>(사전예약필요) : <span>카메라(교육팀 보관), 외장 플래시(교육팀 보관), 롤스크린, 조명 2개, 테이블 3개, 의자 7개</span></li>
							</ul>
						</li>
					</ul>

					<div class="room_info">
						<h3 class="tit">이용안내</h3>

						<ul>
							<li>회원제 : Digital &middot; Life &middot; School 선수, 성공 두드림 아카데미 수강생 이용 가능</li>
							<li>예약날짜 : 희망 사용일로부터 최대 한달 전부터 예약 가능, 당일 예약 가능</li>
							<li>신청인 1인당 최대 5건 예약 가능, 1일 최대 2시간, 최대 2건 예약 가능</li>
							<li>회의실 내 음식물 섭취 금지(음료 제외)</li>
						</ul>
					</div>
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
