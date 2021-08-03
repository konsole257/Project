<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="program";
	String path4="expect";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="프로그램 안내";
	String path4tit="예정프로그램";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="art">

		<div class="program expect detail">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_art.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/art/about.jsp">ART STAND</a>
						<a href="/art/program_now_list.jsp">Program</a>
						<a href="/art/program_expect_list.jsp"><strong>예정 프로그램</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">ART STAND</h2>
					<p class="con_tit_txt">아트스탠드의 예정 진행중인 프로그램을 알려드립니다.</p>

					<!-- -->
          <article class="bbs detail type3">
						<header>
              <img src="/avenueCom/images/temp/art_program198x280.jpg" alt="" />
              <div class="subject_area">
  							<h4 class="subject">[뮤지컬] 벽을 뚫는 남자 (유연석, 이지훈, 고창석, 조재윤)</h4>

                <dl class="info_area">
                  <dt class="open">티켓 오픈 예정일</dt>
                  <dd class="open">2015.12.25</dd>

									<dt>가격</dt>
                  <dd>12,000원</dd>

                  <dt>날짜</dt>
                  <dd>2015.12.12 ~ 2015.12.27</dd>

                  <dt>시간</dt>
                  <dd>135분</dd>

                  <dt>관람등급</dt>
                  <dd>만 7세이상 </dd>

                  <dt>장소</dt>
                  <dd>
                    아트 스탠드 B관 a홀
                    <!-- 추후 추가 예정
                    <span class="btn_area">
                      <a href="#detail" class="small type3 btn_detail" data-fn="popupBtnOpen">자세히보기</a>
                    </span>-->
                  </dd>
                </dl>

                <div class="btn_area">
                  <a href="#" class="midium type1 btn_tiketing">예매하기</a>
                </div>
              </div>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
                <section>
                  <h5>기본정보</h5>

                  <iframe width="900" height="506" src="https://www.youtube.com/embed/D84bNy-qAsE?rel=0&amp;vq=hd1080&wmode=transparent" frameborder="0"  allowfullscreen wmode="Opaque"></iframe>

                  <img src="/avenueCom/images/temp/art_program700x000_01.jpg" alt="" />
                  <img src="/avenueCom/images/temp/art_program700x000_02.jpg" alt="" />
                  <br />
                  <br />

                  <p>
    								내용이 표시됩니다.<br />
    								언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br />
    								내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.<br /><br />

    								내용이 표시됩니다.<br />
    								내용이 표시됩니다. 내용이 표시됩니다.
                  </p>
                </section>

                <div class="info_area">
                    <table>
                      <caption>예매 안내</caption>

                      <tbody>
                        <tr>
                          <th>공연 및 전시</th>
                          <td>
                            <dl>
                              <dt class="horizon">신용카드</dt>
                              <dd class="horizon">행사 전일 5시까지 예매 가능</dd>

                              <dt class="vertical">가상계좌</dt>
                              <dd class="vertical">행사 당일 3일 전까지 예매 가능</dd>
                              <dd class="vertical">예매 후 24시간 이내 미입금 시 예매 자동 취소</dd>

                              <dt class="vertical">기타</dt>
                              <dd class="vertical">공연 당일 온라인 예매 불가, 현장 구매만 가능</dd>
                            </dl>
                          </td>
                        </tr>

                        <tr>
                          <th>체험 클래스 및 아카데미 </th>
                          <td>
                            <dl>
                              <dt class="vertical">최소모집안내</dt>
                              <dd class="vertical">강의 별 수업진행이 가능한 수강생 최소인원 규정</dd>
                              <dd class="vertical">강의 시작 이틀 전 폐강여부 결정</dd>
                              <dd class="vertical">폐강이 결전된 강좌 신청한 분들 개별연락 후 수강 취소 및 환불 </dd>

                              <dt class="horizon">신용카드</dt>
                              <dd class="horizon">강의 3일전까지 예매 가능 </dd>

                              <dt class="vertical">가상계좌</dt>
                              <dd class="vertical">강의 당일 3일 전까지 예매 가능</dd>
                              <dd class="vertical">예매 후 24시간 이내 미입금 시 신청 자동 취소</dd>

                              <dt class="vertical">기타</dt>
                              <dd class="vertical">강의 당일 현장 구매불가</dd>
                            </dl>
                          </td>
                        </tr>
                      </tbody>
                    </table>

                    <table>
                      <caption>취소/환불 정책</caption>

                      <tbody>
                        <tr>
                          <th>취소 및 환불</th>
                          <td>
                            <dl>
                              <dt class="vertical">공연 및 전시</dt>
                              <dd class="vertical">고객센터 전화 또는 1:1 게시판으로 접수 후 처리 가능</dd>
                              <dd class="vertical">취소는 행사 당일 3일 전까지만 가능, 이후 취소·환불 불가</dd>
                              <dd class="vertical">행사 당일 현장 구매 티켓 취소·환불 불가</dd>

                              <dt class="vertical">체험 클래스 및 아카데미</dt>
                              <dd class="vertical">고객센터 전화 또는 1:1 게시판으로 접수 후 처리 가능</dd>
                              <dd class="vertical">취소는 강좌 시작 3일 전까지만 가능, 이후 취소 환불 불가</dd>
                            </dl>
                          </td>
                        </tr>

                        <tr>
                          <th>부분취소 및 부분환불</th>
                          <td>
                            <dl>
                              <dt class="vertical">공연 및 전시</dt>
                              <dd class="vertical">전체 예매건 취소 후 재예매</dd>
                              <dd class="vertical">동일 상품에 대해 일부 변경을 원하는 경우, 기존 예매건 취소 후 재예매</dd>

                              <dt class="vertical">수강 기간이 1개월 이내인 체험클래스 및 아카데미</dt>
                              <dd class="vertical">강의 당일 3일 전까지 전액 환불</dd>
                              <dd class="vertical">강의 시간 1/3 지나기 전 : 이미 납부한 수강료의 2/3 해당 금액</dd>
                              <dd class="vertical">강의 시간 1/2 지나기 전 : 이미 납부한 수강료의 1/2 해당금액</dd>
                              <dd class="vertical">강의 시간 1/2 경과 후 : 환불 없음</dd>
                            </dl>
                          </td>
                        </tr>
                      </tbody>
                    </table>

                    <table>
                      <caption>취소/환불 수수료 안내</caption>

                      <tbody>
                        <tr>
                          <th>공연 및 전시</th>
                          <td>
                            <dl>
                              <dt class="vertical">행사개최일 7일 전까지 수수료 없이 취소 가능</dt>
                              <dd class="vertical">카드 결재 시 : 전액 취소</dd>
                              <dd class="vertical">가상계좌 환불 시: 환불계좌 이체 수수료 500원 제외 후 입금</dd>

                              <dt class="vertical">행사전일 6일부터 3일까지 예매 금액의 10% 취소 수수료 발생</dt>
                              <dd class="vertical">카드 결재 시 : 취소 수수료 결재 후 전액 취소</dd>
                              <dd class="vertical">가상계좌 환불 시 : 환불계좌 이체 수수료 500원과 취소수수료 제외 후 입금</dd>
                            </dl>
                          </td>
                        </tr>

                        <tr>
                          <th>체험클래스 및 아카데미</th>
                          <td>
                            <dl>
                              <dt class="vertical">강의 당일 7일전까지 수수료 없이 취소 가능</dt>

                              <dt class="vertical">강의전일 6일부터 3일까지 수강금액의 10% 취소 수수료 발생</dt>
                              <dd class="vertical">카드 결재 시 : 취소수수료 결재 후 전액 취소</dd>
                              <dd class="vertical">가상계좌 환불 시: 환불계좌 이체수수료 500원과 취소수수료 제외 후 입금</dd>
                            </dl>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                </div>
							</div>
						</div>
					</article>

					<div class="btn_area">
          	<a href="#" class="midium type4 btn_bbs_list">목록</a>
					</div>

          <!-- 자세히보기 팝업 // 추후 추가 예정
					<div id="detail" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">무이자 카드 정보 안내</h2>

							<div class="popup_content">

								내용

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>-->
					<!-- // 자세히보기 팝업 -->
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
