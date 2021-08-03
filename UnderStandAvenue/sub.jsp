<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->
	
	<!-- wrap -->
	<main id="wrap" class="customer">
		<div class="notice">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_customer.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/customer/notice.jsp">CS CENTER STAND</a>
						<a href="/customer/notice.jsp"><strong>공지사항</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공지사항</h2>

					<p class="con_tit_txt">비언언어적인 커뮤니케이션 활동으로 긍정적인 에너지를 독려하는 프로그램입니다.</p>

					<!-- -->
					
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