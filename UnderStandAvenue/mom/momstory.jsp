<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="momstory";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="Mom story";
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

		<div class="momstory">
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
						<a href="/mom/about.jsp"><strong>Mom story</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">Mom story</h2>

						<p class="con_tit_txt">맘스탠드와 함께 성장해 온 다문화 어머님들의 국가 전통 음식을 소개합니다.</p>
					</div>

					<section class="vietnam">
						<img src="/avenueCom/images/sub/img_momstory1_" alt="">
						<h3 class="name">수아 / 베트남</h3>
						<p class="txt">
							9년 전 베트남에서 처음 한국에 왔을 때 언어 때문에 많이 힘들었어요.  한글을 배우러 다문화센터에 갔다가 언더스탠드에비뉴 맘스탠드를 알게 되었죠.
							맘스탠드는 저의 첫 직장이에요.  ‘한국에 와서 나도 일을 시작할 수 있구나’ 라고 생각하니 무척 감격스러 웠습니다.
							그동안 재료 손질부터 요리까지 체계적으로 배워서 요리에 대한 자신감도 생겼구요.
							다양한 나라의 친구들과 함께 일하는 것도 즐겁습니다.
							앞으로도 많이 배우면서 성장하고 싶어요!
						</p>
						<dl class="food">
							<dt>비빔국수</dt>
							<dd>
								라이스누들, 구운 돼지고기, 후레쉬한 채소와 라임, 당근을 넣어 마리네이드한 휘시소스에 비벼먹는 베트남식 비빔라이스누들
							</dd>
						</dl>
					</section>

					<section class="philippine">
						<h3 class="name">박마벨 / 필리핀</h3>
						<p class="txt">
							한국에 온지 10년 되었어요.
							7살 막내딸이 유치원에 가기 전까지 육아로  정신없이 보내다가 다문화 센터에서 추천을 받아 언더스탠드 에비뉴 맘스탠드를 알게 되었습니다.
							맘스탠드에서 1년여간 일을 했는데 가족들,  특히 막내딸이 응원을 많이 해주어 힘이 납니다.
							앞으로도 열심히 교육받고 일해서 아이들에게 멋진 엄마가 될 수 있도록 노력할거에요!
						</p>
						<dl>
							<dt>아도보</dt>
							<dd>
								통삼겹살, 필리핀 바나나와 바나나 꽃을 넣어 간장과 흑설탕,  이트와인비네거를 베이스로 조린 필리핀의 전통음식이며 가장 대중적인 스튜요리
							</dd>
						</dl>
					</section>

					<section class="china">
						<h3 class="name">에취리 / 중국</h3>
						<p class="txt">
							10년 전 한국에 와서 정착하면서 다양한 아르바이트 를 했어요 그런데 한국말에 서툴다 보니 일하기가 힘들었죠.
							다문화 지역센터에서 커피 바리스타 양성 교육을 추천해서 언더스탠드에비뉴 맘스탠드에 지원하게 되었어요.
							맘스탠드에서 일을 시작할 때는 기뻤지만 한편으로 불안한 마음이 들었죠.
							하지만 다들 가족처럼 잘 챙겨주시고 설명해 주셔서 편안해졌어요
							지금은 손님들이 내가 직접 만든 음료를 맛있게 먹는다고 생각하니 보람되고 한국 생활에도 더욱 자신감이 생겼습니다.
							앞으로도 즐거운 마음으로 열심히 배울게요!
						</p>
						<dl class="food">
							<dt>마파두부</dt>
							<dd>
								두부, 돼지고기에 사천두반장과 대파, 생강, 마늘 등의 향신채소 그리고 chinese pepper(산초)를 넣어 향을 낸 매콤한 사천식 요리
							</dd>
						</dl>
					</section>

					<%-- <section class="hongkong">
						<h3 class="name">어드너 / 몽골</h3>
						<p class="txt">
							7년 전 한국에 온 후 두 아이를 키우며 전업주부로 지냈습니다.
							아이들이 어느정도 성장하니 엄마로써 말고 나 자신과 꿈을 위해 살고싶다는 생각이 들었어요.
							그러던 중 우연히 언더스탠드에비뉴 맘스탠드를 알게되어 일하게 되었죠.
							저는 주방에서 요리를 하고 있는데  요리를 할 때 불이 확 오르는 것을 보면  힘이 불끈 납니다.
							그 불로 만든 요리를 고객들이 남김없이 드시는 걸 보면 정말 보람을 느끼죠.
							앞으로도 다양한 요리를 만들며 제 꿈을 위해 도전할거요!
						</p>
						<dl class="food">
							<dt>튬스휴말</dt>
							<dd>
								비프와 포크 햄버거스테이크 위에 으깬 감자를 덮은 따듯한 고기요리와 라이스, 샐러드를 곁들인 몽골의 현대적인 가정식 요리
							</dd>
						</dl>
					</section> --%>
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
