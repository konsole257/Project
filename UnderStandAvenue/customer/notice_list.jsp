<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="customer";
	String path2="notice";
	String path3="";
	String path4="";
	String path1tit="고객센터";
	String path2tit="공지사항";
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
						<a href="/customer/notice.jsp">고객센터</a>
						<a href="/customer/notice.jsp"><strong>공지사항</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공지사항</h2>

					<p class="con_tit_txt">언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.</p>

					<!-- -->
					<nav class="notice_tab" data-ui="tab">
						<h3 class="hide">공지사항 분류</h3>
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

							<li>
								<span class="walkshop_tab_menu" data-ui="tab_menu"><a href="#">WALKSHOP</a></span>
							</li>
						</ul>
						<!-- // 2018.02.02 : 수정 -->
					</nav>

					<div class="search_form">
						<form>
							<fieldset>
								<legend>검색</legend>

								<select title="분류 선택">
									<option>전체</option>
									<option>1</option>
								</select>

								<input id="u_search" type="text" />
								<button type="submit">검색</button>
							</fieldset>
						</form>
					</div>

					<table class="bbs list type1">
						<caption>공지사항 목록</caption>

						<colgroup>
							<col style="width:78px;" />
							<col style="width:165px" />
							<col />
							<col style="width:150px;" />
						</colgroup>

						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>

						<body>
							<!-- 반복영역 // -->
							<tr class="notice"><!-- 공지글일때 : 2016-05-02 : 수정 -->
								<td class="number">공지</td>
								<td class="category">UNDER STAND AVENUE</td>
								<td class="subject"><a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.언더스탠드 에비뉴</a><small class="icon file">첨부파일</small></td>
								<td class="date">2016.01.10</td>
							</tr>
							<!-- // 반복영역 -->

							<tr>
								<td class="number">1</td>
								<td class="category">UNDER STAND AVENUE</td>
								<td class="subject"><a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.</a><small class="icon file">첨부파일</small></td>
								<td class="date">2016.01.10</td>
							</tr>
						</body>
					</table>

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
