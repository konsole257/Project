<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="column";
	String path4="column";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="칼럼게시판";
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
	<main id="wrap" class="heart">
		<div class="column list">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_heart.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/heart/about.jsp">HEART STAND</a>
						<a href="/heart/column_list.jsp"><strong>칼럼 게시판</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">칼럼 게시판</h2>
					<p class="con_tit_txt">하트스탠드에서 유용한 정보를 알려드립니다.</p>

					<!-- -->
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
							<tr>
								<td class="number">2</td>
								<td class="subject"><a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.언더스탠드 에비뉴언더스탠드 에비뉴언더스탠드 에비뉴언더스탠드 에비뉴</a></td>
								<td class="date">2016.01.10</td>
							</tr>
							<!-- // 반복영역 -->

              <tr>
								<td class="number">1</td>
								<td class="subject"><a href="#" class="dotdot">언더스탠드 에비뉴의 칼럼 게시판의 제목이 글자수 제한으로 표시됩니다.</a></td>
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
