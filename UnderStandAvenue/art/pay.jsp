<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="rent";
	String path4="pay";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="대관안내";
	String path4tit="대관료";
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

		<div class="pay">
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
						<a href="/art/rent_pay.jsp"><strong>대관료</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">ART STAND</h2>
					<p class="con_tit_txt">아트스탠드 대관안내입니다.</p>

					<!-- -->
					<section>
						<h3>공연/행사 및 방송</h3>
						<table>
							<caption>공연/행사 및 방송 대관 안내 표</caption>

							<colgroup>
								<col style="width:144px;" />
								<col style="width:252px;" />
								<col style="width:252px;" />
								<col style="width:253px;" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">대관 가능 시간</th>
									<th scope="col">공연</th>
									<th scope="col">행사 및 방송</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th scope="row">기본대관</th>

									<td>
										12:30 ~ 22:30<br />
										(1일 10시간)
									</td>

									<td>1,000,000원</td>

									<td>2,000,000원</td>
								</tr>

								<tr>
									<th scope="row" rowspan="2">준비대관</th>

									<td>
										09:30 ~ 12:30<br />
										(1일 3시간)
									</td>

									<td>250,000원</td>

									<td>500,000원</td>
								</tr>

								<tr>
									<td>
										12:30 ~ 22:30<br />
										(1일 10시간)
									</td>

									<td>500,000원</td>

									<td>1,000,000원</td>
								</tr>
							</tbody>
						</table>
					</section>

					<section>
						<h3>전시</h3>
						<table>
							<caption>전시 대관 안내 표</caption>

							<colgroup>
								<col style="width:144px;" />
								<col style="width:252px;" />
								<col style="width:252px;" />
								<col style="width:253px;" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">대관 가능 시간</th>
									<th scope="col">공연</th>
									<th scope="col">비고</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th scope="row">기본대관</th>

									<td>09:00 ~ 22:00</td>

									<td>2,400,000원</td>

									<td>
										7일 기준,<br />
										1일 10시간
									</td>
								</tr>

								<tr>
									<th scope="row">준비대관</th>

									<td>09:00 ~ 22:00</td>

									<td>200,000원</td>

									<td>1일 10시간</td>
								</tr>
							</tbody>
						</table>
					</section>

					<div class="caution">
						<strong>주의사항</strong>
						<ul>
							<li>상기 금액은 모두 부가세를 불포함한 금액이며, 대관료 납부 시 부가세를 별도로 납부하여야 함</li>
							<li>전시대관의 경우 <em>오전 9시부터 오후 22시까지</em> 중 원하는 시간대를 선택하여 1일 10시간을 대관 기준시간으로 함 (예: 10 : 00~20 : 00 / 12 : 00~22 : 00)</li>
							<li>전시대관의 경우 7일(월요일 포함) 대관을 기본으로 함 (7일 대관 중 준비대관 1일에 대한 비용은 UNDER STAND AVENUE가 지원함)</li>
							<li>전시대관의 경우 7일 미만 대관 시 기본대관료 일일 400,000원, 준비대관료 일일 200,000원으로 산정함</li>
							<li>오전 준비대관<em>(09 : 30~12 : 30)</em>은 준비대관료의 50%를 대관료로 부과함</li>
							<li>저녁 공연, 행사 및 방송 대관은 <em>22:30 이내에 종료하여야 함</em></li>
							<li><em>철수작업은 23:00 이내에 종료하여야 하며, 초과 시 대관운영규정에 의거하여 추가 대관료를 부과함</em></li>
						</ul>
					</div>

					<section class="etc">
						<h3>기본대관료 포함사항</h3>

						<ul>
							<li>무대 및 객석, 대기실, 창고 등 공통시설 및 공간</li>
							<li>부대설비사용료 (별도 설비내역 참조)</li>
						</ul>
					</section>

					<section class="etc">
						<h3>문의</h3>

						<address>언더스탠드에비뉴 아트스탠드 <a href="mailto:art@understandavenue.com">art@understandavenue.com</a></address>
					</section>
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
