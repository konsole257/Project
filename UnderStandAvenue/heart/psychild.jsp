<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="psy";
	String path4="child";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="심리검사";
	String path4tit="아동 심리검사";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="heart">

		<div class="psy child">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_heart.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/heart/about.jsp">HEART STAND</a>
						<a href="/heart/psychild.jsp">심리검사</a>
						<a href="/heart/psychild.jsp"><strong>아동 심리검사</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">아동 심리검사</h2>
					<p class="con_tit_txt">건강하고 행복한 우리 아이를 위해 부모가 측정하는 심리 테스트입니다.</p>

					<div class="test_menu">
						<p class="txt1">
						아동 심리 검사는 아동의 전체적, 인격적, 행동적 측면을 이해하기 위한 심리학적 측정 과정으로,<br />
						아동에 대한 객관적인 정보를 얻을 수 있으며 부모의 양육 방식을 함께 점검할 수 있습니다.
						</p>

						<p class="txt2">하트스탠드 심리검사는 정보가 남지 않아 안심하고 할 수 있는 테스트 입니다.</p>

						<section class="emotion">
							<h3>아동 정서행동 테스트</h3>
							<div>
								<p>
								아동에게도 우울과 불안, 공격하고 싶은 마음이 있을 수 있습니다.<br />
								이 테스트는 자녀의 정서조절문제와 불안/우울, 위축, 공격성을<br />
								측정합니다. 이유 없이 짜증을 부리고 엄마와 떨어지기 싫어하고<br />
								친구를 때리기도 하는 등의 부적응 행동이 있는지,<br />
								있다면 그 심각성의 정도가 어떤지 알아봅니다.
								</p>
								<a href="/heart/psychild_emotion.jsp" class="btn_test">테스트하기</a>
							</div>
						</section>

						<section class="ADHD">
							<h3>ADHD 테스트</h3>
							<div>
								<p>
								주의력결핍 과잉행동장애(ADHD: Attention deficit hyperactivity<br />
								disorder)는 아이가 산만하거나 집중하지 못하는 등 과잉 행동과<br />
								충동성이 수반되는 행동 문제로 아동기에 가장 빈번하게 발생하는<br />
								문제입니다. 이 테스트는 아이의 산만함의 정도가 문제 범주에<br />
								속하는지 알아볼 수 있습니다.
								</p>
								<a href="/heart/psychild_ADHD.jsp" class="btn_test">테스트하기</a>
							</div>
						</section>

						<section class="attitude">
							<h3>양육 태도 테스트</h3>
							<div>
								<p>
								이 테스트는 자녀에 대한 부모의 양육 태도가 어떤지 알아보는<br />
								검사입니다. 부모의 거부적 양육태도나 엄격, 기대, 간섭, 불안,<br />
								맹종, 부부간의 모순, 불일치적인 양육태도 등 양육 태도의 유형을<br />
								알아보고, 양육 방법을 점검할 수 있습니다.
								</p>
								<a href="/heart/psychild_attitude.jsp" class="btn_test">테스트하기</a>
							</div>
						</section>

						<section class="stress">
							<h3>양육 스트레스 테스트</h3>
							<div>
								<p>
								지금 당신의 아이 때문에 스트레스 받고 있습니까? 주 양육자인<br />
								부모, 특히 엄마가 행복해야 아이도 행복합니다. 이 테스트는 양육<br />
								스트레스를 측정하여 편안한 육아, 건강한 부모, 행복한<br />
								부모-자녀간의 관계를 유지할 수 있게 도와줍니다.
								</p>
								<a href="/heart/psychild_stress.jsp" class="btn_test">테스트하기</a>
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
