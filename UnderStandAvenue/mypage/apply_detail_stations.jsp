<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="dodream";
	String path3="stations";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="DO DREAM";
	String path3tit="스테이션 상담예약 내역";
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
		<div class="stations detail">
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
						<a href="/mypage/apply_list_stations.jsp"><strong>상담예약 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">상담예약 내역</h2>

					<p class="con_tit_txt">상담 예약 내용을 확인할 수 있습니다.</p>

					<!-- -->
					<table class="bbs detail type1">
						<caption>수강신청 내역</caption>

						<colgroup>
						    <col style="width:150px;" />
						    <col style="width:300px;" />
						    <col style="width:150px;" />
						    <col style="width:300px;" />
						</colgroup>

						<tbody>
							<tr>
								<th>구분</th>
								<td colspan="3">금융컨설팅, 청년취업</td>
							</tr>

							<tr>
								<th>상담 분야</th>
								<td colspan="3">청년정책 상담</td>
							</tr>

							<tr>
								<th>일시</th>
								<td colspan="3">20180121 12:00</td>
							</tr>

							<tr>
								<th>이름</th>
								<td colspan="3">홍길동</td>

							</tr>

							<tr>
								<th>연락처</th>
								<td>010  -  1234  -  1234</td>
								<th>이메일</th>
								<td>hongildong@naver.com</td>
							</tr>

							<%-- <tr>
								<th>생년월일</th>
								<td>19901025</td>
								<th>이메일</th>
								<td>hongildong@naver.com</td>
							</tr> --%>

							<tr>
								<th>성별</th>
								<td>남</td>
								<th>학력</th>
								<td>대학교 졸업</td>
							</tr>

							<tr>
								<th>상담신청 내용</th>
								<td colspan="3">
									상담신청 내용입니다.상담신청 내용입니다.
									상담신청 내용입니다.상담신청 내용입니다.상담신청 내용입니다.
									상담신청 내용입니다.상담신청 내용입니다.상담신청 내용입니다.

									상담신청 내용입니다.상담신청 내용입니다.상담신청 내용입니다.
								</td>
							</tr>

							<tr>
								<th>상담확정 일시</th>
								<td colspan="3">20180121 12:00</td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
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
