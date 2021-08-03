<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="product";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="검색결과";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop">
		<div class="product list">

			<hr />

			<section id="contents">

        <div class="search_result">
          <div class="search_form">
            <form>
              <fieldset>
                <legend>검색</legend>

                <div class="input_wrap" data-ui="placeholder"><input type="text" id="u_search" /><label for="u_search">검색어를 입력 해주세요</label></div>
              </fieldset>
            </form>
          </div>
          <p class="search_text">
            <em class="black">‘드레스’</em> 의 검색 결과<br />총 <em class="red">18</em>개 상품이 검색되었습니다.
          </p>
        </div>

				<div id="contents_inner">
          <div class="searchtab">
            <a href="#" class="on">상품 <em>(<span>13개</span>)</em></a><!-- 해당페이지에서 class="on" -->
            <a href="#">CULTURE <em>(<span>5개</span>)</em></a>
          </div>

					<!-- prolist // -->
					<div class="prolist big type1">
						<div class="searchtab">
							<a href="#" class="on">신상품순</a>
							<a href="#">판매량순</a>
							<a href="#">높은 가격순</a>
							<a href="#">낮은 가격순</a>
						</div>

            <!--<p class="no_data">검색결과가 없습니다.</p> 검색결과가 없을때 -->

            <ul class="ls">
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                    <!-- 품절일때 //
                    <span class="icon_soldout">SOLD OUT</span>
                     // 품절일때 -->
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <!-- <span class="icon_best">BEST</span> -->
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del></del><!-- 할인없을때  -->
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <!-- <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span> -->
                    <!-- 품절일때 // -->
                    <span class="icon_soldout">SOLD OUT</span>
                    <!-- // 품절일때 -->
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <!-- <span class="icon_new">NEW</span> -->
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <!-- <span class="icon_sale">SALE</span> -->
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="pic">
                    <img src="/avenueCom/images/temp/product350x350.jpg" alt="" />
                    <span class="shop_icon">
                      <span class="icon_new">NEW</span>
                      <span class="icon_best">BEST</span>
                      <span class="icon_md">MD's pick</span>
                    </span>
                  </span>
                  <strong class="txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
                  <span class="txt_price">
                    <del>500,000원</del>
                    <strong>245,000원</strong>
                  </span>
                  <span class="shop_icon">
                    <span class="icon_sale">SALE</span>
                    <span class="icon_coupon">COUPON</span>
                  </span>
                </a>
              </li>
            </ul>
            <!-- paging // -->
            <div class="paging">
              <a href="#" class="prev">이전</a>
              <span class="num">
                <a href="#" class="on"><strong>1</strong></a>
                <a href="#">2</a>
                <a href="#">3</a>
              </span>
              <a href="#" class="next">다음</a>
            </div>
            <!-- // paging -->

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
