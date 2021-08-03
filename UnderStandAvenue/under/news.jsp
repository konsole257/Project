<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="news";
	String path1tit="ABOUT";
	String path2tit="언론보도";
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
	<main id="wrap" class="under">

		<div class="news">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_under.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/under/about.jsp">About</a>
						<a href="/under/news.jsp"><strong>언론보도</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">UNDER STAND AVENUE</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 언론&amp;보도자료 현황을 알려드립니다.</p>

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
							<col />
							<col style="width:150px;" />
						</colgroup>

						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>

						<body>
							<!-- 반복영역 // -->
							<tr class="notice"><!-- 공지글일때 : 2016-05-02 : 수정 -->
								<td class="number">1</td>
								<td class="subject"><a href="/under/news_detail.jsp" class="dotdot">언더스탠드에비뉴, 청년 창작자를 위한 무료 대관 공고 실시</a></td>
								<td class="date">2016.01.10</td>
							</tr>
							<!-- // 반복영역 -->

							<tr>
								<td class="number">1</td>
								<td class="subject"><a href="#" class="dotdot">언더스탠드에비뉴, 그래피티아트 'K-RAFFITI 2017:THE NEW WAVE 展' 개최</a></td>
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

				</div>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
