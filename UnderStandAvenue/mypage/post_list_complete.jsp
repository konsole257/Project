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
		<div class="post complete list">
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
							<li><!-- 해당페이지에서 class="on" -->
								<span data-ui="tab_menu"><a href="/mypage/post_list_able.jsp">작성 가능한 상품후기</a></span>
							</li>
							<li class="on">
								<span data-ui="tab_menu"><a href="/mypage/post_list_complete.jsp">작성한 상품후기</a></span>
							</li>
						</ul>
					</nav>

					<form>
						<fieldset>
							<legend>작성한 상품후기</legend>

							<table class="bbs list type1">
		            <caption>작성한 상품후기 목록</caption>

		            <colgroup>
										<col style="width:65px;" />
		                <col style="width:258px;" />
		                <col style="width:449px;" />
		                <col style="width:128px;" />
		            </colgroup>

		            <thead>
		                <tr>
		                  <th scope="col" colspan="2">상품명</th>
		                  <th scope="col">주문상품정보</th>
		                  <th scope="col">작성일</th>
		                </tr>
		            </thead>

		            <tbody>
									<!-- 작성가능한 후기가 없을때 -->
									<tr>
										<td class="no_data" colspan="4">
											작성한 상품후기가 없습니다.
										</td>
									</tr>

										<!-- 반복영역 // -->
		                <tr>
											<td><input type="checkbox" /></td>
		                  <td class="info">
		                    <a href="#">
		                      <strong class="subject dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)IndigoIndigo</strong>
		                      <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
		                    </a>
		                  </td>
		                  <td class="txt">
												<span class="post_icon small"><span style="width: 60%;">60점</span></span>
												<p class="dotdot">심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
											</td>
		                  <td>2016.01.17</td>
		                </tr>
										<!-- // 반복영역 -->

		                <tr>
											<td><input type="checkbox" /></td>
		                  <td class="info">
												<a href="#">
		                      <strong class="subject dotdot">Marseille Scarf</strong>
		                      <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
		                    </a>
		                  </td>
											<td class="txt">
												<span class="post_icon small"><span style="width: 80%;">80점</span></span>
												<p class="dotdot">심플한 그 맛에 매력을 느낀 반지! 가장 중요한 반지의 퀄리티는 가격 대비 만족합니다.</p>
											</td>
		                  <td>2016.01.17</td>
		                </tr>
		            </tbody>
		          </table>

							<div class="btn_area">
								<button type="submit" class="small type4 btn_del">선택 상품후기 삭제</button>
							</div>
						</fieldset>
					</form>

					<div class="paging">
						<a class="prev" href="#">이전</a>
						<span class="num">
							<a class="on" href="#"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a class="next" href="#">다음</a>
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
