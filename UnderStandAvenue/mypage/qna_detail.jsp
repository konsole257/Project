<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="customer";
	String path3="list";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="1:1 문의내역";
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
		<div class="qna detail">
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
            <a href="/mypage/qna_list.jsp">고객센터</a>
						<a href="/mypage/qna_list.jsp"><strong>1:1문의내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">1:1문의내역</h2>

					<p class="con_tit_txt">1:1 문의내역을 조회할 수 있습니다.</p>

					<!-- -->
          <div class="bbs detail type1">
            <table>
              <caption>1:1문의상세</caption>

              <colgroup>
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                  <col style="width:150px;" />
                  <col style="width:300px;" />
              </colgroup>

              <tbody class="bbs_content">
  								<tr>
                    <th>문의구분</th>
                    <td class="category">교환반품</td>

                    <th>주문번호</th>
                    <td class="number">201602052334555</td>
                  </tr>

                  <tr>
                    <th>이름</th>
                    <td>김세영</td>

                    <th>작성일</th>
                    <td>2015.07.24</td>
                  </tr>

                  <tr>
                    <th>휴대폰</th>
                    <td class="hp">010 - 1234 - 5678</td>

                    <th>답변 알림 방법</th>
                    <td>peaaaa@naver.com</td>
                  </tr>

                  <tr>
                    <th>이메일</th>
                    <td colspan="3">peaaaa@naver.com</td>
                  </tr>

                  <tr>
                    <th>첨부파일</th>
                    <td colspan="3" class="download">
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a>
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일명.jpg</a>
                    </td>
                  </tr>

                  <tr>
                    <th>내용</th>
                    <td colspan="3" class="text_viewer">
                      신청자가 작성한 사업내용이 보여집니다.<br />
                      신청자가 작성한 사업내용이 보여집니다 신청자가 작성한 사업내용이 보여집니다.<br />
                      신청자가 작성한 사업내용이 보여집니다.<br /><br />

                      신청자가 작성한 사업내용이 보여집니다.<br />
                      신청자가 작성한 사업내용이 보여집니다.<br />
                      신청자가 작성한 사업내용이 보여집니다 신청자가 작성한 사업내용이 보여집니다.
                    </td>
                  </tr>

                  <tr>
                    <th>답변상태</th>
                    <td colspan="3">접수완료</td>
                  </tr>
              </tbody>
            </table>

            <section class="answer">
              <h3>답변</h3>
              <p>
                네 김세영님 문의해주신 내용에 대한 답변입니다.네 김세영님 문의해주신 내용에 대한 답변입니다.네 김세영님 문의해주신 내용에 대한 답변입니다. 김세영님 문의해주신 내용에 대한 답변입니다.<br />
                김세영님께서 문의해주신 ㅇㅇㅇㅇ에 대해서 설명해드리겠습니다.<br />
                언더스탠드에비뉴에서는 ㅇㅇㅇㅇ을 ~~방법으로 진행하고 있습니다.
              </p>
            </section>
          </div>

          <div class="btn_area">
            <a href="#" class="midium type4 btn_bbs_list">목록</a>
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
