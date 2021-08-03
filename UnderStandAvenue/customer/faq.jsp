<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="customer";
	String path2="faq";
	String path3="";
	String path4="";
	String path1tit="고객센터";
	String path2tit="FAQ";
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
		<div class="faq">
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
						<a href="/customer/faq.jsp"><strong>FAQ</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">FAQ</h2>

					<p class="con_tit_txt">자주 문의하시는 질문들입니다.</p>

					<!-- -->
					<nav class="notice_tab" data-ui="tab">
						<h3 class="hide">FAQ 분류</h3>
						<!-- 2018.02.02 : 수정 // -->
						<ul>
							<li class="on"><!-- 해당페이지에서 class="on" -->
								<span class="all_tab_menu" data-ui="tab_menu"><a href="#">전체</a></span>
							</li>

							<li>
								<span class="under_tab_menu" data-ui="tab_menu"><a href="#">UNDER STAND AVENUE</a></span>
							</li>

							<li>
								<span class="dodream_tab_menu" data-ui="tab_menu"><a href="#">DO DREAM</a></span>
							</li>

							<!-- 2016-04-22 : 추가 // -->
							<li>
								<span class="walkshop_tab_menu" data-ui="tab_menu"><a href="#">WALKSHOP</a></span>
							</li>
							<!-- // 2016-04-22 : 추가 -->
						</ul>
						<!-- // 2018.02.02 : 수정 -->
					</nav>

					<div class="search_form">
						<form>
							<fieldset>
								<legend>검색</legend>

								<input id="u_search" type="text" />
								<button type="submit">검색</button>
							</fieldset>
						</form>

						<p>자주 물으시는 질문과 답변입니다.  찾는 질문이 없으시면 1:1 문의하기를 이용해주세요.</p>
					</div>

					<div class="bbs faq" data-fn="faq">
						<article class="article">
							<header>
								<strong><span>HEART STAND</span></strong><h4 class="subject"><a href="#">하트 스탠드 프로그램 신청 취소는 언제부터 가능한가요?하트 스탠드 프로그램 신청 취소는 언제부터 가능한가요?</a></h4>
							</header>

							<div class="bbs_content">
								<div class="txt_viewer">
									<p>
										내용이 표시됩니다.<br />
										언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br />
										내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.
									</p><br /><br />

									<p>
										내용이 표시됩니다.<br />
										내용이 표시됩니다. 내용이 표시됩니다.
									</p>
								</div>

							</div>
						</article>

						<article class="article">
							<header>
								<strong><span>HEART STAND</span></strong><h4 class="subject"><a href="#">하트 스탠드 프로그램 신청 취소는 언제부터 가능한가요?</a></h4>
							</header>

							<div class="bbs_content">
								<div class="txt_viewer">
									<p>
										내용이 표시됩니다.<br />
										언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br />
										내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.
									</p><br /><br />

									<p>
										내용이 표시됩니다.<br />
										내용이 표시됩니다. 내용이 표시됩니다.
									</p>
								</div>

							</div>
						</article>
					</div>

					<!-- paging // -->
					<div class="paging">
						<a class="prev" href="#">이전</a>
						<span class="num">
							<a class="on" href="#"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a class="next" href="#">다음</a>
					</div>
					<!-- // paging -->

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
