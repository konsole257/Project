<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="data";
	String path3="reserve";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="데이터 이노베이션 센터";
	String path3tit="예약";
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
	<main id="wrap" class="stations">

		<div class="reserve">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_data.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/stations/digital.jsp">데이터 이노베이션 센터</a>
						<a href="/stations/reserve_digital.jsp"><strong>예약</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">PC예약 신청</h2>

					<p class="con_tit_txt">PC 예약 신청 페이지입니다</p>

					<div class="info">
						<h3 class="tit">운영시간 및 이용안내</h3>

						<ul>
							<li>언더스탠드에비뉴에 가입한 회원이라면 누구나 이용 가능합니다.</li>
							<li>예약날짜 : 희망 사용일로부터 최대 한달 전부터 예약 가능, 당일 예약 가능</li>
							<li>이용시간 : 월-금 10:00~20:00 (주말 및 공휴일 예약 불가)</li>
							<li>ID 기준으로 1일 최대 10시간 예약 가능하며, 오늘부터 1개월 이내 최대 30시간 예약 가능합니다.</li>
							<li>예약 신청 버튼 클릭 > 예약정보 기재 후 예약 시간 및 PC 선택하시면 자동으로 예약됩니다.</li>
							<li>취소는 마이페이지에서 가능합니다.</li>
							<li>아마존 웹 서비스 이용만 가능하며, 문서 작업 및 프린트는 할 수 없습니다. </li>
							<li>이용시간 중 CCTV 촬영 중이며, PC 내 프로그램 설치 후 고장 시 책임을 물을 수 있습니다. </li>
						</ul>

						<ol>
							<li><span>STEP 01</span>PC 예약 신청 버튼 선택</li>
							<li><span>STEP 02</span>예약정보 기입</li>
							<li><span>STEP 03</span>예약 가능 PC 확인 후  예약버튼 선택</li>
						</ol>
					</div>

					<div class="txt_btn_area">
						<p>
							[PC 예약 신청] 버튼 클릭 후 예약정보를 입력해 주세요.<br>
							PC 예약은 예약 시점으로부터 1개월 이내 최대 30시간 예약 가능합니다.
						</p>
						<button type="button" class="btn_apply">PC 예약 신청</button>
					</div>

					<div class="write_area">
						<h3 class="tit">PC 예약정보</h3>

						<table>
							<caption>예약 양식 작성</caption>

							<colgroup>
								<col style="width:185px;">
								<col style="width:265px;">
								<col style="width:185px;">
								<col>
							</colgroup>

							<tbody>
								<tr>
									<th>예약자명</th>
									<td>홍길동</td>
									<th>구분</th>
									<td>일반회원</td>
								</tr>

								<tr>
									<th>이용목적</th>
									<td colspan="3">
										<input type="text" title="회의제목 입력" class="subject">
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="reserve_area">
						<div class="txt_area">
							<p class="txt1">예약을 원하시는 분들은 <span class="btn_reseve">예약</span>버튼을 선택해 주세요.</p>
							<p class="txt2"><span class="complete">예약완료</span><span class="disabled">예약불가</span><span class="enabled">예약가능</span></p>
						</div>

						<div class="btn_area">
							<button type="button" class="btn_prev">이전</button>
							<button type="button" class="btn_next">다음</button>
						</div>

						<div class="reserve_time">
							<table>
								<caption>예약 일정 표</caption>

								<colgroup>
									<col style="width:100px;">
								</colgroup>

								<thead>
									<tr>
										<th></th>
									</tr>

									<tr>
										<th>예약 시간</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>10:00 ~ 11:00</td>
									</tr>

									<tr>
										<td>11:00 ~ 12:00</td>
									</tr>

									<tr>
										<td>12:00 ~ 13:00</td>
									</tr>

									<tr>
										<td>13:00 ~ 14:00</td>
									</tr>

									<tr>
										<td>14:00 ~ 15:00</td>
									</tr>

									<tr>
										<td>15:00 ~ 16:00</td>
									</tr>

									<tr>
										<td>16:00 ~ 17:00</td>
									</tr>

									<tr>
										<td>17:00 ~ 18:00</td>
									</tr>

									<tr>
										<td>18:00 ~ 19:00</td>
									</tr>

									<tr>
										<td>19:00 ~ 20:00</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="reserve_table">
							<table>
								<caption>예약 일정 표</caption>

								<colgroup>
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
									<col style="width:80px;">
								</colgroup>

								<thead>
									<tr>
										<th colspan="10"><span class="date">2월 13일(화)</span></th>
									</tr>

									<tr>
										<th>PC01</th>
										<th>PC02</th>
										<th>PC03</th>
										<th>PC04</th>
										<th>PC05</th>
										<th>PC06</th>
										<th>PC07</th>
										<th>PC08</th>
										<th>PC09</th>
										<th>PC10</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td><a href="#popup_complete" class="btn_reserve" data-fn="popupBtnOpen">예약</a></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- 예약완료 팝업 // -->
				<div class="popup_complete" id="popup_complete" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">PC 예약 완료</h2>

						<div class="popup_content">
							<!-- -->
							<p class="txt">
								언더스탠드에비뉴<br>
								PC 예약이 완료 되었습니다.

								<span>PC 예약 취소는 마이페이지를 이용해 주세요.</span>
							</p>

							<div class="btn_area">
								<button type="button" class="btn_apply type1 midium" data-fn="popupBtnClose">확인</button>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 예약완료 팝업 -->

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
