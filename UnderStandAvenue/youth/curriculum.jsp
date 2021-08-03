<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="about";
	String path4="curriculum";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="ABOUT";
	String path4tit="CURRICULUM";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="youth">

		<div class="curriculum">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/curriculum.jsp"><strong>Curriculum</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Curriculum</h2>
					<p class="con_tit_txt">유스스탠드의 교육과정을 소개합니다.</p>

					<p class="txt1">청소년에게 필요한 기본 기능 직종과 미래 유망 직종을 구분하여 전문적인 지식을 배울 수 있도록 합니다.</p>

					<ul class="job_list">
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list1.jpg" alt="" />
								<figcaption>게임 개발·그래픽 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list4.jpg" alt="" />
								<figcaption>조경원예 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>

						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list2.jpg" alt="" />
								<figcaption>웹 편집출판·디자인 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list3.jpg" alt="" />
								<figcaption>영상편집 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list7.jpg" alt="" />
								<figcaption>제과·제빵 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list8.jpg" alt="" />
								<figcaption>바리스타 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list9.jpg" alt="" />
								<figcaption>가죽공예 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list6.jpg" alt="" />
								<figcaption>향 공예 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
						<li>
							<figure>
								<img src="/avenueCom/images/sub/youth_curriculum_job_list5.jpg" alt="" />
								<figcaption>네일아트 과정</figcaption>
								<span class="btn_area"><a href="#" class="small type3 btn_detail">자세히보기</a></span>
							</figure>
						</li>
					</ul>

					<div class="job_table">
						<table>
							<caption>청소년에게 필요한 기본 기능 직종과 미래 유망 직종 표</caption>

							<colgroup>
								<col style="width:144px;" />
								<col style="width:274px;" />
								<col style="width:482px;" />
							</colgroup>

							<thead>
								<tr>
									<th scope="col">구  분</th>
									<th scope="col">과정명</th>
									<th scope="col">교육내용</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th>Science &amp; <br />Technology</th>
									<td>게임개발 · 그래픽</td>
									<td>
										<ul>
											<li>C++ 프로그래밍 기초</li>
											<li>게임 원화</li>
											<li>게임 애니메이션</li>
											<li>게임 이펙트</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th>Environment</th>
									<td>조경 · 원예</td>
									<td>
										<ul>
											<li>꽃다발 및 디쉬가든 제작</li>
											<li>다육식물 테라리움 제작</li>
											<li>플라워장식 및 에코백 제작</li>
											<li>테이블 장식 제작</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th rowspan="2">Media</th>
									<td>웹 편집출판 · 디자인</td>
									<td>
										<ul>
											<li>일러스트 디자인 테크닉 및 툴 활용</li>
											<li>포토샵 툴 이해 및 활용</li>
											<li>인디자인 도구 및 디자인 퍼블리싱 이해</li>
										</ul>
									</td>
								</tr>

								<tr>
									<td>영상편집</td>
									<td>
										<ul>
											<li>Five Cut 영상 제작</li>
											<li>캐릭터 뮤직비디오</li>
											<li>창작 영상</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th rowspan="2">Service</th>
									<td>제과 · 제빵</td>
									<td>
										<ul>
											<li>제과 및 제빵 관련 실습</li>
											<li>(케이브, 롤, 도넛 등)</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>바리스타</td>
									<td>
										<ul>
											<li>로스팅, 핸드드립 추출 및 다양한 기구를 사용한 추출법 습득</li>
											<li>라떼아트 실습</li>
											<li>바리스타 자격증 준비</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th rowspan="2">Artistic craft</th>
									<td>가죽공예</td>
									<td>
										<ul>
											<li>가죽도구, 가죽 종류 습득</li>
											<li>재단 및 엣지처리, 바느질</li>
											<li>가죽 제품 제작(가방, 마우스패드, 컵 홀더 등)</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>향 공예</td>
									<td>
										<ul>
											<li>다양한 향의 캔들 제품 제작(자작, 마카롱, 허브)</li>
											<li>천연 화장품 및 비누 제작</li>
											<li>작품 전시 등</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th>Beauty</th>
									<td>네일아트</td>
									<td>
										<ul>
											<li>네일아트 국가기술자격증취득 </li>
											<li>건강한 손발톱 관리 교육</li>
											<li>네일아트 및 패디큐어 실습</li>
											<li>젤네일, 프렌치 등 기술 습득 </li>
										</ul>
									</td>
								</tr>


							</tbody>
						</table>
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
