<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="heart";
	String path3="program";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="프로그램 신청 내역";
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
		<div class="program detail">
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
            <a href="/mypage/program_list.jsp">HEART STAND</a>
						<a href="/mypage/program_list.jsp"><strong>프로그램 신청 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">프로그램 신청 내역</h2>

					<p class="con_tit_txt">HEART STAND 프로그램 신청내역을 확인할 수 있습니다.</p>

					<!-- -->
          <table>
            <caption>프로그램 신청 내역 상세</caption>

            <colgroup>
                <col style="width:150px;" />
                <col style="width:300px;" />
                <col style="width:150px;" />
                <col style="width:300px;" />
            </colgroup>

            <tbody>
                <tr>
                  <th scope="row">프로그램</th>
                  <td colspan="3">기업프로그램 > 두드림 13</td>
                </tr>

                <tr>
                  <th scope="row">휴대폰</th>
                  <td>010  -  8888  -  1111</td>

                  <th scope="row">프로그램</th>
                  <td>peaaaa@naver.com</td>
                </tr>

                <tr>
                  <th scope="row">희망시간</th>
                  <td colspan="3">2015 - 12 - 30 13:50</td>
                </tr>

                <tr>
                  <th scope="row">참여자이름</th>
                  <td>김하늘, 홍길동, 정지아</td>

                  <th scope="row">참여인원</th>
                  <td>3명</td>
                </tr>

                <tr>
                  <th scope="row">그룹형태</th>
                  <td>혼성</td>

                  <th scope="row">연령</th>
                  <td>20대</td>
                </tr>

                <tr>
                  <th scope="row">내용</th>
                  <td colspan="3" class="txt_viewer">
                    두드림 13기에 꼭 참여하고 싶습니다!<br />
                    두드림 13기에 꼭 참여하고 싶습니다. 두드림 13기에 꼭 참여하고 싶습니다.<br />
                    두드림 13기에 꼭 참여하고 싶습니다.<br />
                    두드림 13기에 꼭 참여하고 싶습니다. 두드림 13기에 꼭 참여하고 싶습니다. 두드림 13기에 꼭 참여하고 싶습니다.<br /><br />

                    두드림 13기에 꼭 참여하고 싶습니다. 두드림 13기에 꼭 참여하고 싶습니다.<br />
                    두드림 13기에 꼭 참여하고 싶습니다.
                  </td>
                </tr>
            </tbody>
          </table>

          <div class="btn_area">
            <a href="#" class="midium type4 btn_bbs_list">목록</a>
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
