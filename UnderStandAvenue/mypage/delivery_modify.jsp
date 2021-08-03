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
		<div class="delivery write">
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
          <table class="bbs list type1">
            <caption>배송지 작성 양식</caption>

            <colgroup>
                <col style="width:150px;" />
                <col style="width:300px;" />
                <col style="width:150px;" />
                <col style="width:300px;" />
            </colgroup>

            <tbody>
              <tr>
                <th>배송지명</th>
                <td colspan="3"><input type="text" title="배송지명 입력" id="u_subject" value="배송지명"/></td>
              </tr>

              <tr>
                <th>주소</th>
                <td colspan="3">
                  <input title="주소 입력" id="u_address1" type="text" value="111-111">
									<span class="btn_area"><button class="small type4" id="btn_address" type="button">우편번호 찾기</button></span>
									<div>
										<input title="주소 입력" id="u_address2" type="text" value="기본배송지1" data-blankcancel="true"><input title="주소 입력" id="u_address3" type="text" value="기본배송지2" data-blankcancel="true">
									</div>
                  <div class="input_wrap default"><input type="checkbox" id="default" checked /><label for="default">기본배송지</label></div>
                </td>
              </tr>

              <tr>
                <th>수취인</th>
                <td colspan="3"><input type="text" title="수취인 입력" value="수취인" id="u_name"/></td>
              </tr>

              <tr>
                <th>휴대폰</th>
                <td>
                  <select title="휴대폰 앞자리 선택" id="u_hp1">
                    <option value="010" >010</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                  </select>
                  <span class="input_wrap hp">
                    <input type="text" title="휴대폰 중간자리 입력" id="u_hp2" value="1234" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
                  </span>
                  <span class="input_wrap hp">
                    <input type="text" title="휴대폰 뒷자리 입력" id="u_hp3" value="1234" maxlength="4" data-type="onlyNumber" />
                  </span>
                </td>

                <th>일반전화</th>
                <td>
                  <select title="일반전화 지역번호 선택" id="u_tp1">
                    <option value="010" >02</option>
                    <option value="1" >1</option>
                    <option value="2" >2</option>
                  </select>
                  <span class="input_wrap hp">
                    <input type="text" title="일반전화 앞자리 입력" id="u_tp2" value="123" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
                  </span>
                  <span class="input_wrap hp">
                    <input type="text" title="일반전화 뒷자리 입력" id="u_tp3" value="1234" maxlength="4" data-type="onlyNumber" />
                  </span>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="btn_area">
            <a href="#" class="midium type3 btn_modify">수정</a>
            <a href="#" class="midium type4 btn_del">삭제</a>
            <a href="#" class="midium type4 btn_bbs_cancel">취소</a>
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
