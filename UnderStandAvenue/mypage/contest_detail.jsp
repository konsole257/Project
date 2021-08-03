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
		<div class="contest detail">
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
          <table>
            <caption>공모전 신청 내역 상세</caption>

            <colgroup>
                <col style="width:150px;" />
                <col style="width:300px;" />
                <col style="width:150px;" />
                <col style="width:300px;" />
            </colgroup>

            <tbody>
                <tr>
                  <th scope="row">참가팀명</th>
                  <td colspan="3">세상에 밝은 빛</td>
                </tr>

                <tr>
                  <th scope="row">대표자명</th>
                  <td>김준수</td>

                  <th scope="row">휴대폰</th>
                  <td>010 - 1234 - 5678</td>
                </tr>

                <tr>
                  <th scope="row">이메일</th>
                  <td colspan="3">peaaaa@naver.com</td>
                </tr>

                <tr>
                  <th scope="row">공간 사용 신청기간</th>
                  <td colspan="3">2015 -11 - 01 ~ 2016 - 02 - 03/td>
                </tr>

                <tr>
                  <th scope="row">조직형태</th>
                  <td>스타트업</td>

                  <th scope="row">사업아이템</th>
                  <td>전구</td>
                </tr>

                <tr>
                  <th scope="row">첨부파일</th>
                  <td colspan="3" class="download">
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                  </td>
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
