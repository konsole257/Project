<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="customer">
<div id="wrap" class="notice">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">공지사항</h2>

			<%@ include file="/m/inCom/_menu_customer.jsp" %>
		</div>
		<!-- //menu -->

		<!-- search// -->
		<div class="search_area">
			<form>
				<fieldset>
					<legend class="hide">검색</legend>
					<label class="select">
						<select>
							<option>전체</option>
							<option>제목</option>
							<option>내용</option>
						</select>
					</label>

					<input type="text" class="txt_type1 write_word" placeholder="" title="검색어 입력">

					<button type="submit" class="btn_search">검색</button>
				</fieldset>
			</form>
		</div>
		<!-- //search -->

		<!-- notice// -->
		<p class="stxt">
			<strong>“안내”</strong>에 대해 총 <em>2</em>건 검색 되었습니다. 
		</p>
		<div class="list_area">
			<ul>
				<li>
					<p class="nodata">검색결과가 없습니다.</p>
				</li>
				<!-- 반복영역 // -->
				<li class="top"><!-- 상단 노출 class="top" -->
					<a href="#">
						<strong class="category">공지</strong>
						<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정![런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
						<span class="date">2018.05.15</span>
					</a>
				</li>
				<!-- // 반복영역 -->
				<li>
					<a href="#">
						<strong class="category">공지</strong>
						<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
						<span class="date">2018.05.15</span>
					</a>
				</li>
			</ul>
			<div class="paging paging_type2">
				<a href="#" class="btn_prev">이전</a>
				<span class="num">
					<a href="#" class="on">1</a>
					<span>/</span>
					<a href="#">5</a>
				</span>
				<a href="#" class="btn_next">다음</a>
			</div>
		</div>
		<!-- //notice -->

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
