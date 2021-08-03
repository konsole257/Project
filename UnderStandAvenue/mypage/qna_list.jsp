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
		<div class="qna list">
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
					<div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>고객 문의가 많아 답변이 지연될 수 있는 점은 양해 바라며, 빠른 처리를 위해 노력하겠습니다.</p>
          </div>

					<div class="btn_area">
						<a href="#" class="midium type1 btn_write">1:1 문의하기</a>
					</div>

          <table class="bbs list type1">
            <caption>1:1문의내역</caption>

            <colgroup>
                <col style="width:80px;" />
                <col style="width:178px;" />
                <col style="width:382px;" />
                <col style="width:130px;" />
                <col style="width:130px;" />
            </colgroup>

            <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">주문번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성일</th>
                  <th scope="col">답변상태</th>
                </tr>
            </thead>

            <tbody>
								<!-- 쿠폰이 없을때-->
								<tr>
										<td class="no_data" colspan="5">문의하신 내역이 없습니다.</td>
								</tr>


								<!-- 반복영역 // -->
                <tr>
                    <td class="number">3</td>
                    <td class="stand">UNDER STAND AVENUE</td>
                    <td class="subject"><a href="#" class="dotdot">프로그램 신청서 등록이 안됩니다.프로그램 신청서 등록이 안됩니다.</a></td>
                    <td class="date">2016.01.10</td>
                    <td class="status">접수완료</td>
                </tr>
								<!-- // 반복영역 -->

                <tr>
                  <td class="number">2</td>
                  <td class="stand">기타</td>
                  <td class="subject dotdot"><a href="#">프로그램 신청서 등록이 안됩니다.</a></td>
                  <td class="date">2016.01.10</td>
                  <td class="status">답변중</td>
                </tr>

                <tr>
                  <td class="number">1</td>
                  <td class="stand">YOUTH STAND</td>
                  <td class="subject dotdot"><a href="#">프로그램 신청서 등록이 안됩니다.</a></td>
                  <td class="date">2016.01.10</td>
                  <td class="status complete">답변완료</td>
                </tr>
            </tbody>
          </table>

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
