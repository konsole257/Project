<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="";
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
		<div class="mypage">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/mypage/mypage.jsp"><strong>MY PAGE</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">My paramge</h2>
					<p class="con_tit_txt">서비스 이용 내용을 확인 할 수 있습니다.</p>

					<!-- -->
          <div class="service_area">
            <article class="stand_service">
              <div class="inner">
                <header>
                  <h3>DO DREAM서비스<small>(최근 1개월)</small></h3>
                </header>

                <ul>
					<!-- 2018.03.15 : 수정 // -->
					<li class="counsel">
                      <a href="#">
                        <strong>상담예약 내역</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>

					<li class="academy">
                      <a href="#">
                        <strong>아카데미 수강신청 내역</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>

                    <li class="room">
                      <a href="#">
                        <strong>회의실 예약 내역</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>

					<li class="pc">
                      <a href="#">
                        <strong>데이터 이노베이션 센터 예약 내역</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>
					<!-- // 2018.03.15 : 수정 -->
                </ul>
              </div>
            </article>

            <article class="shop_coupon">
              <div class="inner">
                <header>
                  <h3>WALKSHOP쿠폰</h3>
                </header>

                <ul>
                    <li class="able">
                      <a href="#">
                        <strong>사용 가능 쿠폰</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>

                    <li class="download">
                      <a href="#">
                        <strong>다운로드 가능 쿠폰</strong>
                        <span><em>1</em> 건</span>
                      </a>
                    </li>

                    <li class="download">
                      <div class="btn_area">
                        <a href="#" class="small type5 btn_coupon">쿠폰확인</a>
                      </div>
                    </li>
                </ul>
              </div>
            </article>
          </div>

          <div class="list_area">
            <article class="order_list">
              <header>
                <h3>상품 주문내역</h3>
                <a href="#" class="more">더보기</a>
              </header>

              <table class="bbs list type1">
                <caption>상품 주문내역</caption>

                <colgroup>
                    <col style="width:121px;" />
                    <!--<col style="width:118px;" /> 2016-04-07 : 삭제-->
                    <col style="width:430px;" /><!-- 2016-04-07 : width:430px 수정 -->
                    <col style="width:67px;" />
                    <col style="width:143px;" />
                    <col style="width:138px;" />
                </colgroup>

                <thead>
                    <tr>
                      <th scope="col">주문일자</th><!-- : 2016-04-22 : 수정 -->
                      <!--<th scope="col">날짜</th> 2016-04-07 : 삭제-->
                      <th scope="col">주문상품정보</th>
                      <th scope="col">수량</th>
                      <th scope="col">결제금액</th>
                      <th scope="col">진행상태</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- 주문내역이 없을때 -->
                    <tr>
                        <td class="no_data" colspan="5">주문 내역이 없습니다.</td><!-- 2016-04-07 : colspan="5" 수정 -->
                    </tr>


    								<!-- 반복영역 // -->
                    <tr>
                        <td class="number">
													<span>20151202</span><!-- 주문일자 : 2016-04-22 : 수정 -->
													<span><a href="#">9876534098</a></span><!-- 주문번호 : 2016-04-22 : 수정 -->
												</td>
                        <!--<td class="date">2015.12.21</td> 2016-04-07 : 삭제-->
                        <td class="subject">
													<a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a>
													<small>옵션 : 2016-04-08 10:00</small><!-- 2016-04-07 : 옵션 추가 -->
												</td>
                        <td class="quantity">2</td>
                        <td class="price" data-fn="price">45000원</td>
                        <td class="status ing"><!-- 배송중일때 class="ing" 추가 -->
                          배송중
                          <div class="btn_area">
                            <a href="#" class="small type3 btn_delivery">배송조회</a>
                          </div>
                        </td>
                    </tr>
    								<!-- // 반복영역 -->

                    <tr>
											<td class="number">
												<span>20151202</span>
												<span><a href="#">9876534098</a></span>
											</td>
											<td class="subject">
												<a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a>
												<small>옵션 : 2016-04-08 10:00</small>
											</td>
                      <td class="date">2</td>
                      <td class="status">45,000원</td>
                      <td class="status">
                        구매완료
                      </td>
                    </tr>

                    <tr>
											<td class="number">
												<span>20151202</span>
												<span><a href="#">9876534098</a></span>
											</td>
											<td class="subject">
												<a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a>
												<small>옵션 : 2016-04-08 10:00</small>
											</td>
                      <td class="date">2</td>
                      <td class="status">45,000원</td>
                      <td class="status ing">
                        배송중
                        <div class="btn_area">
                          <a href="#" class="small type3 btn_delivery">배송조회</a>
                        </div>
                      </td>
                    </tr>
                </tbody>
              </table>
            </article>

            <article class="tiketing_list">
              <header>
                <h3>티켓 예매내역</h3>
                <a href="#" class="more">더보기</a>
              </header>

              <table class="bbs list type1">
                <caption>티켓 예매내역</caption>

                <colgroup>
                    <col style="width:121px;" />
										<!--<col style="width:118px;" /> 2016-04-07 : 삭제-->
                    <col style="width:430px;" /><!-- 2016-04-07 : 430px 수정 -->
                    <col style="width:143px;" />
                    <col style="width:67px;" />
                    <col style="width:138px;" />
                </colgroup>

                <thead>
                    <tr>
                      <th scope="col">주문일자</th><!-- 2016-04-22 : 수정 -->
                      <!--<th scope="col">일자</th> 2016-04-07 : 삭제-->
                      <th scope="col">티켓명</th>
                      <th scope="col">관람일시</th>
                      <th scope="col">매수</th>
                      <th scope="col">상태</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- 예매내역이 없을때-->
                    <tr>
                        <td class="no_data" colspan="5">예매 내역이 없습니다.</td><!-- 2016-04-07 : colspan="5" 수정 -->
                    </tr>


    								<!-- 반복영역 // -->
                    <tr>
											<td class="number">
												<span>20151202</span><!-- 주문일자 : 2016-04-22 : 수정 -->
												<span><a href="#">9876534098</a></span><!-- 예약번호 : 2016-04-22 : 수정 -->
											</td>
                        <!--<td class="date">2015.12.21</td> 2016-04-07 : 삭제-->
                        <td class="subject">
													<a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a>
													<small>옵션 : 2016-04-08 10:00</small> <!-- 2016-04-07 : 옵션 추가 -->
												</td>
                        <td class="date2">2015.12.25</td>
                        <td class="quantity">2장</td>
                        <td class="status">
                          결재완료
                        </td>
                    </tr>
    								<!-- // 반복영역 -->

                    <tr>
											<td class="number">
												<span>20151202</span>
												<span><a href="#">9876534098</a></span>
											</td>
												<td class="subject">
													<a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a>
													<small>옵션 : 2016-04-08 10:00</small>
												</td>
                        <td class="date2">2015.12.25</td>
                        <td class="quantity">2장</td>
                        <td class="status">
                          예매취소
                        </td>
                    </tr>
                </tbody>
              </table>
            </article>

            <article class="qna_list">
              <header>
                <h3>1:1 문의내역</h3>
                <a href="#" class="more">더보기</a>
              </header>

              <table class="bbs list type1">
                <caption>1:1 문의내역</caption>

                <colgroup>
                    <col style="width:151px;" />
                    <col style="width:437px;" />
                    <col style="width:174px;" />
                    <col style="width:143px;" />
                </colgroup>

                <thead>
                    <tr>
                      <th scope="col">구분</th>
                      <th scope="col">제목</th>
                      <th scope="col">작성일</th>
                      <th scope="col">답변상태</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- 문의내역이 없을때-->
                    <tr>
                        <td class="no_data" colspan="6">문의 내역이 없습니다.</td>
                    </tr>


    								<!-- 반복영역 // -->
                    <tr>
                        <td class="number">HEART STAND</td>
                        <td class="subject"><a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a></td>
                        <td class="date">2015.12.21</td>
                        <td class="status">
                          결재완료
                        </td>
                    </tr>
    								<!-- // 반복영역 -->

                    <tr>
                      <td class="number">HEART STAND</td>
                      <td class="subject"><a href="#" class="dotdot">아이들에게 인기만점 자체제작 따뜻한 털 장갑아이들에게 인기만점 자체제작 따뜻한 털 장갑</a></td>
                      <td class="date">2015.12.21</td>
                      <td class="status">
                        결재완료
                      </td>
                    </tr>
                </tbody>
              </table>
            </article>
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
