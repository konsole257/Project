<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="academy";
	String path3="apply";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="성공 두드림 아카데미";
	String path3tit="수강신청";
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
	<main id="wrap" class="academy">

		<div class="apply">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_academy.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/academy/about.jsp"><strong>성공 두드림 아카데미</strong></a>
						<a href="/academy/apply.jsp"><strong>수강신청</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">수강신청</h2>

					<p class="con_tit_txt">성공 두드림 아카데미의 다양한 프로그램을 확인하고 신청하세요</p>

					<div class="schedule_area">
						<div class="top_area">
							<div class="date_area">
								<button type="button" class="prev">이전 달</button>
								<p class="date">2017.01</p>
								<button type="button" class="next">다음 달</button>
							</div>

							<ul class="state_area">
								<li class="ing">접수중</li>
								<li class="end">마감</li>
								<li class="complete">완료</li>
							</ul>
						</div>

						<div class="schedule">
							<table>
								<caption>달력</caption>

								<colgroup>
									<col style="width:14.28%;">
									<col style="width:14.28%;">
									<col style="width:14.28%;">
									<col style="width:14.28%;">
									<col style="width:14.28%;">
									<col style="width:14.28%;">
									<col style="width:14.28%;">
								</colgroup>

								<thead>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td class="another_month"><span>26</span></td> <!-- 지난달 및 다음달 class="another_month" -->
										<td class="another_month"><span>27</span></td>
										<td class="another_month"><span>28</span></td>
										<td class="another_month"><span>29</span></td>
										<td class="another_month"><span>30</span></td>
										<td class="another_month"><span>31</span></td>
										<td><span>1</span></td>
									</tr>

									<tr>
										<td class="holiday"><span>2</span></td> <!-- 일요일 및 휴일 class="holiday" -->
										<td><span>3</span></td>
										<td><span>4</span></td>
										<td><span>5</span></td>
										<td><span>6</span></td>
										<td><span>7</span></td>
										<td><span>8</span></td>
									</tr>

									<tr>
										<td class="holiday"><span>9</span></td>
										<td><span>10</span></td>
										<td>
											<span>11</span>
											<p class="time ing">14:00 ~ 16:00</p><!-- 접수중 -->
											<a href="#popup_ing_step1" class="txt" data-fn="popupBtnOpen">단골고객 만드는 노하우</a>
											<a href="#popup_ing_step2" class="btn_apply" data-fn="popupBtnOpen">신청하기</a>
										</td>
										<td>
											<span>12</span>
											<p class="time end">14:00 ~ 16:00</p><!-- 마감 -->
											<a href="#popup_end" class="txt" data-fn="popupBtnOpen">단골고객 만드는 노하우</a>
										</td>
										<td>
											<span>13</span>
											<p class="time complete">14:00 ~ 16:00</p><!-- 완료 -->
											<a href="#popup_complete" class="txt" data-fn="popupBtnOpen">단골고객 만드는 노하우</a>
										</td>
										<td><span>14</span></td>
										<td><span>15</span></td>
									</tr>

									<tr>
										<td class="holiday"><span>16</span></td>
										<td><span>17</span></td>
										<td><span>18</span></td>
										<td><span>19</span></td>
										<td><span>20</span></td>
										<td><span>21</span></td>
										<td><span>22</span></td>
									</tr>

									<tr>
										<td class="holiday"><span>23</span></td>
										<td><span>24</span></td>
										<td><span>25</span></td>
										<td><span>26</span></td>
										<td><span>27</span></td>
										<td><span>28</span></td>
										<td><span>29</span></td>
									</tr>

									<tr>
										<td class="holiday"><span>30</span></td>
										<td><span>31</span></td>
										<td class="another_month"><span>1</span></td>
										<td class="another_month"><span>2</span></td>
										<td class="another_month"><span>3</span></td>
										<td class="another_month"><span>4</span></td>
										<td class="another_month"><span>5</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- 접수중 커리큘럼 내용 팝업 // -->
				<div class="popup_ing_step1" id="popup_ing_step1" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">단골고객 만드는 노하우 <span class="state ing">접수중</span></h2>

						<div class="popup_content">
							<!-- -->
							<div class="pic_area">
								<img src="/avenueCom/images/sub/academy_apply_pop_pic.jpg" alt="">
								<p class="name">홍길동 강사</p>
								<!-- 2018.03.21 :추가 // -->
								<ul>
									<li>"한국형 장사의 신", "장사는 전략이다" 저자</li>
									<li>푸드칼럼리스트</li>
									<li>외식업 컨설턴트</li>
								</ul>
								<!-- // 2018.03.21 :추가 -->
							</div>

							<div class="table">
								<table>
									<caption>커리큘럼 설명</caption>

									<colgroup>
										<col style="width:120px;">
										<col>
									</colgroup>

									<tbody>
										<tr>
											<th>강좌명</th>
											<td class="subject">단골고객 만드는 노하우</td>
										</tr>

										<tr>
											<th>커리큘럼</th>
											<td class="curriculum">
												<div>
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
												</div>
											</td>
										</tr>

										<tr>
											<th>교육시간</th>
											<td class="date">2018.2.6(화) 14:00 ~ 16:00</td>
										</tr>
										<!-- 2018.03.21 :추가 // -->
										<tr>
											<th>수강인원</th>
											<td class="people">50명</td>
										</tr>
										<tr>
											<th>강의장소</th>
											<td class="place">성공 두드림 아카데미 강의실</td>
										</tr>
										<!-- // 2018.03.21 :추가 -->
									</tbody>
								</table>
							</div>

							<div class="btn_area">
								<a href="#popup_ing_step2" class="btn_apply type1 midium" data-fn="popupBtnOpen" onclick="$('#popup_ing_step1').css({'visibility':'hidden'});">수강신청</a>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 접수중 커리큘럼 내용 팝업 -->

				<!-- 접수중 수강신청 팝업 // -->
				<div class="popup_ing_step2" id="popup_ing_step2" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">단골고객 만드는 노하우 <span class="state ing">접수중</span></h2>

						<div class="popup_content">
							<p class="txt"><a href="/membership/login.jsp">로그인</a>하시면 마이페이지에서 수강내역 확인 및 취소가 가능합니다.</p><!-- 비회원일경우 메세지 : 추가 : 2018-02-28 -->

							<!-- -->
							<ul>
								<li>
									<span>신청자명</span>
									<input type="text" value="김하늘">
								</li>
								<li>
									<span>휴대전화</span>
									<input type="text" value="010 - 1234 - 5678">
									<p class="msg">교육안내 SMS가 발송됩니다. 정확하게 기입하여 주세요.</p><!-- 2018-02-28 : 추가 -->
								</li>
								<li>
									<span>이메일</span>
									<input type="text" value="123545@arcon.com">
								</li>
								<li>
									<span>영업장명</span>
									<input type="text" placeholder="영업장명을 입력해 주세요">
								</li>

								<!-- 2018-02-28 : 추가 // -->
								<li>
									<span>영업장 주소</span>
									<input type="text" placeholder="영업장 주소를 입력해 주세요">
								</li>
								<!-- // 2018-02-28 : 추가 -->

								<li>
									<span>영업장 주요메뉴</span>
									<input type="text" placeholder="영업장 주요메뉴를 입력해 주세요">
								</li>

								<!-- 비회원일경우 : 추가 : 2018-02-28 // -->
								<li>
									<span>개인정보 수집 및 이용 동의 안내</span>
									<div class="check_area"><label for="terms">동의</label><input type="checkbox" id="terms"></div><!-- 2018-02-28 : 수정 -->
									<p class="terms">
										개인정보의 수집 이용목적 : 수강신청 및 안내<br>
										수집하려는 개인정보의 항목 : 수강신청에 필요한 개인정보 <br>
										- 이름, 휴대전화, 이메일, 영업장명, 영업장 주요메뉴<br>
										개인정보의 보유 및 이용기간 : 수강 내역 관리 및 처리를 위해 2년 보유 <br>
										본인은 개인정보 및 서비스 이용 관련정보를 귀사가 위와 같이 수집, 이용함에 관하여 고지 받았으며 이를 충분히 이해하고 동의합니다.
									</p>
								</li>
								<!-- // 비회원일경우  : 추가 : 2018-02-28 -->

							</ul>

							<div class="btn_area">
								<a href="#popup_ing_step3" class="btn_apply type1 midium" data-fn="popupBtnOpen" onclick="$('#popup_ing_step2').css({'visibility':'hidden'});">수강신청</a>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 접수중 수강신청 팝업 -->

				<!-- 접수중 수강신청 팝업 // -->
				<div class="popup_ing_step3" id="popup_ing_step3" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">수강신청 완료</h2>

						<div class="popup_content">
							<!-- -->
							<p class="txt">
								<b>
									언더스탠드에비뉴<br>
									성공 두드림 아카데미<br>
								</b>
								수강신청이 완료 되었습니다.
							</p>

							<p class="txt2">수강 내역 확인 및 변경은 전화(02-2151-5768)<br>또는 고객센터 &gt; 1:1 문의하기를 이용해 주세요.</p><!-- 비회원일떄 : 추가 : 2018-02-28 -->

							<div class="btn_area">
								<a href="#;" class="btn_apply type1 midium" data-fn="popupBtnClose">닫기</a>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 접수중 수강신청 팝업 -->

				<!-- 마감 커리큘럼 내용 팝업 // -->
				<div class="popup_end" id="popup_end" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">단골고객 만드는 노하우 <span class="state end">마감</span></h2>

						<div class="popup_content">
							<!-- -->
							<div class="pic_area">
								<img src="/avenueCom/images/sub/academy_apply_pop_pic.jpg" alt="">
								<p class="name">홍길동 강사</p>
								<ul>
									<li>"한국형 장사의 신", "장사는 전략이다" 저자</li>
									<li>푸드칼럼리스트</li>
									<li>외식업 컨설턴트</li>
								</ul>
							</div>

							<div class="table">
								<table>
									<caption>커리큘럼 설명</caption>

									<colgroup>
										<col style="width:120px;">
										<col>
									</colgroup>

									<tbody>
										<tr>
											<th>강좌명</th>
											<td class="subject">단골고객 만드는 노하우</td>
										</tr>

										<tr>
											<th>커리큘럼</th>
											<td class="curriculum">
												<!-- 2018-02-28 : 수정 // -->
												<div>
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
												</div>
												<!-- // 2018-02-28 : 수정 -->
											</td>
										</tr>

										<tr>
											<th>교육시간</th>
											<td class="date">2018.2.6(화) 14:00 ~ 16:00</td>
										</tr>
										<tr>
											<th>수강인원</th>
											<td class="people">50명</td>
										</tr>
										<tr>
											<th>강의장소</th>
											<td class="place">성공 두드림 아카데미 강의실</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 마감 커리큘럼 내용 팝업 -->

				<!-- 완료 커리큘럼 내용 팝업 // -->
				<div class="popup_complete" id="popup_complete" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">단골고객 만드는 노하우 <span class="state complete">완료</span></h2>

						<div class="popup_content">
							<!-- -->
							<div class="pic_area">
								<img src="/avenueCom/images/sub/academy_apply_pop_pic.jpg" alt="">
								<p class="name">홍길동 강사</p>
								<ul>
									<li>"한국형 장사의 신", "장사는 전략이다" 저자</li>
									<li>푸드칼럼리스트</li>
									<li>외식업 컨설턴트</li>
								</ul>
							</div>

							<div class="table">
								<table>
									<caption>커리큘럼 설명</caption>

									<colgroup>
										<col style="width:120px;">
										<col>
									</colgroup>

									<tbody>
										<tr>
											<th>강좌명</th>
											<td class="subject">단골고객 만드는 노하우</td>
										</tr>

										<tr>
											<th>커리큘럼</th>
											<td class="curriculum">
												<!-- 2018-02-28 : 수정 // -->
												<div>
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
													단골고객을 만드는 실전 팁 5가지 공개
												</div>
												<!-- // 2018-02-28 : 수정 -->
											</td>
										</tr>

										<tr>
											<th>교육시간</th>
											<td class="date">2018.2.6(화) 14:00 ~ 16:00</td>
										</tr>
										<tr>
											<th>수강인원</th>
											<td class="people">50명</td>
										</tr>
										<tr>
											<th>강의장소</th>
											<td class="place">성공 두드림 아카데미 강의실</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 완료 커리큘럼 내용 팝업 -->
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
