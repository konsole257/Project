<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="dodream";
	String path3="room";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="DO DREAM";
	String path3tit="회의실 예약내역";
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
	<main id="wrap" class="mypage">
		<div class="room detail">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
			            <a href="/mypage/mypage.jsp">MY PAGE</a>
			            <a href="/mypage/apply_list_stations.jsp">DO DREAM</a>
						<a href="/mypage/apply_list_room.jsp"><strong>회의실 예약내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회의실 예약내역</h2>

					<p class="con_tit_txt">회의실 예약 내용을 확인할 수 있습니다.</p>

					<!-- -->
					<table class="bbs detail type1">
						<caption>회의실 예약내역</caption>

						<colgroup>
						    <col style="width:150px;" />
						    <col style="width:300px;" />
						    <col style="width:150px;" />
						    <col style="width:300px;" />
						</colgroup>

						<tbody>
							<tr>
								<th>구분</th>
								<td colspan="3">Digital ・ Life ・ School / 성공 두드림 아카데미</td>
							</tr>

							<tr>
								<th>예약시간</th>
								<td>14:00 ~ 16:00</td>
								<th>예약일</th>
								<td>2018.1.11 (화)</td>
							</tr>

							<tr>
								<th>예약자명</th>
								<td colspan="3">김하늘</td>
							</tr>

							<tr>
								<th>회의제목</th>
								<td colspan="3">성공 두드림 아카데미 1기 세미나</td>
							</tr>

							<tr>
								<th>회의내용</th>
								<td colspan="3">시장조사 분석 및 아이템 발굴 1차 회의</td>
							</tr>

							<tr>
								<th>예약시설</th>
								<td colspan="3">카메라, 조명</td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<a href="#" class="type4 midium btn_bbs_cancel">예약취소</a>
						<a href="#" class="type4 midium btn_bbs_list">목록</a>
					</div>
					<!-- -->
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
