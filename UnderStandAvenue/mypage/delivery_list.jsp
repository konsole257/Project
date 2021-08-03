<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="delivery";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="배송지 관리";
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
		<div class="delivery list">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
            <a href="/mypage/mypage.jsp">MY PAGE</a>
            <a href="/mypage/order_list.jsp">WALKSHOP</a>
						<a href="/mypage/delivery_list.jsp"><strong>배송지 관리</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">배송지 관리</h2>

					<p class="con_tit_txt">배송지 관리를 할 수 있습니다.</p>

					<!-- -->
          <small class="length">전체 등록된 배송지 <span>4개</span></small>

          <table class="bbs list type1">
            <caption>CULTURE 예매내역</caption>

            <colgroup>
                <col style="width:60px;" />
                <col style="width:120px;" />
                <col style="width:120px;" />
                <col style="width:451px;" />
                <col style="width:149px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col"><input type="checkbox" id="all_check" data-fn="allCheck" /></th>
                  <th scope="col">배송지명</th>
                  <th scope="col">수취인</th>
                  <th scope="col">주소</th>
                  <th scope="col">선택</th>
                </tr>
            </thead>

            <tbody>
              <!-- 등록된 배송지가 없을때-->
              <tr>
                <td colspan="5" class="no_data">등록된 배송지가 없습니다.</td>
              </tr>

							<!-- 반복영역 // -->
              <tr>
                <td><input type="checkbox" /></td>
                <td>기본 배송지</td>
                <td>이하나</td>
                <td class="address"><span class="dotdot">[420-031] 서울 마포구 서강대길3 서강빌딩 6층 (신수동1-3)서울서울서울</span></td>
                <td>
                  <div class="btn_area">
                    <a href="#" class="small type3 btn_modify">수정</a>
                    <a href="#" class="small type4 btn_del">삭제</a>
                  </div>
                </td>
              </tr>
							<!-- // 반복영역 -->

              <tr>
                <td><input type="checkbox" /></td>
                <td>회사</td>
                <td>이하나</td>
                <td class="address"><span class="dotdot">[420-031] 서울 마포구 서강대길3 서강빌딩 6층 (신수동1-3)</span></td>
                <td>
                  <div class="btn_area">
                    <a href="#" class="small type3 btn_modify">수정</a>
                    <a href="#" class="small type4 btn_del">삭제</a>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="btn_area">
            <a href="#" class="small type1 btn_add">배송지추가</a>
            <a href="#" class="small type3 btn_default">선택 배송지를 기본 배송지로</a>
            <a href="#" class="small type4 btn_del">선택 배송지 삭제</a>
          </div>

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
