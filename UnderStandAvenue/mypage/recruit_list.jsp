<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="mom";
	String path3="recruit";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="입사지원 내역";
	String path3tit="";
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
		<div class="recruit list">
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
            <a href="/mypage/recruit_list.jsp">MOM STAND</a>
						<a href="/mypage/recruit_list.jsp"><strong>입사지원 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">입사지원 내역</h2>

					<p class="con_tit_txt">MOM STAND 입사지원 내역을 확인할 수 있습니다.</p>

					<!-- -->
          <table class="bbs list type1">
            <caption>입사지원 내역</caption>

            <colgroup>
                <col style="width:75px;" />
                <col style="width:150px;" />
                <col style="width:525px;" />
                <col style="width:150px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">입사전형</th>
                  <th scope="col">제목</th>
                  <th scope="col">지원일</th>
                </tr>
            </thead>

            <tbody>
								<!-- 쿠폰이 없을때 -->
								<tr>
										<td class="no_data" colspan="5">입사지원 내역이 없습니다.</td>
								</tr>


								<!-- 반복영역 // -->
                <tr>
                  <td class="number">3</td>
                  <td class="program">일반전형</td>
                  <td class="subject"><a href="#" class="dotdot">아직도 팀원과 어색하다면? 음악으로 하나되자!하나되자!하나되자!하나되자!자!하나되자!</a></td>
                  <td class="date">2015.11.25</td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
                  <td class="number">3</td>
                  <td class="program">다문화 전형</td>
                  <td class="subject"><a href="#" class="dotdot">아직도 팀원과 어색하다면? 음악으로 하나되자!하나되자!하나되자!하나되자!</a></td>
                  <td class="date">2015.11.25</td>
                </tr>

                <tr>
                  <td class="number">3</td>
                  <td class="program">다문화 전형</td>
                  <td class="subject"><a href="#" class="dotdot">아직도 팀원과 어색하다면? 음악으로 하나되자!하나되자!하나되자!하나되자!</a></td>
                  <td class="date">2015.11.25</td>
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
