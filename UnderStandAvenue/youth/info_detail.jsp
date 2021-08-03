<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="info";
	String path4="info";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="지원신청";
	String path4tit="모집안내";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="youth">
		<div class="info detail">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/about.jsp">지원신청</a>
						<a href="/youth/recruit.jsp"><strong>모집안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">모집안내</h2>
					<p class="con_tit_txt">유스 스탠드의 모집 내용을 알려드립니다.</p>

					<!-- -->
          <div class="bbs detail">
            <div id="detailpic" class="detailpic pajinate">
              <ul class="pajinatels">
                <li><img src="/avenueCom/images/temp/youth_info425x425.jpg" alt="" /></li>
                <li><img src="/avenueCom/images/temp/youth_info425x425.jpg" alt="" /></li>
                <li><img src="/avenueCom/images/temp/youth_info425x425.jpg" alt="" /></li>
                <li><img src="/avenueCom/images/temp/youth_info425x425.jpg" alt="" /></li>
              </ul>
            </div>

            <table>
                <caption>모집 커리큘럼 안내 표</caption>

                <colgroup>
                  <col style="width:135px;" />
                  <col style="width:315px;" />
                </colgroup>

                <tbody>
                  <tr>
                    <th>커리큘럼</th>
                    <td>웹 편집출판 · 디자인</td>
                  </tr>

                  <tr>
                    <th>강좌명</th>
                    <td>일러스트 21기</td>
                  </tr>

                  <tr>
                    <th>참여대상</th>
                    <td>중 · 고등 · 대학생</td>
                  </tr>

                  <tr>
                    <th>교육일정</th>
                    <td>2016.01.26 ~ 2016.03.08</td>
                  </tr>

                  <tr>
                    <th>교육장소</th>
                    <td>서울특별시 성동구 왕십리로63</td>
                  </tr>

                  <tr>
                    <th>교육회차</th>
                    <td>10회차</td>
                  </tr>

                  <tr>
                    <th>교육비</th>
                    <td>230,000원</td>
                  </tr>

                  <tr>
                    <th>지원혜택</th>
                    <td>ㅇㅇㅇㅇ</td>
                  </tr>

                  <tr>
                    <th>신청방법</th>
                    <td>온라인 접수</td>
                  </tr>

                  <tr class="download">
                    <th>첨부파일</th>
                    <td>
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                      <a href="#"><small class="icon file">첨부파일</small>첨부파일.jpg</a>
                    </td>
                  </tr>
                </tbody>
            </table>
          </div>

          <div class="btn_area">
            <a href="#" class="midium type1 btn_download">양식 다운로드</a>
            <a href="#" class="midium type2 btn_ask">지원하기</a>
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
