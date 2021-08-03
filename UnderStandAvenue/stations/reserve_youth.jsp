<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="stations";
	String path3="reserve";
	String path4="";
	String path1tit="Do DREAM";
	String path2tit="고용노동부 청년 스테이션";
	String path3tit="청년 취업상담";
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

		<div class="reserve youth">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_stations.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/stations/youth.jsp">고용노동부 청년 스테이션</a>
						<a href="/stations/reserve_youth.jsp"><strong>청년 취업상담</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">청년 취업상담</h2>

					<p class="con_tit_txt">청년 취업과 주거 복지 관련 고민이 있다면 지금 전문 상담 신청하세요.</p>

					<p class="txt1">이용안내</p>

					<p class="txt2">
						상담 신청은 언더스탠드에비뉴 회원이면 로그인 후 누구나 신청 가능합니다.
					</p>

					<strong class="caution">* 필수 항목은 반드시 기입해 주세요.</strong>

					<table>
						<caption>청년 취업 상담 예약 양식</caption>

						<colgroup>
							<col style="width:150px;">
							<col style="width:210px;">
							<col style="width:150px;">
							<col>
						</colgroup>

						<tbody>
							<tr>
								<th>* 상담 분야</th>
								<td colspan="3">
									<select title="상담 분야 선택" class="category">
										<option>선택</option>
										<option>청년정책 상담</option>
										<option>취업 상담</option>
										<option>주거/복지/건강 상담</option>
										<option>기타 상담</option>
									</select>
								</td>
							</tr>

							<tr>
								<th>* 일시</th>
								<td colspan="3">
									<select title="일시 선택" class="date">
										<option>선택</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
									</select>
									일

									<select title="시간선택" class="time">
										<option>선택</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
									</select>
									시
								</td>
							</tr>

							<tr>
								<th>* 이름</th>
								<td><input type="text" class="name"></td>
								<th>* 연락처</th>
								<td>
									<select title="연락처 국번 선택" class="tel1">
										<option>010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
									</select>
									<span class="tel_hyphen">-</span>
									<input type="text" class="tel2" title="연락처 앞자리 입력">
									<span class="tel_hyphen">-</span>
									<input type="text" class="tel3" title="연락처 뒷자리 입력">
								</td>
							</tr>

							<tr>
								<th>* 성별</th>
								<td>
									<input type="radio" id="man" name="gender" class="gender"><label for="man">남</label>
									<input type="radio" id="woman" name="gender" class="gender"><label for="woman">여</label>
								</td>
								<th>* 학력</th>
								<td><input type="text" class="achievement"></td>
							</tr>

							<tr>
								<th>* 이메일</th>
								<td colspan="3">
									<input type="text" class="mail1">
									<span class="mail_alpha">@</span>
									<input type="text" class="mail1">

									<select title="시간 선택" class="mail3">
										<option>직접입력</option>
										<option>naver.com</option>
										<option>gmail.com</option>
										<option>nate.com</option>
										<option>daum.net</option>
										<option>hanmail.net</option>
										<option>yahoo.com</option>
										<option>hotmail.com</option>
										<option>korea.com</option>
										<option>lycos.com</option>
										<option>empal.com</option>
									</select>
								</td>
							</tr>

							<tr>
								<th>* 상담신청 내용</th>
								<td colspan="3"><textarea class="txt" placeholder="300자 내외로 기입해 주세요."></textarea></td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<a href="#popup1" class="midium type1" data-fn="popupBtnOpen">상담예약</a>
					</div>

					<div id="popup1" class="popup1" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">상담 예약 완료</h2>

							<div class="popup_content">
								<!-- -->
								<p class="txt1">
								<b>
									언더스탠드에비뉴
								</b>
								<br>
								상담예약이 완료 되었습니다.
								</p>

								<p class="txt2">
								예약내용 확인 후 영업일 기준 3~5일 이내 연락 드리겠습니다.<br>
								상담 취소는 전화 및 1:1 문의하기를 이용해 주세요.
								</p>

								<div class="btn_area">
									<button type="button" class="type1 midium" data-fn="popupBtnClose">확인</button>
								</div>
								<!-- -->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>


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
