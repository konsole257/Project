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
		<div class="coupon unable">
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
							<li>
								<span data-ui="tab_menu"><a href="/mypage/coupon_download.jsp">다운로드 가능 쿠폰(6)</a></span>
							</li>
							<li class="on">
								<span data-ui="tab_menu"><a href="/mypage/coupon_unable.jsp">사용/만료 쿠폰</a></span>
							</li>
						</ul>
					</nav>

					<div class="coupon_list">
	          <table>
	            <caption>사용 가능한 쿠폰</caption>

	            <colgroup>
	                <col style="width:240px;" />
	                <col style="width:180px;" />
	                <col style="width:240px;" />
	                <col style="width:120px;" />
	                <col style="width:120px;" />
	            </colgroup>

	            <thead>
	                <tr>
	                  <th scope="col">쿠폰명</th>
	                  <th scope="col">할인혜택</th>
	                  <th scope="col">제한조건</th>
	                  <th scope="col">유효기간</th>
	                  <th scope="col">남은일자</th>
	                </tr>
	            </thead>

	            <tbody>
									<!-- 쿠폰이 없을때 -->
									<tr>
											<td class="no_data" colspan="5">사용/만료된 쿠폰이 없습니다.</td>
									</tr>


									<!-- 반복영역 // -->
	                <tr>
	                    <td class="name">해피크리스마스지원금 10,000원</td>
	                    <td class="sale">10,000원 할인</td>
	                    <td class="limit">상품금액 50,000원 이상</td>
	                    <td class="date">2016.01.10</td>
	                    <td class="dday">사용</td>
	                </tr>
									<!-- // 반복영역 -->

									<tr>
	                    <td class="name">해피크리스마스지원금 10,000원</td>
	                    <td class="sale">10,000원 할인</td>
	                    <td class="limit">상품금액 50,000원 이상</td>
	                    <td class="date">2016.01.10</td>
	                    <td class="dday">기간만료</td>
	                </tr>

									<tr>
										<td class="name">해피크리스마스지원금 10,000원</td>
										<td class="sale">10,000원 할인</td>
										<td class="limit">상품금액 50,000원 이상</td>
										<td class="date">2016.01.10</td>
										<td class="dday">기간만료</td>
	                </tr>
	            </tbody>
	          </table>
					</div>

					<div class="paging">
						<a href="#" class="prev">이전</a>
						<span class="num">
							<a href="#" class="on"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a href="#" class="next">다음</a>
					</div>

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
