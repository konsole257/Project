<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="room";
	String path3="reserve";
	String path4="";
	String path1tit="Do DREAM";
	String path2tit="회의실 예약";
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
	<main id="wrap" class="room">

		<div class="reserve">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_room.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/room/info.jsp">회의실 예약</a>
						<a href="/room/reserve.jsp"><strong>예약</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회의실예약 신청</h2>

					<p class="con_tit_txt">회의실 예약 신청페이지 입니다.</p>

					<div class="info">
						<h3 class="tit">운영시간 및 이용안내</h3>

						<ul>
							<li>월-금 09:00~18:00 에는 회원제 이용 가능합니다. (Digital ・ Life ・ School 선수, 성공 두드림 아카데미 수강생)</li>
							<li>주말 및 공휴일 09:00~18:00 에는 비회원 포함 누구나 이용 가능합니다. (홈페이지 예약 불필요)</li>
							<li>ID 기준으로 1일 최대 3시간 예약 가능하며, 예약가능 기간(예약 시점으로부터 한달 이전까지) 중 최대 15시간 예약 가능합니다. 당일 예약 가능합니다.</li>
							<li>회의실 내 음식물 섭취는 금지합니다.</li>
							<li>예약 신청 버튼 클릭 > 예약정보 기재 후 예약 시간을 선택하시면 자동으로 예약됩니다.</li>
							<li>취소는 마이페이지에서 가능합니다.</li>
						</ul>

						<ol>
							<li><span>STEP 01</span>회의실 예약 신청 버튼 선택</li>
							<li><span>STEP 02</span>회의실 예약정보 기입</li>
							<li><span>STEP 03</span>달력에서 예약버튼 선택</li>
						</ol>
					</div>

					<!-- 2018.02.19 삭제 // -->
					<!-- <table class="date_area">
						<caption>날짜선택</caption>

						<colgroup>
							<col style="width:185px;">
							<col>
						</colgroup>

						<tbody>
							<tr>
								<th>예약희망일 선택</th>
								<td>
									<input type="text" id="u_date1" class="date1" readonly>

									<article class="calendar_area" data-fn="calendar">
										<label for="u_date1" class="btn_calendar">달력보기</label>
										<div class="calendar calendar1"></div>
									</article>

									<button type="button" class="btn_apply">회의실 예약 신청</button>
								</td>
							</tr>
						</tbody>
					</table> -->
					<!-- // 2018.02.19 삭제 -->

					<!-- 2018.02.19 추가 // -->
					<div class="txt_btn_area">
						<p>
							[회의실 예약 신청] 버튼 클릭 후 예약정보를 입력해 주세요.<br>
							회의실 예약은 예약 시점으로부터 1개월 이내 최대 15시간 예약 가능합니다.
						</p>
						<button type="button" class="btn_apply">회의실 예약 신청</button>
					</div>
					<!-- // 2018.02.19 추가 -->

					<div class="write_area">
						<h3 class="tit">회의실 예약정보</h3><!-- 2018.02.19 수정 -->
						<p class="txt">아래 정보를 입력 후 달력에서 원하시는 날짜를 선택해 주세요.</p>

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
									<td>Digital Life School </td>
								</tr>

								<tr>
									<th>회의제목</th>
									<td colspan="3">
										<input type="text" title="회의제목 입력" class="subject">
									</td>
								</tr>

								<tr>
									<th>회의내용</th>
									<td colspan="3">
										<div class="input_wrap" data-ui="placeholder">
											<textarea title="회의내용 입력" class="txt" id="txt"></textarea>
											<label for="txt">300자 내외로 기입해 주세요.</label>
										</div>
									</td>
								</tr>

								<tr>
									<th>예약시설</th>
									<td colspan="3">
										<div class="input_wrap" data-ui="placeholder">
											<input type="text" title="예약시설 입력" class="option" id="option">
											<label for="option">예) 카메라, 조명</label>
										</div>
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
										<td>09:00 ~ 10:00</td>
									</tr>

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
								</tbody>
							</table>
						</div>

						<div class="reserve_table">
							<table>
								<caption>예약 일정 표</caption>

								<colgroup>
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">

									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
									<col style="width:57px;">
								</colgroup>

								<thead>
									<tr>
										<th colspan="2">1월 31일(수)</th>
										<th colspan="2">2월 1일(목)</th>
										<th colspan="2">2월 2일(금)</th>
										<th colspan="2">2월 3일(토)</th>
										<th colspan="2">2월 4일(일)</th>
										<th colspan="2">2월 5일(월)</th>
										<th colspan="2">2월 6일(화)</th>

										<th colspan="2">1월 31일(수)</th>
										<th colspan="2">2월 1일(목)</th>
										<th colspan="2">2월 2일(금)</th>
										<th colspan="2">2월 3일(토)</th>
										<th colspan="2">2월 4일(일)</th>
										<th colspan="2">2월 5일(월)</th>
										<th colspan="2">2월 6일(화)</th>
									</tr>

									<tr>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>

										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
										<th>두드림룸</th>
										<th>OZ룸</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td><a href="#popup_complete" class="btn_reserve" data-fn="popupBtnOpen">예약</a></td><!-- 예약완료 -->
										<td><a href="#popup_info" class="btn_reserve" data-fn="popupBtnOpen">예약</a></td><!-- 예약안내(수강생이 아닌경우) -->
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><a href="#" class="btn_reserve">예약</a></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>

									<tr>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="disabled">예약불가</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>

										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
										<td><span class="complete">예약완료</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- 예약완료 팝업 // -->
				<div class="popup_complete" id="popup_complete" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">회의실 예약 완료</h2>

						<div class="popup_content">
							<!-- -->
							<p class="txt">
								언더스탠드에비뉴<br>
								회의실 예약이 완료 되었습니다.
								<span>회의실 예약 취소는 마이페이지를 이용해 주세요.</span>
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

				<!-- 회의실 예약 안내 팝업 // -->
				<div class="popup_info" id="popup_info" data-ui="popup">
					<section class="popup_inner">
						<h2 class="popup_tit">회의실 예약 안내</h2>

						<div class="popup_content">
							<!-- -->
							<p class="txt">
								회의실 예약은 <br>
								Digital Life School, 성공 두드림 아카데미<br>
								수강생만 이용 가능합니다.

								<span>회원 문의는 1:1 문의하기를 이용해 주세요.</span>
							</p>

							<div class="btn_area">
								<button type="button" class="btn_apply type1 midium" data-fn="popupBtnClose">확인</button>
							</div>
							<!-- -->

							<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
						</div>
					</section>
				</div>
				<!-- // 회의실 예약 안내 팝업 -->

				<!-- 2018.02.19 추가 // -->
				<script>
				var tableW = $('.reserve_table table col').length*57;

				$('.reserve_table table').css({'width':tableW});

				$('.reserve_area .btn_next').click(function(){
					if (!$('.reserve_table table').is(':animated')) {
						$('.reserve_area .btn_prev').show();
						$('.reserve_table table').animate({'margin-left':'-=114px'}, 300);

						if (parseInt($('.reserve_table table').css('margin-left')) === 798-tableW+114 ) {
							$('.reserve_area .btn_next').hide();
						}
					}
				});

				$('.reserve_area .btn_prev').click(function(){
					if (!$('.reserve_table table').is(':animated')) {
						$('.reserve_table table').animate({'margin-left':'+=114px'}, 300);

						if (parseInt($('.reserve_table table').css('margin-left')) === -114 ) {
							$('.reserve_area .btn_prev').hide();
						}
					}
				});
				</script>
				<!-- // 2018.02.19 추가 -->


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
