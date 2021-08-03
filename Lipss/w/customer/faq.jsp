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
	<main id="wrap" class="customer faq">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>CS Center</span>FAQ</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_customer.jsp" %>
				<!-- // menu -->
			</div>

			<div class="search_area">
				<ul class="category_list">
					<li class="on"><a href="#">전체</a></li><!-- 해당 페이지 class="on" -->
					<li><a href="#">사진인화상품</a></li>
					<li><a href="#">일반상품</a></li>
					<li><a href="#">쿠폰</a></li>
					<li><a href="#">주문/결제</a></li>
					<li><a href="#">배송</a></li>
					<li><a href="#">취소/반품/환불</a></li>
					<li><a href="#">회원가입/로그인</a></li>
					<li><a href="#">사이트이용/오류/기타</a></li>
					<li class="blank"></li>
				</ul>

				<div class="count"><b>전체</b> 총 <b class="number">15</b>건</div> <!-- 검색 전 -->
				<!--<div class="count"><b>“안내”</b>에 대해 총 <b class="number">15</b>건 검색 되었습니다.</div>--> <!-- 검색 후 -->

				<form>
					<fieldset>
						<legend class="hide">검색</legend>

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
					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요?배송비는 얼마부터 무료인가요?배송비는 얼마부터 무료인가요?배송비는 얼마부터 무료인가요?배송비는 얼마부터 무료인가요?배송비는 얼마부터 무료인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.<br>
							<img src="/w/pjtCom/images/common/logo.png" width="2000px">
						</p>
					</li>
					<!-- // 반복영역 -->

					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.
						</p>
					</li>

					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.
						</p>
					</li>

					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.
						</p>
					</li>

					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.
						</p>
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
