<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
  String path1="stand";
	String path2="youth";
	String path3="workplace";
	String path4="maylily";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="ABOUT";
	String path4tit="소개";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="youth">
		<div class="workplace maylily">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/about.jsp">Work Place</a>
						<a href="/youth/about.jsp"><strong>May Lily</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Work Place</h2>

					<p class="con_tit_txt">꿈이 실현되는 일터</p>

          <p class="txt1">
            YOUTH STAND의 청소년은 애완동물관리, 네일아트, 바리스타, 베이커리, 매장접객서비스 등<br />
            직업의 재능과 관심에 따라 필요한 전문 역량을 일터 현장에서 키워가고 있습니다.


          <div class="txt2_area">
            <p class="txt2">
              <strong>May Lily(메이릴리 네일샵)</strong>
              어제보다 행복한 오늘<br /><br />

              5월 숲에서 피어나는 은은한 May Lily (은방울꽃) 의 꽃말은<br />
							“행복은 반드시 찾아온다” 입니다.<br />
              행복을 주는 은은한 May Lily처럼 손끝에 행복을 그리는 이 곳,<br />
              YOUTH STAND 청소년들이 정성을 담아 특별한 날을 선물합니다.<br /><br />

							아름다움으로 행복해지는 시간<br />
							당신을 만나 오늘 더 행복합니다.

            </p>

            <dl>
              <dt>영업시간</dt>
              <dd>월~일  11:00~21:00</dd>

              <dt>제공서비스</dt>
              <dd>네일&amp;페디 케어, 젤 케어 </dd>

              <dt>전화번호</dt>
              <dd>02-2135-8187  </dd>

              <dt>위치</dt>
              <dd>언더스탠드에비뉴 08호</dd>

            </dl>
          </div>

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
