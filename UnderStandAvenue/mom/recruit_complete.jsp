<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="recruit";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="채용안내";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mom">

		<div class="recruit complete">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mom.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
            <a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/mom/about.jsp">MOM STAND</a>
						<a href="/mom/about.jsp">About</a>
						<a href="/mom/recruit.jsp">채용안내</a>
						<a href="/mom/recruit_write.jsp"><strong>입사지원</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">입사지원</h2>
					<p class="con_tit_txt">꿈과 열정을 갖고 미래를 꿈꾸는 외식인재를 기다립니다.</p>

          <!-- -->
          <div class="complete">
            <p class="text1">
              <strong> 입사지원이 완료</strong>되었습니다.<br />
              좋은 결과 있으시길 바랍니디
            </p>

            <div class="text2">
              <p>신청내역은 <em>마이페이지 &gt; 입사지원 조회</em>에서 확인 가능합니다.</p>

              <p>
                지원결과는 선택하신 연락방법으로 개별 통보되며,<br />
                입사 관련 문의는 아래 연락처로 가능합니다.<br /><br />
                felix9904@understandavenue.com
              </p>
            </div>

            <div class="btn_area">
              <a class="big type1 btn_recruit" href="/mom/recruit.jsp">채용안내 둘러보기</a>
				<a class="big type2 btn_inquiry" href="#">입사지원 조회</a>
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
