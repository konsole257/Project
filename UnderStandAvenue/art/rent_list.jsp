<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="rent";
	String path4="rent";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="대관안내";
	String path4tit="대관안내 및 절차";
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

		<div class="rent list">
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
						<a href="/art/rent_list.jsp">대관안내</a>
						<a href="/art/rent_list.jsp"><strong>대관안내 및 절차</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">ART STAND</h2>

					<p class="con_tit_txt">아트스탠드 대관안내입니다.</p>

					<div class="btn_area">
						<a href="#notice" class="midium type1 btn_notice">대관공고 바로가기</a>
					</div>

					<section class="process">
						<h3>대관절차</h3>

						<ol>
							<li><span>대관공고</span></li>
							<li><span>대관신청</span></li>
							<li><span>대관심의</span></li>
							<li><span>결과통보</span></li>
							<li><span>계약</span></li>
						</ol>

						<table>
							<caption>대관절차 표</caption>

							<colgroup>
								<col style="width:144px;" />
								<col style="width:756px;" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col" colspan="2">대관절차 세부내용</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th scope="row">대관공고</th>
									<td>
										<dl>
											<dt>정기대관</dt>
											<dd>아트스탠드 대관공고 게시판에 공지</dd>

											<dt>수시대관</dt>
											<dd>수시대관 발생 시 아트스탠드 대관공고 게시판에 공지</dd>
										</dl>
									</td>
								</tr>

								<tr>
									<th scope="row">대관신청</th>
									<td>
										<dl>
											<dt>신청방법</dt>
											<dd>대관규약 숙지 후 대관신청서를 포함한 제출서류 제출</dd>

											<dt>제출서류 및 제출처</dt>
											<dd>대관규약 참조</dd>
										</dl>
										<a href="/download/rent_agreement.pdf" target="_blank" class="btn_view">대관규약 보기</a>
									</td>
								</tr>

								<tr>
									<th scope="row">대관심의</th>
									<td>
										<p>아트스탠드 운영취지 감안, 주최사의 진행능력 및 의도 등 고려하여 결정</p>
									</td>
								</tr>

								<tr>
									<th scope="row">결과통보</th>
									<td>
										<p>심의 결과 승인여부 개별 메일송부</p>
									</td>
								</tr>

								<tr>
									<th scope="row">계약</th>
									<td>
										<ul>
											<li>승인 후 7일 이내 계약 체결</li>
											<li>계약일로부터 14일 이내 기본대관료의 30% 계약금 입금완료(수시대관의 경우 50%)</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</section>

					<section class="notice" id="notice">
						<h3>대관공고</h3>

						<table class="bbs list type1">
							<caption>공지사항 목록</caption>

							<colgroup>
								<col style="width: 90px;" />
								<col />
								<col style="width: 150px;" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td class="number">2</td>
									<td class="subject"><a class="dotdot" style="-ms-word-wrap: break-word;" href="#">제목이 글자수 제한으로 표시됩니다. 제목이 글자수 제한으로 표시됩니다.제목이 글자수 제한으로 표시됩니다. 제목이 글자수 제한으로 표시됩니다.</a></td>
									<td class="date">2016.01.10</td>
								</tr>

								<tr>
									<td class="number">1</td>
									<td class="subject"><a class="dotdot" style="-ms-word-wrap: break-word;" href="#">제목이 글자수 제한으로 표시됩니다. 제목이 글자수 제한으로 표시됩니다.</a></td>
									<td class="date">2016.01.10</td>
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
					</section>
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
