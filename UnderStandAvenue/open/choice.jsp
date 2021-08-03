<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="choice";
	String path4="";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="ABOUT";
	String path4tit="소개";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="open">

		<div class="choice">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_open.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/open/about.jsp">OPEN STAND</a>
						<a href="/open/choice.jsp"><strong>선정팀 소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">선정팀 소개</h2>
					<p class="con_tit_txt">도전, 실험, 혁신의 꿈을 응원합니다.</p>

					<!-- -->
					<p class="txt1">오픈스탠드는 사회적기업·청년벤처·예술가들의 반짝이는<br />아이디어를 소개하는 공간입니다.</p>

					<p class="txt2">1기 오픈스탠드는 총 60여 개의 최초 지원팀 가운데 서류와 면접 심사를 거쳐 최종 7개 팀이 선정되었습니다.<br />
						이제 UNDER STAND AVENUE 의 오픈스탠드 공간에서 이들의 참신한 제품을 만나보세요.</p>

					<section>
						<h3>DOTWEEN</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_dotween.jpg" alt="" />
							<p class="hide">소중한 사람에게 전하고 싶은 메시지를 점자에 담아 선물하는 브랜드. 사회적으로 올바르게 형성 되어야 할 인식을 디자인에 입히고 그 안에 사람들의 진심 어린 이야기를 담은 제품을 전시 및 판매한다.</p>
						</div>
						<address>도트윈 : <a href="mailto:contact@dotween.co.kr">contact@dotween.co.kr </a></address>
					</section>

					<section>
						<h3>FIRE MARKERS</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_firemarkers.jpg" alt="" />
							<p class="hide">‘소방의 흔적’이라는 뜻을 담고 있는 소방 패션 브랜드. 소방에서 나오는 다양한 소재와 주제들을 활용, 희생의 가치를 담은 제품을 제작하며 제품 판매수익의 일부를 소방 복지를 응원하는데 사용한다.</p>
						</div>
						<address>파이어마커스 : <a href="mailto:lk182@hanmail.net">lk182@hanmail.net</a></address>
					</section>

					<section>
						<h3>MARBLUS</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_marblus.jpg" alt="" />
							<p class="hide">혁신형 어린이 교육 콘텐츠를 개발, 유통하는 브랜드. 북유럽식 어린이 케어 공간인 ‘헤이스콜라(HEJ SKOLA)’의 교육 트렌드를 보여주는 전시 공간과 콘텐츠를 시연하는 체험 공간을 운영한다.</p>
						</div>
						<address>마블러스 : <a href="mailto:yoonmioi@naver.com">yoonmioi@naver.com</a></address>
					</section>

					<section>
						<h3>PROUST</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_proust.jpg" alt="" />
							<p class="hide">자신만의 특별한 추억이 있는 향을 통해 나만의 향수를 만드는 DIY 향수 브랜드. 이미지, 문구, 향 등을 직접 선택하여 만듦으로써 향에 대한 추억을 찾아가는 과정의 프로그램을 운영한다.</p>
						</div>
						<address>프루스트 : <a href="mailto:">hymet@hanmail.net</a></address>
					</section>

					<section>
						<h3>DINH</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_dinh.jpg" alt="" />
							<p class="hide">안식과 평안의 의미를 가지고 ‘테라피 디자인’이라는 새로운 분야를 연구하는 브랜드. 소비자가 디자인 교육에 직접 참여하여 오직 ‘나만을 위한’ 디자인을 제작할 수 있다.</p>
						</div>
						<address>딘 : <a href="mailto:envy921@naver.com">envy921@naver.com</a></address>
					</section>

					<section>
						<h3>GREEN HOUR</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_greenhour.jpg" alt="" />
							<p class="hide">안식과 평안의 의미를 가지고 ‘테라피 디자인’이라는 새로운 분야를 연구하는 브랜드. 소비자가 디자인 교육에 직접 참여하여 오직 ‘나만을 위한’ 디자인을 제작할 수 있다.</p>
						</div>
						<address>그린아워 : <a href="mailto:greenhour.jay@gmail.com">greenhour.jay@gmail.com</a></address>
					</section>

					<section>
						<h3>COCKAMAMIE</h3>
						<div>
							<img src="/avenueCom/images/sub/open_choice_cockamamie.jpg" alt="" />
							<p class="hide">실크스크린 프린팅을 기반으로 활동하는 디자인 스튜디오. 참가자들이 각자 자신이 사랑하는 것, 스스로를 행복하게 해주는 것들을 주제로 즉석에서 실크스크린 프린트 체험을 할 수 있다.</p>
						</div>
						<address>카커메이미 : <a href="mailto:mj@cockamamie.kr">mj@cockamamie.kr</a></address>
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
