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
	<main id="wrap" class="mypage qna">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Q&A</span>1:1문의하기</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="list_area">
				<div class="btn_area">
					<a href="\w\mypage\qna_write.jsp" class="btn_register">1:1문의 등록</a>
				</div>

				<table class="tbl_type1">
					<colgroup>
						<col style="width:209px;">
						<col style="width:505px;">
						<col style="width:116px;">
						<col style="width:210px;">
					</colgroup>

					<thead>
						<tr>
							<th>문의유형</th>
							<th>제목</th>
							<th>등록일</th>
							<th>답변상태</th>
						</tr>
					</thead>

					<tbody>
						<!-- 검색 결과없음 // -->
						<tr>
							<td colspan="4"><p class="nodata">1:1문의내역이 없습니다.</p></td>
						</tr>
						<!-- // 검색 결과없음 -->

						<!-- 반복영역 // -->
						<tr>
							<td colspan="4">
								<div class="question">
									<span class="category">주문/취소/결제</span>
									<span class="subject">젝스키스 The studio 재입고 문의</span>
									<span class="date">2018.03.12</span>
									<b class="state">답변대기</b>
									<%-- <b class="state complete">답변완료</b> --%>
								</div>
								<!-- 수정 : 2018.05.04 -->
								<div class="view_area">
									<div class="question_contents">
										<div class="inner">
											<div class="top">
												<figure class="img_area">
													<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
												</figure>

												<div class="info_area">
													<span class="number">20188456156324851643</span>
													<span>[젝스키스] In Hawaii 은지원 No.1</span>
												</div>
											</div>

											<div class="subject">
												구매하고 싶은데, 재입고 예정 날짜가 언제인가요? 너무너무 사고 싶어요~
												<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="" class="img">
											</div>
										</div>
									</div>
									<div class="answer_contents">
										<div class="inner">
											안녕하세요. LIPSS 고객센터입니다. 문의주신 내용에 대해 아래와 같이 답변드립니
											다. 마이페이지 > 주문내역 상세 에서 반품하고자 하는 상품의 [반품신청]  버튼을 선
											택 후 반품접수를 신청해 주세요. 이미지와 함께 등록해 주시면 관리자가 상품회수
											후 확인하여 반품처리 도와드리겠습니다. 감사합니다.

											<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
										</div>
									</div>

									<div class="btn_area">
										<a href="#" class="btn_modify"><span>수정<span>Modify</span></span></a>
										<button type="button" class="btn_del"><span>삭제<span>Delete</span></span></button>
									</div>
								</div>
							</td>
						</tr>
						<!-- // 반복영역 -->

						<tr>
							<td colspan="4">
								<div class="question">
									<span class="category">주문/취소/결제</span>
									<span class="subject">젝스키스 The studio 재입고 문의</span>
									<span class="date">2018.03.12</span>
									<b class="state complete">답변완료</b>
								</div>
								<div class="view_area">
									<div class="question_contents">
										<div class="inner">
											<div class="top">
												<figure class="img_area">
													<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
												</figure>

												<div class="info_area">
													<span class="number">20188456156324851643</span>
													<span>[젝스키스] In Hawaii 은지원 No.1</span>
												</div>
											</div>

											<div class="subject">
												구매하고 싶은데, 재입고 예정 날짜가 언제인가요? 너무너무 사고 싶어요~
											</div>
										</div>
									</div>
									<div class="answer_contents">
										<div class="inner">
											안녕하세요. LIPSS 고객센터입니다. 문의주신 내용에 대해 아래와 같이 답변드립니
											다. 마이페이지 > 주문내역 상세 에서 반품하고자 하는 상품의 [반품신청]  버튼을 선
											택 후 반품접수를 신청해 주세요. 이미지와 함께 등록해 주시면 관리자가 상품회수
											후 확인하여 반품처리 도와드리겠습니다. 감사합니다.
										</div>
									</div>

									<div class="btn_area">
										<a href="#" class="btn_modify"><span>수정<span>Modify</span></span></a>
										<button type="button" class="btn_del"><span>삭제<span>Delete</span></span></button>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

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
