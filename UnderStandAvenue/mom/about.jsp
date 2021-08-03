<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="소개";
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

		<div class="about">
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
						<a href="/mom/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">MOM STAND</h2>

						<p class="con_tit_txt">몸도 마음도 즐거운 <strong>건강 레시피</strong></p>

						<p class="txt1">
							함께 만드는 건강 테이블로<br> 다문화, 한부모 가정 여성의 자립을 응원합니다.
						</p>

						<p class="txt2">
							맘스탠드는 건강한 조리법, 친환경 식재료로 세계 각 나라의 문화를 녹인<br>
							이색 메뉴와 저녁에도 즐길 수 있는 브런치를 선보입니다. 다문화, 한부모<br>
							가정 여성이 함께 준비하는 건강테이블과 유명 셰프들의 차별화된<br>
							레시피로 새로운 희망을 키웁니다.
						</p>

						<ul class="txt3">
							<li>다문화 및 한부모 가정 여성의 <strong>안정적 사회기반 마련</strong></li>
							<li>친환경 재료와 조리법을 통한 <strong>건강한 먹거리 제공</strong></li>
							<li>지역사회에 먹는 <strong>즐거움과 만남의 장 제공</strong></li>
						</ul>
					</div>

					<q class="txt4">
						우리는 음식을 통해서<br>
						서로 간의 문화를 소통하고 이해할 수 있기를 희망합니다.
					</q>

					<div class="process">
						<dl class="recruit">
							<dt>열린 채용</dt>
							<dd>
								각 지역 다문화지원센터 연계,<br>
								한부모 가정 및<br>
								경력단절 여성 채용
							</dd>
						</dl>

						<dl class="ability">
							<dt>역량강화</dt>
							<dd>
								체계적인<br>
								현장 실습을 통한<br>
								역량 강화
							</dd>
						</dl>

						<dl class="grow">
							<dt>장기성장 지원</dt>
							<dd>
								안정적 근무 여건 및<br>
								성장 기회 마련
							</dd>
						</dl>
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
