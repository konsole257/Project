<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="post";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="상품후기 내역";
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
		<div class="post able list">
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
						<a href="/mypage/coupon.jsp"><strong>상품후기 내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">상품후기 내역</h2>

					<p class="con_tit_txt">상품후기 내역을 조회할 수 있습니다.</p>

					<!-- -->
          <nav class="post_tab" data-ui="tab">
						<h3 class="hide">상품후기 내역</h3>
						<ul>
							<li class="on"><!-- 해당페이지에서 class="on" -->
								<span data-ui="tab_menu"><a href="/mypage/post_list_able.jsp">작성 가능한 상품후기</a></span>
							</li>
							<li>
								<span data-ui="tab_menu"><a href="/mypage/post_list_complete.jsp">작성한 상품후기</a></span>
							</li>
						</ul>
					</nav>

          <table class="bbs list type1">
            <caption>상품후기 내역</caption>

            <colgroup>
                <col style="width:600px;" />
                <col style="width:150px;" />
                <col style="width:150px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">상품정보</th>
                  <th scope="col">수량</th>
                  <th scope="col">작성</th>
                </tr>
            </thead>

            <tbody>

							<!-- 작성가능한 후기가 없을때 -->
							<tr>
								<td class="no_data" colspan="5">
									구매확정 후 리뷰 작성이 가능합니다.
									<span>구매내역이 없거나 상품평 작성 가능한 내역이 없습니다.</span>
								</td>
							</tr>

								<!-- 반복영역 // -->
                <tr>
                  <td class="info">
                    <a href="#">
                      <figure>
                        <img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" />
                        <figcaption class="subject_area">
                          <strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong>
                          <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
                        </figcaption>
                      </figure>
                    </a>
                  </td>
                  <td>1</td>
                  <td>
                    <div class="btn_area">
                      <a href="#" class="small type1 btn_register">등록</a>
                    </div>
                  </td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
                  <td class="info">
                    <a href="#">
                      <figure>
                        <img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" />
                        <figcaption class="subject_area">
                          <strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong>
                          <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
                        </figcaption>
                      </figure>
                    </a>
                  </td>
                  <td>1</td>
                  <td>
                    <div class="btn_area">
                      <a href="#" class="small type1 btn_register">등록</a>
                    </div>
                  </td>
                </tr>
            </tbody>
          </table>
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
