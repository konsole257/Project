<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="contest";
	String path4="contest";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="공모전 신청";
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
	<main id="wrap" class="open">
		<div class="contest complete">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_open.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/open/about.jsp">OPEN STAND</a>
						<a href="/open/contest_write.jsp"><strong>공모전 신청 작성</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">OPEN STAND</h2>
					<p class="con_tit_txt">세상을 밝힐 아이디어를 기다립니다.</p>

          <!-- -->
          <div class="complete">
            <p class="text1">
              <strong>공모전 신청이 완료</strong>되었습니다.
            </p>

            <div class="text2">
              <p>신청내역은 <em>마이페이지 &gt; 공모전 신청내역</em>에서 확인 가능합니다.</p>

              <p>
                문의하신 내용은 확인 후 빠른 시일 내<br />
                 선택하신 연락방법으로 답변 드리겠습니다.<br />
              </p>
            </div>

            <div class="btn_area">
              <a class="big type1 btn_home" href="/">홈으로</a>
							<a class="big type2 btn_list" href="#">공모전 신청내역</a>
            </div>
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
