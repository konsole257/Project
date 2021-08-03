<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="recruit";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="채용안내";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mom">

		<div class="recruit">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mom.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/mom/about.jsp">MOM STAND</a>
						<a href="/mom/about.jsp">About</a>
						<a href="/mom/recruit.jsp"><strong>채용안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">채용안내</h2>

					<p class="con_tit_txt">꿈과 열정을 갖고 미래를 꿈꾸는 외식인재를 기다립니다.</p>

					<div class="download_group">
						<p>
							새로운 외식문화를 지향하는 맘스탠드의 비전을 공유할<br>
							여러분의 많은 지원바랍니다
						</p>
						<div class="btn_area">
							<a href="/avenueCom/download/recruit_multipleCultures.doc" target="_blank" class="midium type1 btn_download">다문화 여성 전형 양식</a>
							<a href="/avenueCom/download/recruit_normal.doc" target="_blank" class="midium type1 btn_download">일반 전형 양식</a>
						</div>
					</div>

					<section class="target">
						<h3>모집대상</h3>

						<ul>
							<li><strong>책임감, 성실함</strong>을 갖춘 소유자</li>
							<li><strong>도전적</strong>이며 <strong>밝고 명랑한</strong> 성격의 소유자</li>
							<li>외식업체 관련 근무 희망자 및 <strong>경력자</strong> 우대</li>
						</ul>
					</section>

					<section class="period">
						<h3>모집기간</h3>

						<ul>
							<li>상시채용</li>
						</ul>
					</section>

					<section class="part">
						<h3>모집부분</h3>

						<div class="table_wrap">
							<table>
								<caption>모집부분 목록</caption>

								<colgroup>
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
								</colgroup>

								<thead>
									<tr>
										<th>모집부분</th>
										<th>담당업무</th>
										<th>근무장소</th>
										<th>인원</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>
											협력사원<br>
											정규직
										</td>
										<td>
											매장업무(안내, 서버),<br>
											주방업무(조리),<br>
											커피 바리스타, 베이커리
										</td>
										<td>
											언더스탠드에비뉴<br>
											맘스탠드 F&amp;B 사업장
										</td>
										<td>인원제한 없음</td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>

					<%-- <section class="training">
						<h3>직무교육</h3>

						<div class="table_wrap">
							<table>
								<caption>직무교육 목록</caption>

								<colgroup>
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
								</colgroup>

								<thead>
									<tr>
										<th>기간</th>
										<th>장소</th>
										<th>날짜 및 시간</th>
										<th>교육내용</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>3주간 60시간</td>
										<td>당사 교육장</td>
										<td>
											월요일~금요일<br>
											10시~14시
										</td>
										<td>
											<ul>
												<li>서비스</li>
												<li>음식 조리</li>
												<li>커피 바리스타</li>
												<li>베이커리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</section> --%>

					<section class="terms">
						<h3>근무조건</h3>

						<ul>
							<li>교대근무</li>
							<%-- <li>교육비 지급(교통비)</li> --%>
							<li>4대보험(직무교육 종료 후 계약직, 정규직 전환 시 해당됨)</li>
						</ul>
					</section>

					<section class="method">
						<h3>전형방법</h3>

						<ol>
							<li class="document"><span>서류전형</span></li>
							<li class="worker"><span>실무자면접</span></li>
							<li class="last"><span>최종합격</span></li>
						</ol>
					</section>

					<section class="submission">
						<h3>제출서류</h3>

						<ul>
							<li>당사 이력서</li>
							<li>자기소개서 제출(양식 다운로드)</li>
						</ul>
					</section>

					<section class="">
						<h3>지원방법</h3>

						<ul>
							<li>이메일 <a href="mailto:dongin@understandavenue.com" target="_blank">dongin@understandavenue.com</a></li>
						</ul>
					</section>

					<strong class="caution">허위 사실이 발견될 경우 채용이 취소될 수 있습니다.</strong>

					<%-- <div class="btn_area">
						<a href="/mom/recruit_write" class="big type4 btn_recruit" target="_self">입사 지원하기</a>
					</div> --%>
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
