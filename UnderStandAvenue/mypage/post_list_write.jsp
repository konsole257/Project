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
		<div class="post write list">
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
          <h3>상품후기 작성</h3>
          <form>
            <fieldset>
              <legend>상품후기 작성</legend>

              <table>
                <caption>상품후기 작성 양식</caption>

                <colgroup>
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                </colgroup>

                <tbody>
                  <tr>
                    <th>상품정보</th>
                    <td class="info">
                      <figure>
                        <img alt="" src="/avenueCom/images/temp/cart_product_thumb.jpg">
                        <figcaption class="subject_area">
                          <strong class="subject dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)인디고인디고</strong>
                          <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
                        </figcaption>
                      </figure>
                    </td>

                    <th>만족도</th>
                    <td>
                      <div class="post_icon big">
                        <div class="icon_wrap"><input type="checkbox" id="post20" /><label for="post20">20점</label></div><!-- 체크갯수 1개당 20점 -->
                        <div class="icon_wrap"><input type="checkbox" id="post40" /><label for="post40">40점</label></div>
                        <div class="icon_wrap"><input type="checkbox" id="post60" /><label for="post60">60점</label></div>
                        <div class="icon_wrap"><input type="checkbox" id="post80" /><label for="post80">80점</label></div>
                        <div class="icon_wrap"><input type="checkbox" id="post100" /><label for="post100">100점</label></div>
                      </div>
                    </td>
                  </tr>

                  <tr>
                    <th>내용</th>
                    <td colspan="3">
                        <textarea title="내용 입력"></textarea>
                        <small>내용  0 / 500 byte</small>
                    </td>
                  </tr>
                </tbody>
              </table>

              <div class="btn_area">
                <button type="submit" class="midium type1 btn_ok">등록</button>
                <button type="button" class="midium type4 btn_bbs_cancel">취소</button>
              </div>

            </fieldset>
          </form>

          <script>
          $('.post_icon.big label').click(function(){
            var inputLength = $('.post_icon.big .icon_wrap').length;
            var inputIndex = $(this).parents('.icon_wrap').index();

            if ( $(this).parents('.icon_wrap').find('input').is(':checked') ) {
              for ( var i=inputLength; i>=inputIndex+1; i-- ) {
                $('.post_icon.big .icon_wrap:nth-child('+i+') .checked input').trigger('click');
                $(this).prev().children().trigger('click');
              }
            } else {
              for ( var i=0; i<=inputIndex; i++ ) {
                $('.post_icon.big .icon_wrap:nth-child('+i+') :not(.checked) input').trigger('click');
              }
            }
          });
          </script>
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
