<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="brinner";
	String path4="brinner";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="Brinner";
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

		<div class="brinner">
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
						<a href="/mom/brinner.jsp"><strong>Brinner</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Brinner</h2>
					<p class="con_tit_txt">제철 식재료를 기본으로 한 건강한 라이프스타일의 영양식을 제공하는 레스토랑 입니다.</p>

					<!-- -->
					<div class="txt_area">
						<p class="txt">
							계절의 흐름에 따라 순리에 맞게 키워낸 생명의 먹을거리, 제철<br>
							식재료들이야말로 우리 몸의 기운을 돋게 하는 에너지를 만들죠!<br>
							&lt;Brinner&gt;에서는 우리의 건강을 지키고 계절을 느낄 수 있는 제철 음식을<br>
							만날 수 있는 카페입니다.<br><br>

							특히 환경을 해치지 않는 조리법으로 식재료 본연의 맛을 유지하며 간단한<br>
							조리과정은 음식 처리를 최소화하는 듯 친환경적인 메뉴를 제공합니다. <br>
							도심 속 자연쉼터에서 간편하면도 경제적이고 영양만점인 식사를 점심과<br>
							저녁까지 즐겨 보세요!
						</p>

						<dl class="info">
							<dt>영업시간</dt>
							<dd>11:00 ~ 22:00 (카페 10:00 오픈)</dd>

							<dt>휴무일</dt>
							<dd>연중무휴 (설날, 추석 임시휴업 가능)</dd>

							<dt>좌석수</dt>
							<dd>60석</dd>

							<dt>주요메뉴</dt>
							<dd>Urban Food / Specialty Blend Coffee / Homemade Bread</dd>

							<dt>문의</dt>
							<dd>02-2135-8178</dd>
						</dl>
					</div>

					<section class="menu">
						<h3>BRINNER’s MENU</h3>
						<nav>
							<h4>MENU분류</h4>
							<a href="#new" data-fn="anchor" target="_self">NEW MENU</a>
							<a href="#tost" data-fn="anchor" target="_self">프렌치 토스트</a>
							<a href="#burger" data-fn="anchor" target="_self">버거 &amp; Other</a>
							<a href="#specialties" data-fn="anchor" target="_self">SPECIALTIES</a>
							<a href="#salad" data-fn="anchor" target="_self">샐러드</a>
							<a href="#pasta" data-fn="anchor" target="_self">파스타 &amp; Others</a>
							<a href="#bakery" data-fn="anchor" target="_self">베이커리</a>
							<a href="#coffe" data-fn="anchor" target="_self">커피 &amp; 베버리지</a>
						</nav>
					</section>

					<section id="new" class="sort photo">
						<h4>NEW MENU</h4>

						<ul>
							<li>
								<img src="/avenueCom/images/sub/mom_brinner_gorgonzola.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">고르곤졸라 크림 치킨 파스타</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										담백한 닭가슴살과 고르곤졸라치즈의<br>
										풍미가 어우러진 리가토니 크림파스타
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_wasabi.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">와사비 크림 스테이크 파스타</p>
										<p class="price"><span>16,000</span>원</p>
									</div>
									<p class="food_txt">
										와사비 크림과 퍼펙트한 스테이크가 만들어낸<br>
										슈퍼그레잇 페투치네
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_chickenflatter.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">치킨 데리야끼 플래터</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										데리야끼 마리네이드 치킨과 다양한 채소의<br>
										그릴 베지터블 플래터 w. 라이스
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_jamaicanpork.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">자메이칸 포크 플래터</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										자메이칸 시즈닝으로 마리네이드한 목심 스테이크와<br>
										다양한 채소의 그릴 베지터블 플래터 w.라이스
									</p>
								</div>
							</li>

							<%-- <li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_figsalad.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">무화과 치즈 샐러드</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										루꼴라의 쌉싸름함과 제철 무화과의 달콤함<br>
										고르곤졸라치즈의 풍미가 어우러진 샐러드
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_shrimpbaguette.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">쉬림프 아보카도 쉘 w. 바게트</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										아보카도의 영양과 라임의 후레쉬함, 매콤한<br>
										쓰리라차 아이올리가 어우러진 스페셜티
									</p>
								</div>
							</li> --%>



							<%-- <li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_bolognese.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">볼로네제</p>
										<p class="price"><span>12,000</span>원</p>
									</div>
									<p class="food_txt">
										토마토 소스와 바질, 포크와 비프로<br>
										깊은 풍미를 더한 토마토 미트 파스타
									</p>
								</div>
							</li> --%>


						</ul>
					</section>

					<section id="tost" class="sort photo">
						<h4>프렌치토스트</h4>

						<ul>
							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_tost_turkey.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">터키햄 &amp; 치즈 프렌치토스트</p>
										<p class="price"><span>8,000</span>원</p>
									</div>
									<p class="food_txt">칠면조 햄과 치즈가 곁들어진<br>클래식 프렌치토스트</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_tost_gorgon.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">고르곤졸라 프렌치토스트</p>
										<p class="price"><span>8,000</span>원</p>
									</div>
									<p class="food_txt">풍부한 고르곤졸라 치즈와 고소한 견과류가 어우러진<br>프렌치토스트</p>
								</div>
							</li>
						</ul>
					</section>

					<section id="burger" class="sort photo">
						<h4>버거 &amp; Other</h4>

						<ul>
							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_burger_sungsu.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">성수버거</p>
										<p class="price"><span>9,000</span>원</p>
									</div>
									<p class="food_txt">
										시크릿소스, 신선한 야채, 100% 소고기 패티를 넣은 깊고 풍부한 맛의<br>
										정통 수제버거
									</p>

								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_burger_avocado.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">블랙버거 w. 아보카도 &amp; 스윗포테이토</p>
										<p class="price"><span>12,000</span>원</p>
									</div>
									<p class="food_txt">
										신선한 아보카도와 담백한 치킨,<br>
										매콤한 할라피뇨 소스가 환상의 조합으로 어우러진 블랙버거
									</p>

								</div>
							</li>
						</ul>
					</section>



					<section id="specialties" class="sort photo">
						<h4>SPECIALTIES</h4>

						<ul>
							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_special_soup.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">스프</p>
										<p class="price"><span>5,000</span>원</p>
									</div>
									<p class="food_txt">
										양송이 버섯의 풍부한 향이 가득한 크림 스프
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_chickenhamsandwich.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">치킨 &amp; 터키햄 샌드위치</p>
										<p class="price"><span>9,000</span>원</p>
									</div>
									<p class="food_txt">
										로스트 치킨, 터키햄, 스위스치즈 등에 어니언 소스의 달콤함을<br>
										더한 통곡물  브래드 샌드위치
									</p>
								</div>
							</li>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_pasta_Hamburg.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">함박스테이크</p>
										<p class="price"><span>12,000</span>원</p>
									</div>
									<p class="food_txt">
										라이스위에 햄버거 스테이크, 그레이비,<br>
										계란, 호박, 치즈가 어우러진 한끼 메뉴
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_pasta_moringa.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">모링가 리조또</p>
										<p class="price"><span>12,000</span>원</p>
									</div>
									<p class="food_txt">
										피부미용, 다이어트에 효능이 좋은<br>
										모링가와 버섯, 치즈가 어우러진 리조또
									</p>
								</div>
							</li>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_pasta_abocado.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">아보카도 찹스테이크</p>
										<p class="price"><span>13,000</span>원</p>
									</div>
									<p class="food_txt">
										최상의 소고기, 신선한 아보카도, 라이스, 채소가 어우러진<br>
										찹 스테이크
									</p>
								</div>
							</li>

							<%-- <li>
								<img src="/avenueCom/images/sub/mom_brinner_locomoco.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">로코모코</p>
										<p class="price"><span>13,000</span>원</p>
									</div>
									<p class="food_txt">햄버거 스테이크와 그레이비, 튀긴 양파를 곁들인<br>
									하와이언 플레이트
								</p>
								</div>
							</li> --%>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_salad_stake.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">스테이크 샐러드</p>
										<p class="price"><span>16,000</span>원</p>
									</div>
									<p class="food_txt">
										부드럽게 구운 최상급 채끝 등심 스테이크와<br>
										홀그레인 드레싱을 곁들인 샐러드
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_pasta_stake.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">채끝 스테이크</p>
										<p class="price"><span>30,000</span>원</p>
									</div>
									<p class="food_txt">
										바삭한 스윗 포테이토와 달콤한 사워크림을<br>
										곁들인 채끝등심 스테이크
									</p>
								</div>
							</li>
						</ul>
					</section>

					<section id="salad" class="sort photo">
						<h4>샐러드</h4>

						<ul>
							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_housesalad.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">하우스 샐러드</p>
										<p class="price"><span>6,000</span>원</p>
									</div>
									<p class="food_txt"><strong>+ 토핑 각 3,000원 (베이컨 / 아보카도 / 치킨)</strong><br>
									후레쉬한 그린 채소에 고소한 견과류, 방울 토마토, 치즈를 올린 심플리 그린 샐러드
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_salad_caesar.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">블루밍 시저 샐러드</p>
										<p class="price"><span>10,000</span>원</p>
									</div>
									<p class="food_txt">
										신선한 로메인 샐러드 위에  파마산 치즈, 베이컨,<br>
										구운 닭가슴살을 얹은 샐러드
									</p>
								</div>
							</li>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_salad_blueberry.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">블루베리 리코타 치즈 샐러드</p>
										<p class="price"><span>11,000</span>원</p>
									</div>
									<p class="food_txt">
										100% 수제로 만든 홈메이드 리코타 치즈와 곡물빵,<br>
										아보카도와 함께 어우러진 샐러드
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_salad_season.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">연두부 튀김 샐러드</p>
										<p class="price"><span>11,000</span>원</p>
									</div>
									<p class="food_txt">
										부드러운 연두부의 겉을 감산 바삭한 튀김옷,<br>
										채소, 깨드레싱이 어우러진 샐러드

									</p>
								</div>
							</li>
						</ul>
					</section>

					<section id="pasta" class="sort photo">
						<h4>파스타&amp;Others</h4>

						<ul>
							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_pasta_oven.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">치즈 오븐 파스타</p>
										<p class="price"><span>11,000</span>원</p>
									</div>
									<p class="food_txt">
										토마토소스와 페퍼로니, 모짜렐라치즈와 크림치즈가 어우러져<br>
										오븐에 구운 치즈오븐파스타
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_pasta_mush.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">머쉬룸 크림 파스타</p>
										<p class="price"><span>12,000</span>원</p>
									</div>
									<p class="food_txt">
										바싹 구운 베이컨과 각종 버섯이 어우러진<br>
										크림파스타
									</p>
								</div>
							</li>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_shrimpjalapeno.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">쉬림프 할라페뇨</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										새우와 할라페뇨를 곁들여<br>
										가쓰오 육수로 맛을 낸 오일 파스타
									</p>
								</div>
							</li>

							<li>
								<img src="/avenueCom/images/sub/mom_brinner_garlicfettuccine.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">갈릭 크림 쉬림프 페투치니</p>
										<p class="price"><span>16,000</span>원</p>
									</div>
									<p class="food_txt">마늘의 풍미와 고소한 새우가 어우러진 크림 파스타</p>
								</div>
							</li>

							<li class="clear">
								<img src="/avenueCom/images/sub/mom_brinner_pasta_seafood.jpg" alt="">
								<div>
									<div class="name_area">
										<p class="name">씨푸드 파스타</p>
										<p class="price"><span>14,000</span>원</p>
									</div>
									<p class="food_txt">
										새우, 홍합, 쭈꾸미 등 다양한 해산물과<br>
										콩나물이 어우러진 매콤한 토마토 파스타
									</p>
								</div>
							</li>
						</ul>
					</section>
					<strong class="caution">상기 메뉴이미지는 변경될 수 있습니다.</strong>

					<section id="bakery" class="sort text">
						<h4>베이커리</h4>

						<ul>
							<li class="clear">
								<span>제과</span>

								<ul>
									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">호두크랜베리 스콘</p>
												<p class="price"><span>2,500</span>원</p>
											</div>
											<p class="food_txt">
												고소한 호두와 새콤한 크랜베리를 넣어 만든 스콘<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 호두(미국), 크랜베리(미국)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">프릇시에</p>
												<p class="price"><span>2,000</span>원</p>
											</div>
											<p class="food_txt">
												패션후르츠의 상큼함이 느껴지는 휘낭시에 <br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 패션후르츠 리플쨈(프랑스), 우유버터(뉴질랜드)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">리얼초코바나나</p>
												<p class="price"><span>2,800</span>원</p>
											</div>
											<p class="food_txt">
												리얼 바나나와 진한 다크초코의 만남<br>
												<strong class="alert">원산지 : 다크초콜릿(벨기에), 코코아파우더(프랑스), 바나나(필리핀)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">유자머핀</p>
												<p class="price"><span>2,500</span>원</p>
											</div>
											<p class="food_txt">
												달콤한 유자청에 부드러운 크림치즈가 어우러진 맛있는 머핀<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 유자청(국내), 크림치즈(미국)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">찰브라우니</p>
												<p class="price"><span>2,800</span>원</p>
											</div>
											<p class="food_txt">
												찹쌀로 만들어 촉촉함을 더한 브라우니<br>
												<strong class="alert">원산지 : 찹쌀(국내), 아몬드(미국), 다크초콜릿(벨기에)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">비스킷 슈</p>
												<p class="price"><span>800</span>원(1개) / <span>3,500</span>원(5개)</p>
											</div>
											<p class="food_txt">
												부드러운 바닐라크림에 달콤한 비스킷을 입힌 아이스 슈<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 우유버터(뉴질랜드), 우유생크림(국내)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">미니 홍차 쉬폰</p>
												<p class="price"><span>3,000</span>원</p>
											</div>
											<p class="food_txt">
												홍차 향의 고급스러운 풍미와 부드러운 맛을 가진 쉬폰케이크<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 우유버터(뉴질랜드), 홍차(영국)</strong>
											</p>
										</div>
									</li>
								</ul>
							</li>

							<li>
								<span>단과자</span>

								<ul>
									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">허니 시나몬 롤</p>
												<p class="price"><span>2,000</span>원</p>
											</div>
											<p class="food_txt">
												시나몬과 허니의 달콤함이 돌돌 말린 허니 시나몬 롤<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 시나몬가루(베트님), 호두(미국)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">무화과 크림치즈 빵</p>
												<p class="price"><span>2,800</span>원</p>
											</div>
											<p class="food_txt">
												흑맥주에 숙성시킨 무화과와 크림치즈가 가득 담긴 빵 <br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 무화과(터키), 크림치즈(호주)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">블루베리 크림치즈 빵</p>
												<p class="price"><span>2,800</span>원</p>
											</div>
											<p class="food_txt">
												흑맥주에 숙성시킨 무화과와 크림치즈가 가득 담긴 빵 <br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 무화과(터키), 크림치즈(미국)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">통밀 단팥빵</p>
												<p class="price"><span>2,000</span>원</p>
											</div>
											<p class="food_txt">
												유기농 통밀 반죽에 통팥과 호두가 씹히는 건강한 빵<br>
												<strong class="alert">원산지 : 유기농 통밀가루(미국), 호두(미국)</strong>
											</p>
										</div>
									</li>
								</ul>
							</li>

							<li class="clear">
								<span>미니식빵</span>

								<ul>
									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">48시간 브리오슈</p>
												<p class="price"><span>3,500</span>원</p>
											</div>
											<p class="food_txt">
												48시간 숙성한 반죽을 사용하여 깊은 풍미와 부드러운 식감을 가진 뜯어먹는 식빵<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 우유버터(뉴질랜드), 달걀(국내)</strong>
											</p>
										</div>
									</li>
									<li>
										<div>
											<div class="name_area">
												<p class="name">고구마 브리오슈</p>
												<p class="price"><span>4,300</span>원</p>
											</div>
											<p class="food_txt">
												100%우유버터로 반죽한 부드러운 빵에 달콤한 고구마가 돌돌 말린 브리오슈<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 고구마(국내), 우유버터(뉴질랜드)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">더블 초코 식빵</p>
												<p class="price"><span>3,800</span>원</p>
											</div>
											<p class="food_txt">
												프랑스산 발로나 코코아 파우더와 벨기에산 다크초콜릿의 깊은<br>
												맛이 느껴지는 다크초코 미니식빵 <br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 코코아파우더(프랑스), 다크초코칩(벨기에)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">마롱식빵</p>
												<p class="price"><span>4,000</span>원</p>
											</div>
											<p class="food_txt">
												48시간 숙성한 반죽의 깊은 풍미와 국산 밤으로 건강함을 더한 쫄깃한 식빵
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 밤(국내), 아몬드가루(미국)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">유기농 통밀 식빵</p>
												<p class="price"><span>3,500</span>원</p>
											</div>
											<p class="food_txt">
												유기농 통밀가루 50% 반죽에 고소한 호두와 상큼한 크랜베리로 맛을 낸 건강한 식빵
												<strong class="alert">원산지 : 밀가루(미국,캐나다), 유기농 통밀(미국), 호두,크랜베리(미국)</strong>
											</p>
										</div>
									</li>
								</ul>
							</li>

							<li>
								<span>치아바타</span>

								<ul>
									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">올리브 치아바타</p>
												<p class="price"><span>2,500</span>원</p>
											</div>
											<p class="food_txt">
												건강한 블랙 올리브와 그린 올리브가 듬뿍 들어간 치아바타<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 감자(국내), 블랙&amp;그린 올리브(스페인) </strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">콘치즈 치아바타</p>
												<p class="price"><span>2,500</span>원</p>
											</div>
											<p class="food_txt">
												고소한 옥수수와 롤치즈, 체다치즈가 듬뿍 들어간 치아바타<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 체다치즈(국내), 롤치즈(국내) </strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">핫 소시지 치아바타</p>
												<p class="price"><span>3,000</span>원</p>
											</div>
											<p class="food_txt">
												할라피뇨와 양파의 매콤함과 풍미 깊은 스모크 소시지의 만남<br>
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 소시지(국내), 할라피뇨(국내)</strong>
											</p>
										</div>
									</li>
								</ul>
							</li>

							<li class="clear">
								<span>바게트</span>

								<ul>
									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">세피아바게트</p>
												<p class="price"><span>3,800</span>원</p>
											</div>
											<p class="food_txt">
												먹물 바게트 속에 부드럽고 달콤한 크림치즈 연유크림이 듬뿍
												<strong class="alert">원산지 : 밀가루(미국, 캐나다), 오징어 먹물(스페인), 크림치즈(미국)</strong>
											</p>
										</div>
									</li>

									<li>
										<div>
											<div class="name_area">
												<p class="name">치즈 갈릭 바게트</p>
												<p class="price"><span>3,500</span>원</p>
											</div>
											<p class="food_txt">
												고소한 버터와 갈릭소스, 두 가지 치즈를 올려 풍미를 더한 바게트
												<strong class="alert">원산지 : 밀가루(미국,캐나다), 마늘(국내), 체다&amp;모짜렐라 치즈(국내)</strong>
											</p>
										</div>
									</li>

									<li class="clear">
										<div>
											<div class="name_area">
												<p class="name">피자 바게트</p>
												<p class="price"><span>3,800</span>원</p>
											</div>
											<p class="food_txt">
												바삭한 빵 위에 피자토핑과 치즈를 가득 올려 구운 한끼 식사용 바게트
												<strong class="alert">원산지 : 밀가루(미국,캐나다), 피자치즈(국내), 페퍼로니,베이컨(미국)</strong>
											</p>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</section>

					<section id="coffe" class="sort text">
						<h4>커피 &amp; 베버리지</h4>

						<ul>
							<li class="clear">
								<table>
									<caption>커피 가격표</caption>

									<colgroup>
										<col style="width:273px;">
										<col style="width:71px;">
										<col style="width:81px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Coffee</th>
											<th scope="col">HOT</th>
											<th scope="col">ICE</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td><span>에스프레소</span></td>
											<td>4,000원</td>
											<td></td>
										</tr>

										<tr>
											<td><span>아메리카노</span></td>
											<td>4,000원</td>
											<td>4,500원</td>
										</tr>

										<tr>
											<td><span>카페라떼</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>카푸치노</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>바닐라라떼</span></td>
											<td>5,000원</td>
											<td>5,500원</td>
										</tr>

										<tr>
											<td><span>카페모카</span></td>
											<td>5,000원</td>
											<td>5,500원</td>
										</tr>
									</tbody>
								</table>
							</li>

							<li>
								<table>
									<caption>Beverage 가격표</caption>

									<colgroup>
										<col style="width:273px;">
										<col style="width:71px;">
										<col style="width:81px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Beverage</th>
											<th scope="col">HOT</th>
											<th scope="col">ICE</th>
										</tr>
									</thead>

									<tbody>
										<%-- <tr>
											<td><span class="new">NEW</span><span>마차 스무디</span></td>
											<td></td>
											<td>5,500원</td>
										</tr> --%>

										<%-- <tr>
											<td><span class="new">NEW</span><span>망고오렌지 스무디</span></td>
											<td></td>
											<td>5,500원</td>
										</tr> --%>

										<tr>
											<td><span>오렌지 에이드</span></td>
											<td></td>
											<td>4,500원</td>
										</tr>

										<tr>
											<td><span>비트 레몬 에이드</span></td>
											<td></td>
											<td>4,500원</td>
										</tr>

										<tr>
											<td><span>유자몽 에이드</span></td>
											<td></td>
											<td>5,000원</td>
										</tr>

										<%-- <tr>
											<td><span>레드 레몬티 에이드</span></td>
											<td></td>
											<td>5,000원</td>
										</tr> --%>

										<%-- <tr>
											<td><span>청포도 민트티 에이드</span></td>
											<td></td>
											<td>5,000원</td>
										</tr> --%>

										<tr>
											<td><span>레몬&amp;파인애플 에이드</span></td>
											<td></td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>초콜렛</span></td>
											<td>5,500원</td>
											<td>6,000원</td>
										</tr>
									</tbody>
								</table>
							</li>

							<li class="clear">
								<table>
									<caption>Soft Drinks 가격표</caption>

									<colgroup>
										<col style="width:348px;">
										<col style="width:77px;">
									</colgroup>

									<thead>
										<tr>
											<th>Soft Drinks</th>
											<th scope="col">ICE</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td><span>코카콜라</span></td>
											<td>3,000원</td>
										</tr>

										<tr>
											<td><span>스프라이트</span></td>
											<td>3,000원</td>
										</tr>

										<tr>
											<td><span>페리에</span></td>
											<td>3,000원</td>
										</tr>

										<tr>
											<td><span>애플쥬스</span></td>
											<td>4,000원</td>
										</tr>
									</tbody>
								</table>
							</li>

							<li>
								<table>
									<caption>Tea 가격표</caption>

									<colgroup>
										<col style="width:273px;">
										<col style="width:71px;">
										<col style="width:81px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Tea</th>
											<th scope="col">HOT</th>
											<th scope="col">ICE</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td><span>마차라떼</span></td>
											<td>5,500원</td>
											<td></td>
										</tr>

										<%-- <tr>
											<td><span class="new">NEW</span><span>밀크티</span></td>
											<td></td>
											<td>5,500원</td>
										</tr> --%>

										<tr>
											<td><span>유자몽 티</span></td>
											<td>5,000원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>로얄얼그레이</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>카모마일 메도우</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>바바리안 민트</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
										</tr>

										<tr>
											<td><span>아쌈머랭</span></td>
											<td>4,500원</td>
											<td>5,000원</td>
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
