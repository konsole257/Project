<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="customer";
	String path2="qna";
	String path3="";
	String path4="";
	String path1tit="고객센터";
	String path2tit="1:1 문의하기";
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
	<main id="wrap" class="customer">
		<div class="qna">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_customer.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/customer/notice.jsp">고객센터</a>
						<a href="/customer/faq.jsp"><strong>1:1 문의하기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">FAQ</h2>

					<p class="con_tit_txt">궁금하거나 불편한 사항에 대해 문의해주세요.</p>

					<!-- -->
					<div class="complete">
						<p class="text1">
							<strong>1:1 문의가 등록</strong>되었습니다.
						</p>

						<div class="text2">
							<p>신청내역은 <em>마이페이지 > 문의하기</em>에서 확인 가능합니다.</p>

							<p>
								문의하신 내용은 확인 후 빠른 시일 내<br />
								선택하신 연락방법으로 답변 드리겠습니다.
							</p>
						</div>

						<div class="btn_area">
							<a class="big type1 btn_home" href="/">홈으로</a>
							<a class="big type2 btn_list" href="#">문의내역 확인하기</a>
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
