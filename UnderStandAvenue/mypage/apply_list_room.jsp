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
		<div class="room list">
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
					<h2 class="con_tit">아카데미 수강신청 내역</h2>

					<p class="con_tit_txt">회의실 예약 내용을 확인할 수 있습니다.</p>

					<!-- -->
					<table class="bbs list type1">
						<caption>수강신청 내역</caption>

						<colgroup>
						    <col style="width:75px;" />
						    <col style="width:240px;" />
						    <col style="width:210px;" />
						    <col style="width:125px;" />
							<col style="width:120px;" />
							<col style="width:130px;" />
						</colgroup>

						<thead>
						    <tr>
						      <th scope="col">번호</th>
						      <th scope="col">회의제목</th>
						      <th scope="col">예약 일시</th>
							  <th scope="col">회의실명</th>
						      <th scope="col">신청일</th>
							  <th scope="col">상태</th>
						    </tr>
						</thead>

						<tbody>
							<!-- 수강신청 내역이 없을때 -->
							<tr>
								<td class="no_data" colspan="6">회의실 예약내역이 없습니다.</td>
							</tr>


							<!-- 반복영역 // -->
						    <tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="./apply_detail_room.jsp">청년 START業 협의</a></td>
						      <td class="reserve">20171225 10:00~11:00</td>
							  <td class="name">두드림룸</td>
							  <td class="date">2017.11.25</td>
						      <td class="state">
								  예약완료
								  <div class="btn_area">
  								  	<a href="#" class="small type4" target="_self">예약취소</a>
  								  </div>
							  </td>
						    </tr>
							<!-- // 반복영역 -->

							<tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="#">청년 START業 협의</a></td>
						      <td class="reserve">20171225 10:00~11:00</td>
							  <td class="name">두드림룸</td>
							  <td class="date">2017.11.25</td>
						      <td class="state">
								  예약완료
								  <div class="btn_area">
  								  	<a href="#" class="small type4" target="_self">예약취소</a>
  								  </div>
							  </td>
						    </tr>

							<tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="#"> DO DREAM 지원</a></td>
						      <td class="reserve">20171225 10:00~11:00</td>
							  <td class="name">두드림룸</td>
							  <td class="date">2017.11.25</td>
						      <td class="state cancel">
								  예약취소
							  </td>
						    </tr>


						</tbody>
					</table>

					<div class="paging">
						<a href="#" class="prev">이전</a>
						<span class="num">
							<a href="#" class="on"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a href="#" class="next">다음</a>
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
