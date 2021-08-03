<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="social";
	String path3="partner";
	String path4="";
	String path1tit="STAND";
	String path2tit="SOCIAL STAND";
	String path3tit="청년 파트너 소개";
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
	<main id="wrap" class="social">
		<div class="partner">

      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_social.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/social/about.jsp">SOCIAL STAND</a>
						<a href="/social/partner.jsp"><strong>청년 파트너 소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">청년 파트너 소개</h2>
		  		  <p class="con_tit_txt">소셜스탠드와 함께하는 청년 파트너를 소개합니다.</p>

		  		  <!-- -->
		  		  <div data-ui="tab">
		  			  <section class="in on">
		  				  <h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#tab1" target="_self">IN</a></h3>

		  				  <div id="tab1" data-ui="tab_content">
		  					  <p class="txt">현재 소셜스탠드와 함께하는 청년 파트너입니다.</p>

							  <section class="valuc">
		  						  <h4>가치공간<span class="new">NEW</span></h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_valuc.jpg" alt="">
		  							  <p class="hide">
		  								  가치공간 ‘V프로젝트’는 가치있는 사람, 가치있는 소비,
										  가치있는 나눔을 모토로 탄생 되었습니다.
										  가치공간이 여러분께 이유 있는 소비와 의식 있는 즐거움을 선사합니다.
										  가치공간 수익금의 일부는 유니세프한국위원회에 기부됩니다.
		  							  </p>
		  							  <address class="link_area">
		  								  <a href="https://www.instagram.com/value.venue/" target="_blank" class="instagram">인스타그램</a>
		  								  <a href="mailto:valuevenue1@gmail.com" target="_blank" class="mail">메일</a>
		  							  </address>
		  						  </div>
		  					  </section>

		  					  <section>
		  						  <h4>AROUND<span class="new">NEW</span></h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_around.jpg" alt="">
		  							  <p class="hide">
		  								  AROUND는 새로운 트렌드를 선도하는 역량있는 작가들의
		  								  생활 공예 제품을 친숙하고 합리적인 가격에 만날 수 있는
		  								  리빙 컬렉션 브랜드입니다.
		  									 도자, 섬유 등 작가들의 유니크한 감성을 통해
		  								  생활 속 예술을 경험하시길 바랍니다.
		  							  </p>
		  							  <address class="link_area">
		  								  <a href="https://www.instagram.com/around_7_official/" target="_blank" class="instagram">인스타그램</a>
		  								  <a href="mailto:soil73@naver.com" target="_blank" class="mail">메일</a>
		  							  </address>
		  						  </div>
		  					  </section>

		  					  <%-- <section class="dosirak">
		  						  <h4>dosirak.go by jkim<span class="new">NEW</span></h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_dosirak.jpg" alt="">
		  							  <p class="hide">
		  								  ‘dosirak.go by jkim'은 신개념 프리미엄 수제도시락으로
		  								  푸드스타일링 업계 최고의 푸드스타일리스트이자
		  								  요리연구가인 ‘제이킴(jkim)' 대표가 메뉴컨설팅에 참여했습니다.
		  								  엄선된 식재료들을 사용하여 전문 요리연구가들이 요리하고
		  								  전문 푸드스타일리스트들이 디자인하여
		  								  눈과 입이 함께 즐거운 프리미엄 도시락입니다.
		  							  </p>
		  							  <address class="link_area">
		  								  <a href="http://www.dosirakgo.com" target="_blank" class="homepage">홈페이지</a>
		  								  <a href="http://www.instagram.com/jkim_love" target="_blank" class="instagram">인스타그램</a>
		  								  <a href="mailto:jkimfoodstyle@naver.com" target="_blank" class="mail">메일</a>
		  							  </address>
		  						  </div>
		  					  </section> --%>

		  					  <section class="intake">
		  						  <h4>인테이크<span class="new">NEW</span></h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_intake.jpg" alt="">
		  							  <p class="hide">
		  								  인테이크는 '섭취(intake)하는 것과
		  								  먹는(eat)것은 다르다'는 철학을 가지고 있습니다.
		  								  미각의 만족 뿐 아니라 변해가는 섭취자 라이프스타일에 맞는
		  								  영양균형과 간편함, 건강을 설계합니다.
		  								  인테이크는 단순히 먹는 것을 넘어 식문화를 선도하는 식품기업입니다.
		  							  </p>
		  							  <address class="link_area">
		  								  <a href="http://www.shopintake.com" target="_blank" class="homepage">홈페이지</a>
		  								  <a href="https://www.facebook.com/shopintake" target="_blank" class="facebook">페이스북</a>
		  								  <a href="http://www.instagram.com/intakefoods" target="_blank" class="instagram">인스타그램</a>
		  								  <a href="mailto:cs@intakefoods.kr" target="_blank" class="mail">메일</a>
		  							  </address>
		  						  </div>
		  					  </section>

		  					  <section>
		  						  <h4>LOFT GARDEN<span class="new">NEW</span></h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_loftgarden.jpg" alt="">
		  							  <p class="hide">
		  								  LOFT + GARDEN = NATURE UNIQUE DESIGN
		  								  로프트가든은 일상생활의 의식주 기본 아이템을 중심으로 실용적이며 가치있는 컨텐츠를 제공하고자 합니다. 독창적이고 실용적인 디자인으로 '로프트가든' 만의 유니크한 라이프스타일을 제안해드립니다.
		  							  </p>
		  							  <address class="link_area">
		  								  <a href="http://www.loftgarden.co.kr" target="_blank" class="homepage">홈페이지</a>
		  								  <a href="https://www.facebook.com/loftgd" target="_blank" class="facebook">페이스북</a>
		  								  <a href="mailto:free0102@hanmail.net" target="_blank" class="mail">메일</a>
		  							  </address>
		  						  </div>
		  					  </section>

		  					  <section>
		  						  <h4>A - POCO FANFARE</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_apocofanfare.jpg" alt="">
		  							  <p class="hide">아포코팡파레는 점점 나아간다는 의미의 음악용어 아포코와 축하라는
		    의미의 팡파레가 합쳐져서 한걸음 한걸음 나아간다는 의미를
		    가지고 독특하면서 POP한 라이프 스타일을 디자인하는
		    핸드메이드 크래프트 스튜디오입니다.
		    </p>
		  						  </div>
		  						  <address class="link_area">
		  							  <a href="http://apocofanfare.com/" target="_blank" class="homepage">홈페이지</a>
		  							  <a href="http://www.instagram.com/apocofanfare_sub" target="_blank" class="instagram">인스타그램</a>
		  							  <a href="mailto:apocofanfare@gmail.com" target="_blank" class="mail">메일</a>
		  						  </address>
		  					  </section>

		  					  <section class="ww">
		  						  <h4>더블더블유</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_ww.jpg" alt="">
		  							  <p class="hide">더블더블유는 '함께하면 더 좋은 것'이라는 의미를 지렛대 삼아
		    탄생된 'Personalized Shoe Brand'입니다.
		    내가 신고 싶은 구두, 매일 신고 다니고 싶은 착화감을 제품의 중요한
		    요소로 두고, 여러 사람들과 소통하며 제작하는 구두 브랜드입니다.
		    </p>
		  						  </div>
		  						  <address class="link_area">
		  							  <a href="http://www.doubledoubleyou.shoes" target="_blank" class="homepage">홈페이지</a>
		  							  <a href="https://www.facebook.com/vvv.shoes" target="_blank" class="facebook">페이스북</a>
		  							  <a href="http://www.instagram.com/doubledouble.you" target="_blank" class="instagram">인스타그램</a>
		  							  <a href="http://blog.naver.com/vvv_shoes" target="_blank" class="blog">블로그</a>
		  							  <a href="mailto:mail@doubledoubleyou.shoes" target="_blank" class="mail">메일</a>
		  						  </address>
		  					  </section>

		  					  <section>
		  						  <h4>N1 2LL</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_n12ll.jpg" alt="">
		  							  <p class="hide">엔원 투엘엘은 머신 니팅과 핸드 위빙으로 제작된 제품과 수업을 통해 수작업의 즐거움과 아름다움을 널리 알리는 것을 목표로 하고 있습니다. 수작업의 장점을 배가할 수 있는 실험적인 시도와 흥미로운 디자인의 제품을 통해 수작업의 낡고 뒤떨어진 이미지를 탈피하고 한계를 넓히려 합니다.</p>
		  						  </div>
		  						  <address class="link_area">
		  							  <a href="https://n12ll.com/" target="_blank" class="homepage">홈페이지</a>
		  							  <a href="https://www.instagram.com/n1_2ll/" target="_blank" class="instagram">인스타그램</a>
		  							  <a href="http://blog.naver.com/n12ll" target="_blank" class="blog">블로그</a>
		  							  <a href="mailto:n12ll@naver.com" target="_blank" class="mail">메일</a>
		  						  </address>
		  					  </section>

		  					  <section>
		  						  <h4>O,43</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_oh43.jpg" alt="">
		  							  <p class="hide">오사삼은 기부 (donation), 재활용(upcycle), 프리저브드(preserved), 핸드메이드(handmade)의 4가지 철학을 바탕으로 악세사리(accessory), 가드닝(gardening), 디퓨저(diffuser) 3가지 상품을 만드는 브랜드입니다.
		    하루 중 많은 시간을 보내는 책상 위에 나만의 작은 정원을 만들어 드립니다.</p>
		  						  </div>
		  						  <address class="link_area">
		  							  <a href="http://www.oh43.com" target="_blank" class="homepage">홈페이지</a>
		  							  <a href="https://www.instagram.com/project_oh43/" target="_blank" class="instagram">인스타그램</a>
		  							  <a href="mailto:oh_43@naver.com" target="_blank" class="mail">메일</a>
		  						  </address>
		  					  </section>
		  				  </div>
		  			  </section>

		  			  <section class="out">
		  				  <h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#tab2" target="_self">OUT</a></h3>

		  				  <div id="tab2" data-ui="tab_content">
		  					  <p class="txt">더 넓은 세상으로 나아갈 청년 파트너를 응원합니다.</p>

		  					  <section>
		  						  <h4>AMONG : yummim</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_among.jpg" alt="">
		  							  <p class="hide">‘에이몽’의 두번째 프로젝트 ‘여밈’은 한복의 ‘동정과 깃’을 재해석하여 제작된 패턴의 한복스카프를 시작으로 현대인의 일상에 한복의 고급스러움과 단아한 감성을 부여하였습니다. 부드러운 실크의 촉감과 자개의 아름다움까지 갖춘 맞춤형 선물입니다.</p>
		  						  </div>
		  					  </section>

		  					  <section>
		  						  <h4>뜰애</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_ddlae.jpg" alt="">
		  							  <p class="hide">뜰애는 디자인을 전공한 플로리스트가 꽃과 화분류를 선보이는 플라워샵의 제한된 아이템에 지루함을 느껴 일상 생활속에서 사용되는다양한 제품을 꽃과 관련된 컨셉으로 개발함으로써 꽃을 접하는 새로운 방법을 제시하고자 하는 라이프스타일 브랜드입니다.</p>
		  						  </div>
		  					  </section>

		  					  <section>
		  						  <h4>Design Studio Lim Sungmook</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_limsungmook.jpg" alt="">
		  							  <p class="hide">‘디자인스튜디오 임성묵’ 은 ‘더 나은 세상을 만들기 위한 생각, 더 나은 세상을 만드는 사람들을 위한 디자인’ 을 지향합니다. 특히 ‘MODIBAG’ 은 보자기를 모티브로 조립식 블록처럼 사용자가 가방의 크기, 형태, 방식을 모두 자유롭게 구성하여 사용할 수 있습니다. </p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>DOTWEEN</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_dotween.jpg" alt="">
		  							  <p class="hide">소중한 사람에게 전하고 싶은 메시지를 점자에 담아 선물하는 브랜드. 사회적으로 올바르게 형성되어야할 인식을 디자인에 입히고 그 안에 사람들의 진심어린 이야기를 담은 제품을 전시 및 판매합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>FIRE MARKERS</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_firemarkers.jpg" alt="">
		  							  <p class="hide">‘소방의 흔적’이라는 뜻을 담고 있는 소방 패션 브랜드. 소방에서 나오는 다양한 소재와 주제들을 활용, 희생의 가치를 담은 제품을 제작하며 제품 판매수익의 일부를 소방 복지를 응원하는데 사용합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>MARBLUS</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_marblus.jpg" alt="">
		  							  <p class="hide">혁신형 어린이 교육 콘텐츠를 개발, 유통하는 브랜드. 북유럽식 어린이 케어 공간인 ‘헤이스콜라(HEJ SKOLA)’의 교육 트렌드를 보여주는 전시 공간과 콘텐츠를 시연하는 체험 공간을 운영합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>PROUST</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_proust.jpg" alt="">
		  							  <p class="hide">자신만의 특별한 추억이 있는 향을 통해 나만의 향수를 만드는 DIY 향수 브랜드.이미지, 문구, 향 등을 직접 선택하여 만듦으로써 향에 대한 추억을 찾아가는 과정의 프로그램을 운영합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>DINH</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_dinh.jpg" alt="">
		  							  <p class="hide">안식과 평안의 의미를 가지고 ‘테라피 디자인’이라는 새로운 분야를 연구하는 브랜드. 소비자가 디자인 교육에 직접 참여하여 오직 ‘나만을 위한’ 디자인을 제작할 수 있습니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>GREEN HOUR</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_greenhour.jpg" alt="">
		  							  <p class="hide">바쁜 도시인들의 건강한 생활습관을 위해 선진국형 운동 프로그램을 소개하고 운영하는 브랜드. 남녀노소 누구나 쉽게 참여할 수 있는 프로그램을 통해개인 및 사회의 건강까지 생각합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>COCKAMAMIE</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_cockamamie.jpg" alt="">
		  							  <p class="hide">실크스크린을 기반으로 다양한 작업을 하는 브랜드. not perfect but original 슬로건 아래 다른 것을 틀리다고 하지 않는 모든 무브를 응원하는 마음으로 제품을 제작하고 의류와 패션소품 등을 판매합니다.</p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>그림타이</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_grimmtie.jpg" alt="">
		  							  <p class="hide">그림타이는 각 가정의 아이들과 저소득층 아이들의 희망찬 꿈이 담긴 그림을 커스터마이징하여 세상에서 단 하나뿐인 넥타이, 가방, 스카프 등 패션상품을 제작하고 판매하는 브랜드 입니다. </p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>VIGHT</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_vight.jpg" alt="">
		  							  <p class="hide">라잇루트는 패션을 통해 올바른 가치를 전달하는 의류 브랜드 입니다. 소비자들이 공감할 수 있는 스토리 또는 사회적 이슈 메시지를 제품에 담아 표현하며, 제작과정에 참여한 디자이너에게 취업에 필요한 환경을 제공해 주고 있습니다. </p>
		  						  </div>
		  					  </section>

							  <section>
		  						  <h4>CONTINEW</h4>
		  						  <div>
		  							  <img src="/avenueCom/images/sub/open_choice_out_continew.jpg" alt="">
		  							  <p class="hide">‘CONTINEW’ 는 ‘업사이클링(Up-cycling) 패션 브랜드’ 로써 폐자동차에서 수거되는 천연가죽을 재사용하여 가방 및 액세서리 제품을 제작합니다. 환경과 디자인을 동시에 생각하며 자원의 선순환을 돕는 브랜드를 추구합니다. </p>
		  						  </div>
		  					  </section>
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
