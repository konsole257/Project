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
<div id="wrap" class="index">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">고객센터</h2>

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
		<div class="notice">
			<div class="stit">
				<h3>공지사항</h3>
				<a href="#" class="icon btn_more">MORE</a>
			</div>
			<div class="list_area">
				<ul>
					<!-- 반복영역 // -->
					<li class="top"><!-- 상단 노출 class="top" -->
						<a href="/m/customer/notice_view.jsp">
							<strong class="category">공지</strong>
							<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정![런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
							<span class="date">2018.05.15</span>
						</a>
					</li>
					<!-- // 반복영역 -->
					<li class="top">
						<a href="#">
							<strong class="category">뉴스</strong>
							<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
							<span class="date">2018.05.15</span>
						</a>
					</li>
					<li class="top">
						<a href="#">
							<strong class="category">당첨자발표</strong>
							<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
							<span class="date">2018.05.15</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong class="category">공지</strong>
							<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
							<span class="date">2018.05.15</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong class="category">공지</strong>
							<span class="subject">[런칭 기념] 회원가입하면 무조건 무료배송 쿠폰 증정!</span>
							<span class="date">2018.05.15</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- //notice -->

		<!-- faq//-->
		<div class="faq">
			<div class="stit">
				<h3>FAQ top 5</h3>
				<a href="#" class="icon btn_more">MORE</a>
			</div>
			<div class="list_area">
				<ul>
					<!-- 반복영역 // -->
					<li>
						<div class="question">
							<strong class="category">사이트이용/오류/기타</strong>
							<p class="subject">배송비는 얼마부터 무료인가요? 배송비는 얼마 부터 무료 인가요? 배송비는 얼마 부터 무료 인가요?</p>
						</div>
						<p class="answer">
							30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.30,000원 이상 구매하실 경우 무료로 배송 받으실 수 있습니다.
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
			</div>
		</div>
		<!-- //faq -->

		<!-- qna//-->
		<div class="qnainfo">
			<a href="#">
				<strong>LIPSS 1:1 문의하기</strong>
				1:1문의를 이용하시면 보다 편리하게<br />
				궁금하신 부분에 대한 답변을 받으실 수 있습니다.
			</a>
		</div>
		<!-- //qna -->

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
