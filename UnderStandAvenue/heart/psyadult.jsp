<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="psy";
	String path4="adult";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="심리검사";
	String path4tit="성인 심리검사";
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

		<div class="psy adult">
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
						<a href="/heart/psyadult.jsp"><strong>성인 심리검사</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">성인 심리검사</h2>
					<p class="con_tit_txt">성인들의 종합적인 심리 상태를 점검하고 연인 간의 서로 다른 욕구를 측정할 수 있습니다.</p>

					<div class="test_menu">
						<p class="txt1">
						성인 심리검사는 개인의 행동이나 성격을 이해하고 자신을 돌아보는 기회를 제공하며 이를 바탕으로 문제해결에<br />
						도움을 주고자 하는 목적을 가지고 있습니다. 본 심리 검사는 개인을 역동적으로 이해하기 위한 심리학적 측정<br />
						과정이므로 자신에 대한 객관적인 정보를 얻을 수 있고, 현재의 심리 상태를 확인할 수 있습니다. 깊게 고민하며 검사에<br />
						응하기보다는 편안한 마음으로 테스트에 임해주시기 바랍니다.
						</p>

						<p class="txt2">하트스탠드 심리검사는 정보가 남지 않아 안심하고 할 수 있는 테스트 입니다.</p>

						<section class="adult">
							<h3>성인 심리 테스트</h3>
							<div>
								<p>
								이 테스트는 종합 심리검사로서 우울/대인관계/스트레스/감정조절까지 4가지의 심리검사를<br />
								진행한 후에 총 결과를 확인할 수 있습니다.
								</p>

								<ul>
									<li>
										‘마음의 감기’라 불리는 우울증 정도를 알아볼 수 있는 테스트입니다. 우울증은 의욕 저하, 깊은 근심, 수면 문제, 기분 부전, 권태-무기력, 집중력 부족, 일상생활에서의 능력 저하, 자살 충동 등의 증상을 가져옵니다. 이 테스트를 통해 나의 정서 상태가 어떤지 종합적으로 알아볼 수 있습니다.
									</li>

									<li>
									대인관계에서의 주도성과 사회적 관심, 대인관계에서 개방적인지 여부, 관계에 대한 지각과 가족에 대한 지각<br />까지 대인관계나 가족관계에서의 나의 욕구는 어떠한지 알아볼 수 있는 테스트입니다.
									</li>

									<li>
										나의 스트레스 정도는 어느 수준인지, 스트레스 해소를 위해 필요한 요인은 무엇인지를 알아볼 수 있습니다.<br />금주와 금연, 이완과 휴식, 가정생활과 직장생활의 균형여부, 자기수용 및 자존감 영역에서 살펴봅니다
									</li>

									<li>
									공격과 분노는 ‘상처받은 자존심이 흘리는 피’라는 말이 있습니다. 이처럼 내면에 화가 과도하게 쌓여 있으면 잠재되어 있다가 감정을 자극하는 상황에서 폭발하게 됩니다. 평소 나의 감정 상태는 어떨까요?
									</li>
								</ul>

								<a href="/heart/psyadult_adult.jsp" class="btn_test">테스트하기</a>
							</div>
						</section>

						<section class="couple">
							<h3>커플 욕구 테스트</h3>
							<div>
								<p>
								이 테스트는 연인 관계에 있는 나와 파트너가 함께 진행할 수 있는 테스트로서 커플 간에 선호<br />
								욕구가 무엇인지 측정하는 테스트입니다. 욕구가 서로 다르다는 것, 서로가 원하고 추구하는 바를 이해하고 갈등을 줄이며 행복한 관계를 유지하는데 도움을 줍니다.

								</p>
								<a href="/heart/psyadult_couple.jsp" class="btn_test">테스트하기</a>
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
