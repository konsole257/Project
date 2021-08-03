<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="coupon";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="쿠폰";
	String path3tit="";
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
	<main id="wrap" class="mypage">
		<div class="coupon download">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
            <a href="/">MY PAGE</a>
            <a href="/">WALKSHOP</a>
						<a href="/mypage/coupon.jsp"><strong>쿠폰</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">쿠폰</h2>

					<p class="con_tit_txt">쇼핑전 쿠폰 혜택을 확인할 수 있습니다.</p>

					<!-- -->
          <nav class="coupon_tab" data-ui="tab">
						<h3 class="hide">쿠폰 분류</h3>
						<ul>
							<li>
								<span data-ui="tab_menu"><a href="/mypage/coupon_able.jsp">사용 가능한 쿠폰(10)</a></span>
							</li>
							<li class="on">
								<span data-ui="tab_menu"><a href="/mypage/coupon_download.jsp">다운로드 가능 쿠폰(6)</a></span>
							</li>
							<li>
								<span data-ui="tab_menu"><a href="/mypage/coupon_unable.jsp">사용/만료 쿠폰</a></span>
							</li>
						</ul>
					</nav>

          <div class="btn_area">
            <button href="#" class="midium type2 btn_all_download">전체 다운로드</button>
          </div>

          <ul class="coupon_list">
						<!-- 쿠폰이 없을때
						<li class="no_data">
								다운로드 가능한 쿠폰이 없습니다.
						</li>-->


						<!-- 반복영역 // -->
            <li class="product_coupon"><!-- 상품쿠폰 -->
							<div class="txt_area">
								<div class="name">
									<p>해피크리스마스지원금 10,000원</p>
									<em>10,000원 할인</em>
								</div>
								<strong class="caution">상품금액 50,000원 이상 구매</strong>
							  <time class="period"><span>사용가능기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							  <time class="period"><span>다운로드기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							</div>
							<a href="#" class="btn_download">다운받기</a>
            </li>
						<!-- // 반복영역 -->

						<li class="delivery_coupon"><!-- 배송비쿠폰 -->
							<div class="txt_area">
								<div class="name">
									<p>무료배송</p>
									<em>무료배송</em>
								</div>
								<strong class="caution">전체상품</strong>
							  <time class="period"><span>사용가능기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							  <time class="period"><span>다운로드기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							</div>
							<a href="#" class="btn_download">다운받기</a>
            </li>

						<li class="delivery_coupon"><!-- 배송비쿠폰 -->
							<div class="txt_area">
								<div class="name">
									<p>무료배송</p>
									<em>무료배송</em>
								</div>
								<strong class="caution">전체상품</strong>
							  <time class="period"><span>사용가능기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							  <time class="period"><span>다운로드기간 </span>: 2016.04.01 ~ 2016.12.31</time>
							</div>
							<a href="#" class="btn_download">다운받기</a>
            </li>



          </ul>
					<!-- -->
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
