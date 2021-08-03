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
	<script src='/avenueCom/js/raphael.js'></script>

<style>

	</style>
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

					<!-- intro // -->
					<div id="test_intro">
						<strong>아동 심리검사를<br />시작합니다.</strong>

						<p>
						심리 테스트(Psychological test)는 개인의 정서나 대인관계,<br />
						행동적 특징 등을 이해하기 위한 과정이므로 깊게 고민하며 검사에<br />
						응하기보다는 편안한 마음으로 테스트에 임해주시기 바랍니다.
						</p>

						<a href="#" class="btn_start">시작하기</a>

						<div><em>테스트가 시작 된 후 뒤로가기 버튼 혹은 닫기 버튼을<br />클릭하실 경우 진행내용은 저장되지 않습니다.</em></div>
					</div>
					<!-- // intro -->

					<!-- test // -->
					<section id="test" class="stress">
						<div class="progress">
							<h3>양육 스트레스 테스트</h3>

							<p>다음 문항을 보고 <span>아이가 평소에 보이는 행동</span>을<br />기준으로 체크해보세요.</p>

							<div class="paging">
								<span class="now"></span>
								<span class="total"></span>
							</div>

							<div class="progress_inner">
								<div class="progress_bar"></div>
							</div>
						</div>

						<div id="question">
							<table>
								<caption>양육 스트레스 테스트 문항</caption>

								<colgroup>

								</colgroup>

								<thead>

								</thead>

								<tbody>

								</tbody>
							</table>

							<div class="btn_wrap">
								<a href="#" class="btn_next">다음</a>
							</div>
						</div>
					</section>
					<!-- // test -->

					<!-- result // -->
					<section id ="test_result">
						<div>
							<p class="txt1">양육 스트레스 테스트 결과<span>입니다.</span></p>

							<p class="txt2">
								지금 당신의 아이 때문에 스트레스 받고 있습니까? 주 양육자인 부모, 특히 엄마가 행복해야 아이도 행복합니다. 이<br />
								테스트는 양육 스트레스를 측정하여 편안한 육아, 건강한 부모, 행복한 부모-자녀간의 관계를 유지할 수 있게 도와<br />
								줍니다.
							</p>

							<div id="explanation"></div>
						</div>

						<div class="etc">
							<div class="btn_area">
								<a href="/heart/psychild_attitude.jsp" class="big type1 btn_attitude">양육 태도 테스트 하기</a>
								<a href="/heart/program_child_list.jsp" class="big type3 btn_program">아동프로그램 바로가기</a>
								<a href="/customer/qna.jsp" class="big type2 btn_qna">1:1 문의하기</a>
							</div>
						</div>

						<div class="address">
							<p>결과 내용이나 다른 테스트에 대한 문의사항은 아래 연락처로 연락주시면 보다 정확한 안내를 받으실 수 있습니다.</p>
							<address>
								<dl>
									<dt>E-mail</dt>
									<dd>heart@understandavenue.com</dd>
									<dt>Tel</dt>
									<dd>02-2135-8184</dd>
								</dl>
							</address>
						</div>
					</section>
					<!-- // result -->

					<script>
					psyTest('psychild_stress', 5, 'single', { graph : false });
					// json파일명
					// 유형당 질문수,
					// 플레이어 수 : single, double
					// 그래프 사용 여부 : true, flase
					// 그래프 타입 : bar, poly
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
