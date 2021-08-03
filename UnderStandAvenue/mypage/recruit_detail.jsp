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
		<div class="recruit detail">
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
          <table>
            <caption>입사지원 내역 상세</caption>

            <colgroup>
                <col style="width:150px;" />
                <col style="width:300px;" />
                <col style="width:150px;" />
                <col style="width:300px;" />
            </colgroup>

            <tbody>
                <tr>
                  <th scope="row">입사전형</th>
                  <td colspan="3">다문화전형</td>
                </tr>

                <tr>
                  <th scope="row">모집부분</th>
                  <td>Brinner</td>

                  <th scope="row">희망업무</th>
                  <td>주방</td>
                </tr>

                <tr>
                  <th scope="row">이름</th>
                  <td>홍길동</td>

                  <th scope="row">휴대폰</th>
                  <td>010 - 1234 - 5678</td>
                </tr>

                <tr>
                  <th scope="row">이메일</th>
                  <td colspan="3">aaabbbccc@naver.com</td>
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
