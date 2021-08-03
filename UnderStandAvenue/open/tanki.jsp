<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="tanki";
	String path4="";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="탱키패밀리 스토리";
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
	<main id="wrap" class="open">

		<div class="tanki">
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
						<a href="/open/tanki.jsp"><strong>탱키패밀리 스토리</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">탱키패밀리 스토리</h2>

					<!-- -->
					<section>
						<img src="/avenueCom/images/sub/open_tanki_img01.jpg" alt="" />
						<h3 class="hide">TANKIS FAMILY</h3>
						<p class="hide">
							탱키패밀리는 롯데면세점의 사회공헌사업의 일환으로 탄생한 캐릭터 친구들입니다.
							지하 주차장 물탱크였던 탱키가 우주에서 온 듀리와 손을 잡고 환경보호, 빈곤퇴치, 사회개발 등
							다양한 방법으로 세상을 좀 더 살기 좋은 곳으로 변화시킵니다.
						</p>

						<ul class="character_area">
							<li>
								<img src="/avenueCom/images/sub/open_tanki_tanki.jpg" alt="" />
								<span class="hide">tanki</span>
								<p class="hide">지하주차장에서 사람이 되길 간절히 바라던 물탱크 탱키. 듀리를 응답하게 한 탱키의 소망이 전세계 탱키 패밀리 탄생의 시작이 되었다.</p>
								<small class="hide">태생:지하주차장 물탱크</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_duri.jpg" alt="" />
								<span class="hide">duri</span>
								<p class="hide">탱키를 늘 보살펴 주는 외계에서 온 친구 초능력을 쓸 때는 꼭 매직큐브를 이용한다.</p>
								<small class="hide">태생 : 월타 은하계 소행성 비데</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_kung.jpg" alt="" />
								<span class="hide">kung</span>
								<p class="hide">사람이 되려고 먹은 마늘이 배신을 했다. 사람이 아닌 팬더곰으로 되다니… 그후로 그는 아무도 믿지 않았다.</p>
								<small class="hide">태생 : China</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_kiki.jpg" alt="" />
								<span class="hide">kiki</span>
								<p class="hide">바나나를 너무 좋아하는 키키.. 바나나 외에 모든 음식은 음식이 아니라고 생각한다. </p>
								<small class="hide">태생 : Indonesia</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_cooni.jpg" alt="" />
								<span class="hide">cooni</span>
								<p class="hide">여기저기 참견하기를 좋아하는 말썽꾸러기 쿠니. 화가 나거나 창피할때는 볼에 있는 노란 깃털이 세워지는 특징이 있다.</p>
								<small class="hide">태생 : Thailand</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_singa.jpg" alt="" />
								<span class="hide">singa</span>
								<p class="hide">본래는 인어였다. 사자왕자를 너무 사랑한 나머지 신에게 상체 포기 각서를 작성하고 만다. 결국…</p>
								<small class="hide">태생 : Singapore</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_fin.jpg" alt="" />
								<span class="hide">fin</span>
								<p class="hide">20옥타브를 넘나드는 가성의 목소리를 가진 귀여운 돌고래 핀. 핀이 기분이 너무 좋으면 안된다고 원주민들은 경고한다. 가성의 아름다운 목소리를 넘어서 고막이 찢어질 수 있을 정도라고…</p>
								<small class="hide">태생 : Guam</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_niko.jpg" alt="" />
								<span class="hide">niko</span>
								<p class="hide">새침하고 삐짐이 많은 니코. 언제부터인지 본인이 말을 하지 않아야 다른 사람들에게 복이 전해진다고 생각하고 입을 닫아버렸다. 한쪽 팔을 절대 내리지 않는 특징이 있다. 이유는 모른다.</p>
								<small class="hide">태생 : Japan</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_blank1.jpg" alt="" />
							</li>
						</ul>
					</section>

					<section>
						<h3><img src="/avenueCom/images/sub/open_tanki_shopinfo.gif" alt="TANKI’s FAMILY SHOP INFO" /></h3>

						<dl class="info">
							<dt>영업시간</dt>
							<dd>10:00 ~ 21:00</dd>

							<dt>휴무일</dt>
							<dd>연중무휴</dd>

							<dt>전화번호</dt>
							<dd>02-2135-8189</dd>
						</dl>
					</section>

					<section>
						<h3><img src="/avenueCom/images/sub/open_tanki_partner.gif" alt="TANKI’s FAMILY SHOP INFO" /></h3>

						<ul class="partner">
							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner01.gif" alt="TANKI’s FAMILY SHOP INFO" />
								<span>콘삭스</span>
								<small>양말</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner02.gif" alt="" />
								<span>카커메이미</span>
								<small>가방, 파우치</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner03.gif" alt="" />
								<span>폴앤제이</span>
								<small>깨지지 않는 거울</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner04.gif" alt="" />
								<span>페이블디자인</span>
								<small>페이퍼토이</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner05.gif" alt="" />
								<span>로넬</span>
								<small>액자, 쿠션 등</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner06.gif" alt="" />
								<span>디자인 부산</span>
								<small>볼펜, 노트 등 학용품</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner07.gif" alt="" />
								<span>이까니아</span>
								<small>향기나는 인형</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner08.gif" alt="" />
								<span>코자자</span>
								<small>친환경<br />그리기인형세트</small>
							</li>

							<li>
								<img src="/avenueCom/images/sub/open_tanki_partner09.gif" alt="" />
								<span>패턴프로젝트</span>
								<small>펠트, 자수 상품</small>
							</li>
						</ul>
					</section>
					<!---->
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
