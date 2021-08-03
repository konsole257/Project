<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="with";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="함께하는 사람들";
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

		<div class="with">
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
						<a href="/mom/with.jsp"><strong>함께하는 사람들</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">함께하는 사람들</h2>
					<p class="con_tit_txt">맘스탠드와 함께하는 사람들을 소개합니다.</p>

					<!-- -->
          <q class="txt1"><span>유명 쉐프가 전하는<br />
          <em>나의 소중한 순간을 함께한 메뉴</em>를 소개합니다.<br />
          100일간만 제공하는 특별한 레시피!</span></q>

          <section class="right_name">
            <div class="name">
              <h3>강레오</h3>
              <p>프랑스 요리의 대가 피에르 코프만의<br />
              유일한 한국 제자 </p>
              <p>장 조지, 고든 램지 등 권위있는<br />
              셰프와 수학한 정통파 요리사</p>
            </div>

            <div class="txt_area">
              <h4>라따뚜이와 연어</h4>

              <p class="txt">
                라따뚜이는 만드는 방법도 간단하고 영양가도<br />
                높아 집에서 가족들에게 자주 해주는 요리입니다.<br />
                흔히 야채를 볶아 스튜로 만드는 프랑스 전통<br />
                요리로 알고 있지만 인근에 위치한 이탈리아에서는<br />
                카포나타, 스페인에서는 피스토라는 이름으로<br />
                불리기도 하죠.
              </p>

              <p class="txt">
                지중해를 둘러싼 국가들이 공통적으로 즐기면서도<br />
                서로 다른 이름을 가지고 있는 요리이죠.<br />
                맘스탠드의 다문화 여성이 만드는 다양한<br />
                요리와도 잘 어울리는 메뉴라는 생각이 듭니다.
              </p>
            </div>

            <img src="/avenueCom/images/sub/mom_with_img_01.jpg" alt="" class="img" />
          </section>

          <section class="left_name">
            <div class="name">
              <h3>이연복 </h3>
              <p>주한 타이완 대사관 최연소 총주방장</p>
              <p>화려한 경력과 내공을 갖춘<br />중화 요리계의 전설</p>
            </div>

            <div class="txt_area">
              <h4>분정갈비</h4>

              <p class="txt">
                분정갈비는 아는 사람만 먹는다는 '레어템'<br />
                요리입니다.  찹살을 묻힌 돼지 갈비찜인데요. 젊은<br />
                시절 대만 대사관에서 일하던 당시 당시 한국에는<br />
                없는 레시피를 개발해야 했는데 쉬운 레시피지만<br />
                한국인의 입맛에도 잘 맞고 정통 중국요리의
              </p>

              <p class="txt">
                격식에도 어울리는 요리로 개발에 성공했죠.<br />
                이 요리의 개발로 제가 이 자리에 있다고해도 과언이<br />
                닐만큼 저에게 중요한 의미가 있고 요리를 업으로<br />
                고 살아갈 수 있도록 힘이 되는 요리 입니다. <br />
                맘스탠드에 방문하시는 분들도 분정갈비를 먹고<br />
                제가 느끼는 힘을 느끼실 수 있었으면 좋겠네요.
              </p>
            </div>

            <img src="/avenueCom/images/sub/mom_with_img_02.jpg" alt="" class="img" />
          </section>

          <section class="right_name">
            <div class="name">
              <h3>레이먼킴</h3>
              <p>캐나다 레드우드그릴 헤드셰프,<br />
              시리얼 고메 총주방장 출신</p>
              <p>現 테이블 온더 문 총주방장</p>
            </div>

            <div class="txt_area">
              <h4>새우 타퀴토, 칠리콘카르네</h4>

              <p class="txt">
                새우 타퀴토와 칠리콘카르네를 소개합니다.<br />
                타퀴토는 타코를 돌돌 말아 튀긴 음식이고, 칠리콘카르<br />
                네는 간 소고기에 콩과 칠리를 넣어 끓인 요리인데요.<br />
                시코 로스카보스 신혼여행 중 아내와 함께 먹었던<br />
                뉴로 동네 어귀의 작은 레스토랑 이었지만
              </p>

              <p class="txt">
                멕시코 현지의 맛을 느낄 수 있어서 매우 맛있었던<br />
                기억이 납니다.<br />
                이 요리를 드시는 분, 멕시코 음식을 좋아하시는<br />
                분들에게도 저와 같은 맛있는 기억을 선물해드리고<br />
                싶네요.
              </p>
            </div>

            <img src="/avenueCom/images/sub/mom_with_img_03.jpg" alt="" class="img" />
          </section>

          <section class="left_name">
            <div class="name">
              <h3>정신우</h3>
              <p>한식, 일식, 양식을 아우르는<br />감각적인 푸드 스타일리스트</p>
            </div>

            <div class="txt_area">
              <h4>스페니쉬미트볼</h4>

              <p class="txt">
                네덜란드 홈스테이 시절 '딘' 이라는 요리사가<br />
                저에게 처음 만들어준 음식이 미트볼이었습니다.<br />
                딘은 한국인 입양아였는데, 어린 시절 어머니가<br />
                '딘'을 배려하여 한국의 음식인 동그랑땡을 많이<br />
                만들어 주었다고 해요.
              </p>

              <p class="txt">
                그 뒤로 딘에게는 동그랑땡과 닮은 미트볼이 향수의<br />
                음식이 되었다고 하는데요.<br />
                저에게도 미트볼은 딘이 생각나는 음식이 되었네요 :)<br />
                한국을 그리워하는 친구를 생각하면서 만든<br />
                '스페니쉬 미트볼' 요리를 여러분과 함께 나누고<br />
                싶습니다.
              </p>
            </div>

            <img src="/avenueCom/images/sub/mom_with_img_04.jpg" alt="" class="img" />
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
