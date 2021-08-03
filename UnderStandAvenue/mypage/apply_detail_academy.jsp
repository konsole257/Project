<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="dodream";
	String path3="academy";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="DO DREAM";
	String path3tit="아카데미 수강신청 내역";
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
		<div class="academy detail">
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
						<a href="/mypage/apply_list_academy.jsp"><strong>아카데미 수강신청 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">아카데미 수강신청 내역</h2>

					<p class="con_tit_txt">수강신청 내용을 확인 할 수 있습니다.</p>

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
								<th>강좌명</th>
								<td colspan="3">
									단골고객 만드는 노하우
									<span class="state ing">접수중</span> <!-- 접수중일때 -->
									<%-- <span class="state end">마감</span> --%> <!-- 마감일때 -->
									<%-- <span class="state complete">완료</span> --%> <!-- 완료일때 -->
								</td>
							</tr>

							<tr>
								<th>교육기간</th>
								<td>2018.2.6(화) 14:00 ~ 16:00</td>
								<th>신청일</th>
								<td>2017.1.25</td>
							</tr>

							<tr>
								<th>신청자명</th>
								<td>김하늘</td>
								<th>영업장명</th>
								<td>언더스탠드에비뉴</td>
							</tr>

							<tr>
								<th>휴대전화</th>
								<td>010-1234-5678</td>
								<th>이메일</th>
								<td>123545@arcon.com</td>
							</tr>

							<tr>
								<th>영업장 주요메뉴</th>
								<td colspan="3">브런치, 커피</td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<a href="#" class="type4 midium btn_bbs_cancel">신청취소</a>
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
