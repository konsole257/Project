<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="exchange";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="교환/반품 신청";
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
		<div class="exchange">
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
						<a href="/mypage/exchange.jsp"><strong>교환/반품 신청</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">교환/반품 신청</h2>

					<p class="con_tit_txt">교환/반품 신청을 할 수 있습니다.</p>

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
            <p>배송완료 이후에는 반품으로 진행되며, 단순변심으로 인한 반품일 경우 반품배송비가 추가 발생할 수 있습니다.</p>
            <p>주문하신 상품에 대한 교환/반품 신청은 문의 구분 WALKSHOP 또는 교환/반품 선택 후 신청 가능합니다. (주문번호 선택 필수)</p>
          </div>

          <table class="bbs list type1">
            <caption>상품후기 내역</caption>

            <colgroup>
                <col style="width:75px;" />
                <col style="width:150px;" />
                <col style="width:375px;" />
                <col style="width:150px;" />
                <col style="width:150px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">주문번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성일</th>
                  <th scope="col">진행상태</th>
                </tr>
            </thead>

            <tbody>
								<!-- 쿠폰이 없을때 -->
								<tr>
										<td class="no_data" colspan="5">교환/반품 신청 내역이 없습니다.</td>
								</tr>

								<!-- 반복영역 // -->
                <tr>
                  <td><a href="#">2</a></td>
                  <td class="number"><a href="#">2015120212</a></td>
                  <td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.아이패드아이패드</a>
										<small>옵션 : 2016-04-08 10:00</small> <!-- 2016-04-07 : 옵션 추가 -->
									</td>
                  <td>2016.01.17</td>
                  <td class="status">처리중</td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
                  <td><a href="#">1</a></td>
                  <td class="number"><a href="#">2015120212</a></td>
									<td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.아이패드아이패드</a>
										<small>옵션 : 2016-04-08 10:00</small>
									</td>
                  <td>2016.01.17</td>
                  <td class="status complete">처리중</td>
                </tr>
            </tbody>
          </table>

          <div class="btn_area">
            <a href="#" class="small type2 btn_exchange">교환/반품 신청</a>
          </div>

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
					<div id="fix_coupon" class="popup" data-ui="popup">
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
