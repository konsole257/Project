<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="academy";
	String path3="about";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="성공 두드림 아카데미";
	String path3tit="소개";
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
	<main id="wrap" class="academy">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_academy.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/academy/about.jsp">성공 두드림 아카데미</a>
						<a href="/academy/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">성공 두드림 Academy 소개</h2>

					<%-- <p class="con_tit_txt">신한은행이 <strong>‘자영업자 성공 생태계’</strong>를 구축하여 자영업자의 자생력 강화와 성공을 지원합니다.</p> --%>

					<div data-ui="tab" class="tab">
						<section class="on">
							<h3 data-ui="tab_menu" data-fn="tab_menu" class="tab_menu tab1"><a href="#tab1">소개</a></h3>

							<div data-ui="tab_content" id="tab1">
								<div class="section1">
									<p class="txt1">
									SOHO 자영업자를 대상으로 고객관리, 금융, 경영, 홍보마케팅 등을 교육하고<br>
									네트워킹을 지원하여 자영업자의 자생력 강화와 성공을 돕습니다.
									</p>

									<p class="txt2">
										국내 최고 수준의 교육 · 컨설팅 과정을 통해 신한은행이 자영업자의 매출증대를 돕습니다. <br>
										자영업자 성공을 위한 필수과정으로 다양한 분야의 전문가 및 자영업자들과 교류의 장을 제공합니다
									</p>

									<img src="/avenueCom/images/sub/academy_about_tab1_img1.jpg" alt="" class="img">
								</div>

								<!-- 2018.03.15 : 수정 // -->
								<div class="btn_area">
									<a href="/academy/apply.jsp" class="midium type1 btn_participate">수강신청</a>
								</div>
								<!-- // 2018.03.15 : 수정 -->	
							</div>
						</section>

						<section>
							<h3 data-ui="tab_menu" data-fn="tab_menu" class="tab_menu tab2"><a href="#tab2">성공과정</a></h3>

							<div data-ui="tab_content" id="tab2">
								<div class="section1">
									<p class="txt1">
									성공과정에서는 자영업자에게 꼭 필요한 고객관리, 금융, 경영, 홍보에 대한<br>
									체계적인 강의가 준비되어 있습니다.
									</p>

									<p class="txt2">
									성공 두드림 맞춤 교실에 이어 성공 두드림 SOHO 사관학교까지 교육과정을 이수하시면,<br>
									‘장사의 神’ 으로 변화되어 있는 모습을 발견하실 수 있을 것입니다.
									</p>

									<dl class="basic">
										<dt>
											<span>
											성공 두드림 맞춤 교실
											</span>
										</dt>

										<dd>
										창업 준비 중이거나 현재 사업장을 운영하고 계신 사장님을 대상으로<br>
										세무, 법률, 금융기본 상식, 전문가 성공특강 등을 제공<br><br>
										월 8회 실시(예정)
										</dd>
									</dl>

									<dl class="real">
										<dt>
											<span>
											성공 두드림 SOHO 사관학교
											</span>
										</dt>
										<dd>
											소수정예 자영업자들을 대상 심화 과정으로,<br>
											다양한  프로그램 및 컨설팅 실시<br><br>
											연 5회(8주 과정)
										</dd>
									</dl>
								</div>
							</div>
						</section>

						<section>
							<h3 data-ui="tab_menu" data-fn="tab_menu" class="tab_menu tab3"><a href="#tab3">두드림과정</a></h3>

							<div data-ui="tab_content" id="tab3">
								<p class="txt1">
								지방 자영업자를 위한 성공 두드림 아카데미의 특별과정을 소개합니다.
								</p>

								<p class="txt2">
								사업장이 너무 바빠서 서울까지 오기 어렵거나 지방에 거주하는 자영업자를 위한 성공 두드림 세미나와<br>
								성공 두드림 SOHO 사관학교 졸업생을 대상으로 한 양질의 피드백 강좌인 신한 성공 두드림 컨퍼런스가 실시됩니다.
								</p>

								<dl class="soho">
									<dt><span>지역특강</span></dt>
									<dd>
									성공 두드림 아카데미에 참석하고 싶지만, 참석이 힘든<br>
									지방에 계신 자영업자분들께 강의 서비스를 제공<br><br>
									분기 1회 실시
									</dd>
								</dl>

								<dl class="conference">
									<dt><span>컨퍼런스</span></dt>
									<dd>
										성공 두드림 SOHO 사관학교 졸업생 대상 우수사례 공유 · 특강을 통해<br>
										유대감을 강화하고 지속적인 조직화를 위한 프로그램<br><br>
										연 1회 실시
									</dd>
								</dl>
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
