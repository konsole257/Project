<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="ticket";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="CULTURE 예매내역";
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
		<div class="inquiry ticket list">
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
            <a href="/mypage/order_list.jsp">WALKSHOP</a>
						<a href="/mypage/order_list.jsp"><strong>CULTURE 예매내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">CULTURE 예매내역</h2>

					<p class="con_tit_txt">CULTURE 예매내역을 조회할 수 있습니다.</p>

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
                  <div class="calendar calendar1">
										<!--
                    <header>
                      <h3>
                        <span class="yyyy"><em>2016</em>년</span>
                        <span class="mm"><em>3</em>월</span>
                      </h3>
                      <button type="button" class="btn_prev">이전</button>
                      <button type="button" class="btn_next">다음</button>
                    </header>


                    <table>
                      <caption>달력</caption>

                      <thead>
                        <tr>
                          <th scope="col" class="sun">일</th>
                          <th scope="col">월</th>
                          <th scope="col">화</th>
                          <th scope="col">수</th>
                          <th scope="col">목</th>
                          <th scope="col">금</th>
                          <th scope="col" class="sat">토</th>
                        </tr>
                      </thead>

                      <tbody>
                        <tr>
                          <td class="sun"></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td class="sat"><a href="#">1</a></td>
                        </tr>

                        <tr>
                          <td class="sun"><a href="#">2</a></td>
                          <td><a href="#">3</a></td>
                          <td><a href="#">4</a></td>
                          <td><a href="#">5</a></td>
                          <td><a href="#">6</a></td>
                          <td><a href="#">7</a></td>
                          <td class="sat"><a href="#">8</a></td>
                        </tr>

                        <tr>
                          <td class="sun"><a href="#">9</a></td>
                          <td><a href="#">10</a></td>
                          <td><a href="#">11</a></td>
                          <td><a href="#">12</a></td>
                          <td><a href="#">13</a></td>
                          <td><a href="#">14</a></td>
                          <td class="sat"><a href="#">15</a></td>
                        </tr>

                        <tr>
                          <td class="sun"><a href="#">16</a></td>
                          <td><a href="#">17</a></td>
                          <td><a href="#">18</a></td>
                          <td><a href="#">19</a></td>
                          <td><a href="#">20</a></td>
                          <td><a href="#">21</a></td>
                          <td class="sat"><a href="#">22</a></td>
                        </tr>

                        <tr>
                          <td class="sun"><a href="#">23</a></td>
                          <td><a href="#">24</a></td>
                          <td><a href="#">25</a></td>
                          <td><a href="#">26</a></td>
                          <td><a href="#">27</a></td>
                          <td><a href="#">28</a></td>
                          <td class="sat"><a href="#">29</a></td>
                        </tr>

                        <tr>
                          <td class="sun"><a href="#">30</a></td>
                          <td><a href="#">31</a></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td class="sat"></td>
                        </tr>
                      </tbody>
                    </table>
										-->
                  </div>
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
            <p>예매취소는 고객센터로 문의주세요.</p>
            <p>고객님께서 직접 구매확정 하지 않은 경우 관람일 기준 익일에 자동 전환됩니다. </p>
            <p>구매확정 후 상품후기 작성이 가능합니다.</p>
          </div>

          <table class="bbs list type1">
            <caption>CULTURE 예매내역</caption>

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
									<!--<th scope="col">매수</th> 2016-04-07 : 추가, 2016-04-27 : 삭제 -->
                  <th scope="col">결제금액</th>
                  <th scope="col">진행상태</th>
                </tr>
            </thead>

            <tbody>
							<!-- 예매내역이 없을때-->
							<tr>
								<td colspan="5" class="no_data">예매내역이 없습니다.</td>
							</tr>

								<!-- 반복영역 // -->
                <tr>
									<td class="number">
										<!--<span>20151202</span> 주문일자 : 2016-04-22 : 수정, 2016-04-27 : 삭제 -->
										<span><a href="#">9876534098</a></span><!-- 예약번호 : 2016-04-22 : 수정 -->
									</td>
								  <!--<td><a href="#">2016.01.17</a></td> 2016-04-07 : 삭제 -->
									<td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for</a>
										<small>옵션 : 2016-04-08 10:00</small> <!-- 2016-04-07 : 옵션 추가 -->
									</td>
								  <!--<td><a href="#">1</a></td> 2016-04-07 : 매수 추가, 2016-04-27 : 삭제 -->
									<td data-fn="price">45000원</td>
                  <td class="status">
                    입금대기
                    <div class="btn_area">
                      <a href="#" class="small type4">취소</a>
                    </div>
                  </td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
									<td class="number">
										<span><a href="#">9876534098</a></span>
									</td>
									<td class="subject">
										<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.인디고인디고인디고인디고</a>
										<small>옵션 : 2016-04-08 10:00</small>
									</td>
                  <td data-fn="price">45000원</td>
                  <td class="status complete">
                    예매완료
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
