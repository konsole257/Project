<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/sub.css" />
</head>

<body class="sub">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap" class="customer notice">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>CS Center</span>공지사항</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_customer.jsp" %>
				<!-- // menu -->
			</div>

			<div class="search_area">
				<div class="count"><b>전체</b> 총 <b class="number">15</b>건</div> <!-- 검색 전 -->
				<!--<div class="count"><b>“안내”</b> 에 대해 총 <b class="number">15</b>건 검색 되었습니다.</div>--> <!-- 검색 후 -->
				<form>
					<fieldset>
						<legend class="hide">검색</legend>
						<label class="select">
							<select>
								<option>전체</option>
								<option>제목 + 내용</option>
							</select>
						</label>

						<input type="text" class="txt_type1 write_word" placeholder="" title="검색어 입력">

						<button type="submit" class="btn_search">검색</button>
					</fieldset>
				</form>
			</div>

			<div class="list_area">
				<ul>
					<!-- 검색 결과없음 // -->
					<li>
						<p class="nodata">검색결과가 없습니다.</p>
					</li>
					<!-- // 검색 결과없음 -->

					<!-- 반복영역 // -->
					<li class="top"><!-- 상단 노출 class="top" -->
						<strong class="category">공지</strong>
						<a href="\w\customer\notice_view.jsp" class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!회원가입하면 무조건 무료배송 쿠폰 증정!회원가입하면 무조건 무료배송 쿠폰 증정!회원가입하면 무조건 무료배송 쿠폰 증정!</a>
						<span calss="date">2018.05.15</span>
					</li>
					<!-- // 반복영역 -->

					<li class="top">
						<strong class="category">뉴스</strong>
						<a href="#" class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</a>
						<span calss="date">2018.05.15</span>
					</li>

					<li class="top">
						<strong class="category">당첨자발표</strong>
						<a href="#" class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</a>
						<span calss="date">2018.05.15</span>
					</li>

					<li>
						<strong class="category">공지</strong>
						<a href="#" class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</a>
						<span calss="date">2018.05.15</span>
					</li>

					<li>
						<strong class="category">공지</strong>
						<a href="#" class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</a>
						<span calss="date">2018.05.15</span>
					</li>
				</ul>

				<div class="paging">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#" class="on">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>

			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
