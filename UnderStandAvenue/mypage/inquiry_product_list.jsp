<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="product";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="주문/배송 조회";
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
	<main id="wrap" class="mypage">
		<div class="inquiry product list">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
            <a href="/mypage/mypage.jsp">MY PAGE</a>
            <a href="/mypage/inquiry_product_list.jsp">WALKSHOP</a>
						<a href="/mypage/inquiry_product_list.jsp"><strong>주문/배송 조회</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">주문/배송 내역</h2>

					<p class="con_tit_txt">주문/배송 내역을 조회할 수 있습니다.</p>

					<!-- -->
          <form class="search_area">
            <fieldset>
              <legend>조회기간</legend>

              <article>
                <h3>조회기간</h3>

                <span class="btn_area">
                  <a href="#">오늘</a> <!-- 해당페이지에서 class="on" 추가 -->
                  <a href="#" class="on">1주일</a>
                  <a href="#">1개월</a>
                  <a href="#">3개월</a>
                  <a href="#">6개월</a>
                </span>

                <input type="text" id="u_date1" />


								<article class="calendar_area" data-fn="calendar">
                  <label for="u_date1" class="btn_calendar">달력보기</label>
                  <div class="calendar calendar1"></div>
                </article>

                <span class="input_wrap date"><input type="text" id="u_date2" /></span>

								<article class="calendar_area" data-fn="calendar">
                  <label for="u_date2" class="btn_calendar">달력보기</label>
                  <div class="calendar calendar2"></div>
                </article>

                <span class="btn_area">
                  <button type="submit" class="small type1 btn_inquiry">조회</button>
                </span>
              </article>
            </fieldset>
          </form>

          <div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>주문취소는 배송 시작 전 단계에서만 기능합니다. 주문내역에서 취소 가능합니다.</p>
            <p>이후에는 반품으로 진행되며, 단순변심으로 인한 반품일 경우 반품배송비가 추가 발생할 수 있습니다.</p>
            <p>고객님께서 직접 구매확정 하지 않은 경우 배송완료 후 7일에 자동 전환됩니다.</p>
            <p>구매확정 후 상품후기 작성이 가능합니다.</p>
          </div>

          <table class="bbs list type1">
            <caption>주문/배송 내역</caption>

            <colgroup>
                <col style="width:258px;" /><!-- 2016-04-27 : width:258px 변경 -->
                <col style="width:322px;" /><!-- 2016-04-07 : width:322px 변경 -->
                <!--<col style="width:129px;" /> 2016-04-07 : width:129px 변경, 2016-04-27 : 삭제 -->
                <col style="width:129px;" />
                <col style="width:191px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">주문일자</th><!-- 2016-04-22 : 수정 -->
									<!-- <th scope="col">주문일</th> 2016-04-07 : 삭제 -->
									<th scope="col">주문상품정보</th>
									<!-- <th scope="col">수량</th>2016-04-07 : 추가, 2016-04-27 : 삭제 -->
                  <th scope="col">결제금액</th>
                  <th scope="col">주문/배송상태</th>
                </tr>
            </thead>

            <tbody>
							<!-- 주문/배송 내역이 없을때-->
							<tr>
								<td colspan="5" class="no_data">주문내역이 없습니다.</td>
							</tr>

								<!-- 반복영역 // -->
                <tr>
									<td class="number">
										<!--<span>20151202</span> 주문일자 : 2016-04-22 : 수정, 2016-04-27 : 삭제 -->
										<span><a href="#">9876534098</a></span><!-- 주문번호 : 2016-04-22 : 수정 -->
									</td>
                    <!--<td><a href="#">2016.01.17</a></td> 2016-04-07 : 삭제 -->
                  <td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.인디고인디고</a>
										<small>옵션 : 2016-04-08 10:00</small> <!-- 2016-04-07 : 옵션 추가 -->
									</td>
									<!--<td><a href="#">1</a></td> 2016-04-07 : 수량 추가, 2016-04-27 : 삭제 -->
                  <td data-fn="price">45000원</td>
                  <td class="status">
                    입금대기
                    <div class="btn_area">
                      <a href="#" class="small type4">주문취소</a>
                    </div>
                  </td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
									<td class="number">
										<span><a href="#">9876534098</a></span>
									</td>
									<td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.인디고인디고</a>
										<small>옵션 : 2016-04-08 10:00</small>
									</td>
									<td data-fn="price">45000원</td>
                  <td class="status">
                    배송중
                    <div class="btn_area">
                      <a href="#" class="small type3">배송조회</a> <a href="#fix" class="small type1 btn_cancel" data-fn="popupBtnOpen">구매확정</a>
                    </div>
                  </td>
                </tr>
            </tbody>
          </table>

          <div class="paging">
    				<a class="prev" href="#">이전</a>
    				<span class="num">
    					<a class="on" href="#"><strong>1</strong></a>
    					<a href="#">2</a>
    					<a href="#">3</a>
    				</span>
    				<a class="next" href="#">다음</a>
    			</div>

          <!-- 구매확정 팝업 // -->
					<div id="fix" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">구매확정</h2>

							<div class="popup_content">
								<!-- -->
                <p>
  								구매확정 완료됐습니다.<br />
                  상품후기를 작성 하시겠습니까?
                </p>

                <div class="btn_area">
                  <a href="#" class="small type3 btn_ok">예</a>
                  <a href="#" class="small type2 btn_cancel" data-fn="popupBtnClose">아니오</a>
                </div>
								<!-- -->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 구매확정 팝업 -->

					<!-- 비회원 교환반품문의 팝업 : 2016-03-25 : 추가 // -->
					<div id="nomember" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">비회원 교환/반품 문의</h2>

							<div class="popup_content">
								<!-- -->
                <p>
  								<em>교환/반품 문의는<br />
									1:1 문의하기</em>에서 가능합니다.
									<span>비회원 고객님은 고객센터로 문의주세요.</span>
                </p>

                <div class="btn_area">
                  <a href="#" class="midium type1 btn_cancel" data-fn="popupBtnClose">닫기</a>
                </div>
								<!-- -->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 비회원 교환반품문의 팝업 : 2016-03-25 : 추가 -->

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
