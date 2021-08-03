<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="social";
	String path3="brand";
	String path4="brand";
	String path1tit="STAND";
	String path2tit="SOCIAL STAND";
	String path3tit="ABOUT";
	String path4tit="브랜드스토리";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="social">
		<div class="brand intro list">

      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_social.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
        <div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/social/about.jsp">SOCIAL STAND</a>
						<a href="/social/brand_intro.jsp"><strong>브랜드 스토리</strong></a>
					</div>
				</div>

				<div id="contents_inner">
          <h2 class="con_tit">SOCIAL STAND</h2>
          <p class="con_tit_txt">WALKSHOP과 함께하는 브랜드를 소개합니다.</p>

					<nav class="brand_sort">
						<h3 class="hide">브랜드 분류별 보기 메뉴</h3>

						<div class="btn_area">
							<a href="#" class="big type4 btn_all">ALL / 전체보기</a>
						</div>

						<ul class="eng">
							<li><a href="#" class="on"><img src="/avenueCom/images/sub/eng_a.png" alt="A"/></a></li> <!-- 해당페이지에서 class="on" -->
							<li><a href="#"><img src="/avenueCom/images/sub/eng_b.png" alt="B"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_c.png" alt="C"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_d.png" alt="D"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_e.png" alt="E"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_f.png" alt="F"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_g.png" alt="G"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_h.png" alt="H"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_i.png" alt="I"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_j.png" alt="J"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_k.png" alt="K"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_l.png" alt="L"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_m.png" alt="M"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_n.png" alt="N"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_o.png" alt="O"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_p.png" alt="P"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_q.png" alt="Q"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_r.png" alt="R"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_s.png" alt="S"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_t.png" alt="T"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_u.png" alt="U"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_v.png" alt="V"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_w.png" alt="W"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_x.png" alt="X"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_y.png" alt="Y"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/eng_z.png" alt="Z"/></a></li>
						</ul>

						<ul class="kor">
							<li><a href="#"><img src="/avenueCom/images/sub/kor_01.png" alt="ㄱ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_02.png" alt="ㄴ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_03.png" alt="ㄷ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_04.png" alt="ㄹ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_05.png" alt="ㅁ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_06.png" alt="ㅂ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_07.png" alt="ㅅ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_08.png" alt="ㅇ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_09.png" alt="ㅈ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_10.png" alt="ㅊ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_11.png" alt="ㅋ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_12.png" alt="ㅌ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_13.png" alt="ㅍ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_14.png" alt="ㅎ"/></a></li>
							<li><a href="#"><img src="/avenueCom/images/sub/kor_etc.png" alt="기타"/></a></li>
						</ul>
					</nav>

					<!-- prolist // -->
					<div class="prolist big type1">
						<ul class="ls">
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/brand340x180.jpg" alt="" />
									</span>

									<strong class="txt_ti">Aube17</strong>
								</a>
							</li>
						</ul>
					</div>
					<!-- // prolist -->

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
