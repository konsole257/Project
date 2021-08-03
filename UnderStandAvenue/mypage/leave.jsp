<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="membership";
	String path3="leave";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="회원탈퇴";
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
		<div class="leave">
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
            <a href="/mypage/modify.jsp">회원정보</a>
						<a href="/mypage/leave.jsp"><strong>회원탈퇴</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회원탈퇴</h2>

					<p class="con_tit_txt">회원탈퇴 페이지입니다.</p>

					<!-- -->
          <div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>회원 탈퇴를 하시면, 보유하신 할인쿠폰은 자동 소멸됩니다.</p>
            <p>이벤트 참여는 탈퇴 이후 자동탈락을 기본으로 하며, 이전 당첨에 있어서는 경품발송이 예정대로 진행됩니다.</p>
            <p>탈퇴 후 재가입시 동일한 아이디로는 재가입 불가능합니다.</p>
          </div>

					<form>
						<fieldset>
							<legend>회원탈퇴</legend>

              <p class="txt">회원탈퇴 사유를 입력해 주세요.</p>

              <textarea title="탈퇴사유 입력"></textarea>

              <div class="agreeement_area">
                <p>위 사항을 확인하였으며, 탈퇴 후 개인정보 삭제에 동의 합니다.</p>
                <div class="input_wrap">
                  <label for="agreeement">개인정보 삭제 동의 합니다</label>
                  <input type="checkbox" id="agreeement" />
                </div>
              </div>

							<div class="btn_area">
								<button type="button" class="midium type1 btn_leave">탈퇴</button>
								<button type="reset" class="midium type4 btn_bbs_cancel">취소</button>
							</div>
						</fieldset>
					</form>
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
