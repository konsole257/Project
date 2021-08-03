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

					<!-- intro // -->
					<div id="test_intro">
						<strong>테스트가 시작됩니다.</strong>

						<p>
						커플 심리검사는 두 사람이 함께 진행하는 심리검사로써<br />
						<em class="orange">한 사람이 먼저 검사를 진행한 후,<br />
						파트너가 동일한 검사</em>를 진행하면 총 결과가 도출됩니다.<br /><br />

						본 테스트는 각각 별도로 진행되기 때문에 테스트 소요시간이<br />
						다른 테스트에 비해 오래 걸릴 수 있습니다.<br />
						</p>

						<a href="#" class="btn_start">나의 욕구 알아보기</a>

						<div><em>테스트가 시작 된 후 뒤로가기 버튼 혹은 닫기 버튼을<br />클릭하실 경우 진행내용은 저장되지 않습니다.</em></div>
					</div>
					<!-- // intro -->

					<!-- test // -->
					<section id="test" class="couple">
						<div class="progress">
							<h3>커플 욕구 테스트</h3>

							<p>다음 문항을 보고 <span>내가 평소에 느끼는 감정</span>을<br />기준으로 체크해보세요.</p>

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
								<caption>커플 욕구 테스트 문항</caption>

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
							<p class="txt1">커플 욕구 테스트 결과<span>입니다.</span></p>

							<p class="txt2">
								이 테스트는 연인 관계에 있는 나와 파트너가 함께 진행할 수 있는 테스트로서 커플 간에 선호 욕구가 무엇인지 측정하는 테스트입니다. 욕구가 서로 다르다는 것, 서로가 원하고 추구하는 바를 이해하며 건강하고 행복하게 파트너와 지낼 수 있도록 도와줍니다.
							</p>

							<div id="graph"></div>

							<div id="explanation"></div>
						</div>

						<div class="etc">
							<div class="btn_area">
								<a href="/heart/psyadult_adult.jsp" class="big type1 btn_adult">성인 심리  테스트 하기</a>
								<a href="/heart/program_adult_list.jsp" class="big type3 btn_program">성인프로그램 바로가기</a>
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
					psyTest('psyadult_couple', 10, 'double', { graph : true, type : 'bar' });
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
