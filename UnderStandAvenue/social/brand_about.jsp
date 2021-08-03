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
		<div class="brand about list">

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

          <img src="/avenueCom/images/temp/social_brand900x772.jpg" alt="" />

          <address>
            <span>이메일 : <a href="#">hello@ethrica.com</a></span>
            <span>홈페이지 : <a href="#">www.ethrica.com</a></span>
          </address>

          <section class="brand_new">
            <h3>브랜드 상품</h3>
            <div class="prolist small">
              <ul class="ls">
                <li>
                  <a href="#">
                    <span class="pic"><img src="/avenueCom/images/temp/product160x160_2.jpg" alt="" /></span>
                    <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="pic"><img src="/avenueCom/images/temp/product160x160_2.jpg" alt="" /></span>
                    <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="pic"><img src="/avenueCom/images/temp/product160x160_2.jpg" alt="" /></span>
                    <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="pic"><img src="/avenueCom/images/temp/product160x160_2.jpg" alt="" /></span>
                    <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="pic"><img src="/avenueCom/images/temp/product160x160_2.jpg" alt="" /></span>
                    <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  </a>
                </li>
              </ul>
            </div>
          </section>

          <div class="btn_area">
            <a href="/shop/" class="midium btn_shop">GO SHOP</a>
						<a class="midium type4 btn_bbs_list" href="/social/brand_intro.jsp">목록</a>
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
