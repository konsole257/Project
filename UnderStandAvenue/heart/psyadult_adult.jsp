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
						성인 심리검사의 소요시간은 <em>총 30분</em>입니다.<br /><br />

						이 테스트는 종합 심리 검사로써<br />
						우울/대인관계/스트레스/감정조절 테스트까지<br />
						4가지의 심리 검사를 모두 진행한 후에 총 결과가 도출됩니다.<br />
						</p>

						<a href="#" class="btn_start">시작하기</a>

						<div><em>테스트가 시작 된 후 뒤로가기 버튼 혹은 닫기 버튼을<br />클릭하실 경우 진행내용은 저장되지 않습니다.</em></div>
					</div>
					<!-- // intro -->

					<!-- test // -->
					<section id="test" class="adult">
						<div class="progress">
							<h3>성인 심리 테스트</h3>

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
								<caption>성인 심리 테스트 문항</caption>

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
							<p class="txt1">성인 심리 테스트 결과<span>입니다.</span></p>

							<p class="txt2">
								이 테스트는 종합 심리검사로서 4가지의 심리검사를 진행한 후에 총 결과를 확인할 수 있습니다.
							</p>

							<div class="info">
								<div>
									<strong>우울</strong>
									<p>
										‘마음의 감기’라 불리는 우울증 정도를 알아볼 수 있는 테스트입니다.<br />
										우울증은 의욕 저하, 깊은 근심, 수면 문제, 기분 부전, 권태-무기력,<br />
										집중력 부족, 일상생활에서의 능력 저하, 자살 충동 등의 증상을 가져옵니다.<br />
										이 테스트를 통해 나의 정서 상태가 어떤지 종합적으로 알아볼 수 있습니다.
									</p>
								</div>

								<div>
									<strong>대인관계</strong>
									<p>
										대인관계에서의 주도성과 사회적 관심, 대인관계에서 개방적인지 여부,<br />
										관계에 대한 지각과 가족에 대한 지각까지 대인관계나 가족관계에서의 나의<br />
										욕구는 어떠한지 알아볼 수 있는 테스트입니다.
									</p>
								</div>

								<div>
									<strong>스트레스</strong>
									<p>
										나의 스트레스 정도는 어느 수준인지, 스트레스 해소를 위해 필요한 요인은<br />
										무엇인지를 알아볼 수 있습니다. 금주와 금연, 이완과 휴식, 가정생활과<br />
										직장생활의 균형여부, 자기수용 및 자존감 영역에서 살펴봅니다.
									</p>
								</div>

								<div>
									<strong>감정조절</strong>
									<p>
										공격과 분노는 ‘상처받은 자존심이 흘리는 피’라는 말이 있습니다.<br />
										이처럼 내면에 화가 과도하게 쌓여 있으면 잠재되어 있다가 감정을 자극하는<br />
										상황에서 폭발하게 됩니다. 그에 대한 평소 나의 감정을 알아볼 수 있는<br />
										테스트입니다.
									</p>
								</div>
							</div>

							<div id="graph"></div>

							<div class="caution">
								<p>
								성인4가지 테스트의 점수 위치가 중심부에 가까울수록 안정적인 상태이며 중심부에서 멀어질수록 그 축에 해당하는 문제가 심각하다고 볼 수 있습니다.
								</p>
								<p>
								전체면적이 좁을수록 안정적인 상태이며 전체면적이 넓을수록 불안정한 상태를 나타냅니다.
								</p>
							</div>

							<div id="explanation"></div>
						</div>

						<div class="etc">
							<div class="btn_area">
								<a href="/heart/psyadult_couple.jsp" class="big type1 btn_couple">커플욕구 테스트 하기</a>
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
					psyTest('psyadult_adult', 5, 'single', { graph : true, type : 'poly' });
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
