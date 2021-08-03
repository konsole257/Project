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
		<div class="academy list">
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
					<table class="bbs list type1">
						<caption>수강신청 내역</caption>

						<colgroup>
						    <col style="width:75px;" />
						    <col style="width:250px;" />
						    <col style="width:275px;" />
						    <col style="width:150px;" />
							<col style="width:150px;" />
						</colgroup>

						<thead>
						    <tr>
						      <th scope="col">번호</th>
						      <th scope="col">강좌명</th>
						      <th scope="col">교육기간</th>
							  <th scope="col">신청일</th>
						      <th scope="col">상태</th>

						    </tr>
						</thead>

						<tbody>
							<!-- 수강신청 내역이 없을때 -->
							<tr>
								<td class="no_data" colspan="5">아카데미 수강신청 내역이 없습니다.</td>
							</tr>


							<!-- 반복영역 // -->
						    <tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="./apply_detail_academy.jsp">단골고객 만드는 노하우</a></td>
						      <td class="lab">2018.2.6(화) 14:00 ~ 16:00</td>
							  <td class="date">2015.11.25</td>
						      <td class="state">
								  신청완료
								  <div class="btn_area">
  								  	<a href="#" class="small type4" target="_self">신청취소</a>
  								  </div>
							  </td>

						    </tr>
							<!-- // 반복영역 -->

							<tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="#">단골고객 만드는 노하우</a></td>
						      <td class="lab">2018.2.6(화) 14:00 ~ 16:00</td>
							  <td class="date">2015.11.25</td>
						      <td class="state">
							  	마감

								<div class="btn_area">
								<a href="#" class="small type4" target="_self">신청취소</a>
								</div>
							</td>

						    </tr>

							<tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="#">단골고객 만드는 노하우</a></td>
						      <td class="lab">2018.2.6(화) 14:00 ~ 16:00</td>
							  <td class="date">2015.11.25</td>
						      <td class="state cancel">신청취소</td>

						    </tr>

							<tr>
						      <td class="number">1</td>
						      <td class="subject"><a href="#">단골고객 만드는 노하우</a></td>
						      <td class="lab">2018.2.6(화) 14:00 ~ 16:00</td>
							  <td class="date">2015.11.25</td>
						      <td class="state cancel">수강완료</td>
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
