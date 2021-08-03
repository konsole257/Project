<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="academy";
	String path3="regular";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="성공 두드림 Academy";
	String path3tit="정규과정";
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
	<main id="wrap" class="dodream">

		<div class="academy regular">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_academy.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/digital.jsp">DO DREAM</a>
						<a href="/academy/about.jsp">성공 두드림 Academy</a>
						<a href="/academy/regular.jsp"><strong>정규과정</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">정규과정</h2>

					<p class="con_tit_txt hide">정규과정<strong>TEXT</strong></p>

					정규과정 CONTENTS
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
