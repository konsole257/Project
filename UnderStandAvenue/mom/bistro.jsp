<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="bistro";
	String path4="bistro";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="Bistro Hive";
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
	<main id="wrap" class="mom">

		<div class="bistro">
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
						<a href="/mom/bistro.jsp"><strong>Bistro Hive</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Bistro Hive</h2>
					<p class="con_tit_txt">세계의 다양한 먹거리를 즐길 수 있는 열린 공간</p>

					<div class="txt_area">
						<p class="txt">
							비스트로 하이브(BISTRO HIVE)는 세계 각국의 다양한 먹거리를 가볍게<br />
							즐길 수 있는 공간으로 점심에는 식사를, 저녁에는 수제 맥주와 와인을<br />
							다양한 종류의 메뉴와 함께 즐길 수 있는 곳입니다.<br /><br />

							세계 여러 나라의 음식과 함께 셰프들의 개성이 넘치는 요리를 편안한<br />
							분위기에서 저렴하게 즐겨보세요!
						</p>

						<dl class="info">
							<dt>영업시간</dt>
							<dd>11:00 ~ 22:00</dd>

							<dt>휴무일</dt>
							<dd>연중무휴 (설날, 추석 임시휴업 가능)</dd>

							<dt>좌석수</dt>
							<dd>178석</dd>

							<dt>주요메뉴</dt>
							<dd>Noodles / Tapas / Craft Beer / Wine</dd>

							<dt>문의</dt>
							<dd>02-2135-8177</dd>
						</dl>
					</div>

					<section class="menu">
						<h3>Bistro Hive’s MENU</h3>
						<nav>
							<h4>MENU분류</h4>
							<a href="#rice" data-fn="anchor">라이스</a>
							<a href="#noodle" data-fn="anchor">누들바</a>
							<a href="#tapas" data-fn="anchor">타파스</a>
							<a href="#chef" data-fn="anchor">쉐프메뉴</a>
							<a href="#wine" data-fn="anchor">와인 &amp; 맥주</a>
						</nav>
					</section>

					<section id="rice" class="sort photo">
						<h4>라이스</h4>

						<ul>
								<li >
									<img src="/avenueCom/images/sub/mom_bistro_rice_chicken.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">48시 치킨커리</p>
											<p class="price"><span>8,000</span>원</p>
										</div>
										<p class="food_txt">
											닭고기와 갖은 야채로 우려낸 치킨스톡 베이스에<br />
											20여종의 향신료가 들어간 48시간 동안 만드는 정통 수제 커리
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_rice_cutlet.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">48시 치킨&amp;돈카츠 커리</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											수제 치킨커리와 바삭한 돈카츠를 토핑한<br />
											포크커틀렛 커리
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_rice_egg.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">48시 에그&amp;소시지 커리</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											수제 치킨 커리에<br />
											프랑크소시지와 계란후라이가 토핑
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_rice_beef.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">타워 비프라이스</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											달콤하게 양념한 소고기와 신선한 야채, 부추, 계란을<br />
											올린 타워 라이스
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_rice_sauce.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">깐풍 라이스</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											매콤한 중국식 소스에 쉬림프, 치킨, 양파, 피망 등을<br />
											볶아서 토핑한 라이스 메뉴
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_rice_kids.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">파치 키즈 라이스 (파인애플&amp; 치킨)</p>
											<p class="price"><span>6,000</span>원</p>
										</div>
										<p class="food_txt">
											돈까스 소스와 파인애플, 치킨, 방울토마토가 토핑된<br />
											새콤달콤한 어린이 메뉴
										</p>
									</div>
								</li>
						</ul>
					</section>

					<section id="noodle" class="sort photo">
						<h4>누들바</h4>

						<ul>
								<li >
									<img src="/avenueCom/images/sub/mom_bistro_noodle_clam.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">얼큰클램</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											싱싱한 모시조개,바지락 육수에 구운 대파가 곁들어진<br />
											얼큰하고 시원한 한국식 봉골레 국물 파스타
										</p>
									</div>
								</li>

								<%-- <li>
									<img src="/avenueCom/images/sub/mom_bistro_noodle_mush.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">들깨버섯</p>
											<p class="price"><span>7,000</span>원</p>
										</div>
										<p class="food_txt">
											다양한 버섯과 들깨가 듬뿍 들어간 깔끔하고 고소한<br />
											건강 칼국수
										</p>
									</div>
								</li> --%>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_noodle_jajang.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">춘면</p>
											<p class="price"><span>8,000</span>원</p>
										</div>
										<p class="food_txt">
											이탈리아風 토마토짜장미트소스와<br />
											스파게티면이 어우러진 비빔면
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_noodle_beef.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">소고기 샤브 누들</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											다양한 야채와 소고기샤브샤브가 토핑된 담백하고 부드러운<br />
											샤브샤브 스타일의 국수
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_noodle_bean2.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">매콤 명란 연두부</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											매콤하고 부드러운 연두부 국물과 명란에 고소하게<br />
											구운 김을 곁들인 국수
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_noodle_shrimp.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">통통쉬림프완탕</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											부드러운 계란속에 탱탱한 새우가 함께 어우러진<br />
											담백하고 개운하고 깔끔한 맛의 누들
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_noodle_buckwheat.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">콜드메밀</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											야채튀김 또는 쉬림프 튀김을 함께 즐기는 시원한 메밀 소바<br />
											 *쉬림프 튀김 선택 시 2,000원 추가
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_noodle_cold.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">콜드누들</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											무더운 여름에 어울리는 시원한 육수와<br />
											함께 즐기는 콜드누들
										</p>
									</div>
								</li>

								<%-- <li >
									<img src="/avenueCom/images/sub/mom_bistro_noodle_rice.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">짱밥</p>
											<p class="price"><span>1,500</span>원</p>
										</div>
										<p class="food_txt">
											건강에 좋은 다시마로 지은 밥속에 아삭아삭 씹히는<br />
											우엉과 연근이 들어간 주먹밥
										</p>
									</div>
								</li> --%>
						</ul>
					</section>

					<section id="tapas" class="sort photo">
						<h4>타파스</h4>

						<ul>
								<li >
									<img src="/avenueCom/images/sub/mom_bistro_tapas_snack.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">리얼새우깡</p>
											<p class="price"><span>6,000</span>원</p>
										</div>
										<p class="food_txt">
											민물새우를 바삭하게 튀겨내<br />
											짭조름한 맛이 일품인 새우깡
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_tapas_tteok.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">소떡소떡</p>
											<p class="price"><span>8,000</span>원</p>
										</div>
										<p class="food_txt">
											프랑크소세지와 가래떡을 튀겨내 모차렐라 치즈를 듬뿍 곁들인<br />
											철판 떡튀김
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_tapas_cuttle.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">오다리튀김</p>
											<p class="price"><span>8,000</span>원</p>
										</div>
										<p class="food_txt">
											쫄깃한 오징어 다리를 바삭하게 튀겨 디핑 소스에 찍어<br />
											가볍게 즐길수 있는 맥주 안주
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_tapas_wedge.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">치킨 &amp; 웻지포테이토</p>
											<p class="price"><span>18,000</span>원</p>
										</div>
										<p class="food_txt">
											바삭한 아메리칸 스타일 치킨과 함께 즐기는 웻지포테이토
										</p>
									</div>
								</li>

								<%-- <li>
									<img src="/avenueCom/images/sub/mom_bistro_tapas_wapple.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">와플앤치킨</p>
											<p class="price"><span>18,000</span>원</p>
										</div>
										<p class="food_txt">
											달콤한 와플과 바삭한 치킨으로 구성된<br />
											미국 남부의 대표메뉴
										</p>
									</div>
								</li> --%>

								<%-- <li >
									<img src="/avenueCom/images/sub/mom_bistro_tapas_pepper.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">그릴 미트페퍼</p>
											<p class="price"><span>12,000</span>원</p>
										</div>
										<p class="food_txt">
											아삭한 고추에 소고기와 치즈를 듬북 채워 오븐에 구운<br />
											고추 구이와 토마토살사를 곁드린 한국의 고추전 스타일의 미트페퍼
										</p>
									</div>
								</li> --%>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_tapas_shrimp.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">그릴쉬림프</p>
											<p class="price"><span>12,000</span>원</p>
										</div>
										<p class="food_txt">
											블랙타이거 새우와 각종 야채를 버터와 함께 구워낸<BR />
											그릴 새우 요리
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_tapas_lettuce.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">양상추랩 (치킨 또는 쉬림프)</p>
											<p class="price"><span>12,000</span>원</p>
										</div>
										<p class="food_txt">
											매콤한 중국식 소스에 쉬림프, 치킨, 양파, 피망 등을<br />
											양상추에 함께 먹는 메뉴
										</p>
									</div>
								</li>
						</ul>
					</section>

					<section id="chef" class="sort photo">
						<h4>쉐프메뉴</h4>

						<ul>
								<li >
									<img src="/avenueCom/images/sub/mom_bistro_chef_meet.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">스페니쉬미트볼</p>
											<p class="price"><span>12,000</span>원</p>
										</div>
										<p class="food_txt">
											토마토소스가 어우러진 수제미트볼과 부드러운 감자를<br />
											부담없이 즐길 수 있는 가정식 메뉴
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_chef_salmon.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">라따뚜이와 연어스테이크</p>
											<p class="price"><span>18,000</span>원</p>
										</div>
										<p class="food_txt">
											그릴에 구운 연어와 매콤한 라따뚜이가 어우러진<br />
											메뉴
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_chef_rib.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">분정갈비</p>
											<p class="price"><span>22,000</span>원</p>
										</div>
										<p class="food_txt">
											갈비소스로 맛을 낸 부드러운 등갈비위에<br />
											쫀듯한 찹쌀을 곁들인 요리
										</p>
									</div>
								</li>

								<li>
									<img src="/avenueCom/images/sub/mom_bistro_chef_chili.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">칠리콘까르네</p>
											<p class="price"><span>12,000</span>원</p>
										</div>
										<p class="food_txt">
											소고기, 토마토, 콩, 칠리소스를 넣고 끊인 매콤한<br />
											멕시코식 스튜요리
										</p>
									</div>
								</li>

								<li >
									<img src="/avenueCom/images/sub/mom_bistro_chef_shrimp.jpg" alt="" />
									<div>
										<div class="name_area">
											<p class="name">쉬림프 타퀴토</p>
											<p class="price"><span>9,000</span>원</p>
										</div>
										<p class="food_txt">
											매콤한 칠리소스, 새우, 야채를 또띠아에 감싼<br />
											멕시코 정통 요리
										</p>
									</div>
								</li>
						</ul>
					</section>

					<section id="wine" class="sort text">
						<h4>와인 &amp; 맥주</h4>

						<ul>
							<li >
								<table class="wide">
									<caption>와인 가격표</caption>

									<colgroup>
										<col style="width:225px;" />
										<col style="width:113px;" />
										<col style="width:113px;" />
										<col style="width:113px;" />
										<col style="width:338px;" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Wine</th>
											<th scope="col">구분</th>
											<th scope="col">판매가</th>
											<th scope="col">용량</th>
											<th scope="col">메뉴설명</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>
												Santero Moscato Spumante<br />
												<small class="alert">산테로 모스카토 스푸만테</small>
											</td>
											<td>Sparkling White</td>
											<td class="price"><span>30,000</span>원</td>
											<td>750ml</td>
											<td class="text">
												이태리 피에몬테, 산테로 사 과일의 산미와 신선하면서도<br />
												우아한 감미
											</td>
										</tr>

										<tr>
											<td>
												Penascal<br />
												<small class="alert">페나스칼</small>
											</td>
											<td>Sparkling Rose</td>
											<td class="price"><span>40,000</span>원</td>
											<td>750ml</td>
											<td class="text">스페인 로제와인 No.1 브랜드, 과하지 않은 단맛과 산미</td>
										</tr>

										<tr>
											<td>
												Baron Philippe Chardonnay<br />
												<small class="alert">바롱필립 샤르도네이</small>
											</td>
											<td>White</td>
											<td class="price"><span>40,000</span>원</td>
											<td>750ml</td>
											<td class="text">
												프랑스, 랑그독루시옹, 건축가 마타가 로칠드의 포도나무를<br />
												오마주한 라벨, 아카시아, 청사과, 허브향
											</td>
										</tr>

										<tr>
											<td>
												Fox Hollow Merlot<br />
												<small class="alert">폭스 할로우 메를로</small>
											</td>
											<td>Red</td>
											<td class="price"><span>40,000</span>원</td>
											<td>750ml</td>
											<td class="text">
												캘리포니아 나파밸리, 가성비우수,<br />
												2011 오렌지카운티 와인페어 동메달
											</td>
										</tr>

										<tr>
											<td>
												Glass<br />
												<small class="alert">1잔</small>
											</td>
											<td></td>
											<td class="price"><span>6,500</span>원</td>
											<td></td>
											<td class="text"></td>
										</tr>
									</tbody>
								</table>
							</li>
							<li class="clear bear">
								<table class="wide">
									<caption>맥주 가격표</caption>

									<colgroup>
										<col style="width:398px;" />
										<col style="width:105px;" />
										<col style="width:397px;" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Craft Beer</th>
											<th scope="col">판매가</th>
											<th scope="col">메뉴설명</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>
												<img src="/avenueCom/images/sub/mom_bistro_beer_namsan.jpg" />
												NAMSAN PURE PILSNER<br />
												<small class="alert">남산 필스너</small>
											</td>
											<td class="price"><span>7,000</span>원</td>
											<td class="text" style="padding-left:60px;">
												부드러운 목넘김과 톡 쏘는 뒷맛의 프리미엄 라거
											</td>
										</tr>

										<tr>
											<td>
												<img src="/avenueCom/images/sub/mom_bistro_beer_beakdu.jpg" />
												BAEKDUSAN HEFEWEIZEN<br />
												<small class="alert">백두산 헤페바이젠</small>
											</td>
											<td class="price"><span>7,000</span>원</td>
											<td class="text" style="padding-left:60px;">
												바나나향, 정향, 부드러운 거품의 밀맥주
											</td>
										</tr>

										<tr>
											<td>
												<img src="/avenueCom/images/sub/mom_bistro_beer_geumgang.jpg" />
												GEUMGANG MOUNTAIN DARK ALE<br />
												<small class="alert">금강산 다크에일</small>
											</td>
											<td class="price"><span>7,000</span>원</td>
											<td class="text" style="padding-left:60px;">
												견과류와 초코렛맛의 라이트한 흑맥주
											</td>
										</tr>

										<tr>
											<td>
												<img src="/avenueCom/images/sub/mom_bistro_beer_sokcho.jpg" />
												SOKCHO SESSION IPA<br />
												<small class="alert">속초 IPA</small>
											</td>
											<td class="price"><span>7,000</span>원</td>
											<td class="text" style="padding-left:60px;">
												부드러운 홉, 감귤맛, 드라이한 뒷맛의 정통 페일에일맥주
											</td>
										</tr>
									</tbody>
								</table>
							</li>

							<li >
								<table>
									<caption>음료 가격표</caption>

									<colgroup>
										<col style="width:350px;" />
										<col style="width:75px;" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Soft Drinks</th>
											<th scope="col">ICE</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>
												<span>코카콜라</span>
											</td>
											<td class="price"><span>3,000</span>원</td>
										</tr>

										<tr>
											<td>
												<span>스프라이트</span>
											</td>
											<td class="price"><span>3,000</span>원</td>
										</tr>

										<tr>
											<td>
												<span>페리에</span>
											</td>
											<td class="price"><span>3,000</span>원</td>
										</tr>

										<tr>
											<td>
												<span>애플쥬스</span>
											</td>
											<td class="price"><span>4,000</span>원</td>
										</tr>
									</tbody>
								</table>
							</li>
						</ul>
					</section>

					<script>
					$('.sort').each(function(){
						$(this).find('li:nth-child(2n1)').addClass('clear');
					});
					</script>

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
