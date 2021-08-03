<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="open";
	String path3="contest";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="공모전 신청 내역";
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
		<div class="contest list">
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
            <a href="/mypage/contest_list.jsp">OPEN STAND</a>
						<a href="/mypage/contest_list.jsp"><strong>공모전 신청 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공모전 신청 내역</h2>

					<p class="con_tit_txt">OPEN STAND 공모전 신청 내역을 확인할 수 있습니다.</p>

					<!-- -->
          <table class="bbs list type1">
            <caption>공모전 신청 내역</caption>

            <colgroup>
                <col style="width:75px;" />
                <col style="width:150px;" />
                <col style="width:525px;" />
                <col style="width:150px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">참가팀명</th>
                  <th scope="col">제목</th>
                  <th scope="col">신청일</th>
                </tr>
            </thead>

            <tbody>
								<!-- 쿠폰이 없을때 -->
								<tr>
										<td class="no_data" colspan="5">공모전  신청내역이 없습니다.</td>
								</tr>


								<!-- 반복영역 // -->
                <tr>
                  <td class="number">3</td>
                  <td class="team"><span class="dotdot">세상에 밝은빛세상에세상에</span></td>
                  <td class="subject"><a href="#" class="dotdot">맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.</a></td>
                  <td class="date">2015.11.25</td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
                  <td class="number">3</td>
                  <td class="team"><span class="dotdot">세상에 밝은빛</span></td>
                  <td class="subject"><a href="#" class="dotdot">맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.</a></td>
                  <td class="date">2015.11.25</td>
                </tr>

                <tr>
                  <td class="number">3</td>
                  <td class="team"><span class="dotdot">세상에 밝은빛</span></td>
                  <td class="subject"><a href="#" class="dotdot">맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.맘스탠드 입사지원합니다.</a></td>
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
