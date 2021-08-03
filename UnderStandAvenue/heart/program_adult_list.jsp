<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="program";
	String path4="adult";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="PROGRAM";
	String path4tit="성인 프로그램";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="heart">

		<div class="program adult list">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_heart.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/heart/about.jsp">HEART STAND</a>
						<a href="/heart/program.jsp">Program</a>
						<a href="/heart/program_adult_list.jsp"><strong>성인 프로그램</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">성인 프로그램</h2>

					<p class="con_tit_txt">다양한 예술 프로그램과 권위있는 심리 전문가의 강의를 통해<br />나 자신을 되돌아보며 일상에 활력을 주는 프로그램입니다.</p>

          <!-- -->
          <p class="txt">
            사회초년생, 커플, 학부모, 부부 등 일반 성인들을 위한<br />
						예술힐링 프로그램으로 정서적 안정과 자기 힐링의<br />
						기회를 제공합니다.
          </p>

          <div class="search_form">
						<form>
							<fieldset>
								<legend>검색</legend>

								<select title="분류 선택">
									<option>전체</option>
									<option>1</option>
								</select>

								<input id="u_search" type="text" />
								<button type="submit">검색</button>
							</fieldset>
						</form>
					</div>

          <div class="bbs gallery type2">
						<!-- 검색결과가 없을때
						<article>
								<p class="no_data">‘음악’에 대한 검색결과가 없습니다.</p>
						</article>
						-->

            <!-- 반복영역 // -->
            <article>
              <a href="#">
                <div class="header_area">
                  <header>
                    <h3 class="subject dotdot">나만의 영웅 신화 만들기나만의 영웅 신화 만들기나만의 영웅 신화 만들기</h3>
                    <time class="date">2015.12.12</time>

                    <dl>
                      <dt>매체</dt>
                      <dd>움직임</dd>

                      <dt>시간</dt>
                      <dd>90분</dd>

                      <dt>대상</dt>
                      <dd>성인프로그램</dd>

                      <dt>진행일</dt>
                      <dd>2016.02.17 ~ 2016.02.28</dd>
                    </dl>
                  </header>

                  <img src="/avenueCom/images/temp/heart_program192x122.jpg" alt="" class="img" />
                </div>

                <p class="txt_viewer dotdot">
                  '칼 윰'의 분석심리학을 바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분 석심리학을 바탕으로 적극적 상상 경험과내면을
                  돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분석심리학을 바탕으로  적극적 상 상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램 '칼 윰'의 분석심리학을
                  바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분석심리학을 바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는
                  프로그램'칼 윰'의 분석심리학을 바탕으로
                </p>

                <small class="hashtag">
                  <ul>
                    <li>타악기 밴드</li>
                    <li>음악속에하나되기</li>
                    <li>직장인밴드</li>
                    <li>악기연주</li>
                    <li>즐거움</li>
                  </ul>
                </small>
              </a>
            </article>
            <!-- // 반복영역 -->

            <article>
              <a href="#">
                <div class="header_area">
                  <header>
                    <h3 class="subject dotdot">나만의 영웅 신화 만들기</h3>
                    <time class="date">2015.12.12</time>

                    <dl>
                      <dt>매체</dt>
                      <dd>움직임</dd>

                      <dt>시간</dt>
                      <dd>90분</dd>

                      <dt>대상</dt>
                      <dd>성인프로그램</dd>

                      <dt>진행일</dt>
                      <dd>2016.02.17 ~ 2016.02.28</dd>
                    </dl>
                  </header>

                  <img src="/avenueCom/images/temp/heart_program192x122.jpg" alt="" class="img" />
                </div>

                <p class="txt_viewer dotdot">
                  '칼 윰'의 분석심리학을 바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분 석심리학을 바탕으로 적극적 상상 경험과내면을
                  돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분석심리학을 바탕으로  적극적 상 상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램 '칼 윰'의 분석심리학을
                  바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는 프로그램'칼 윰'의 분석심리학을 바탕으로 적극적 상상 경험과 내면을 돌아보고 성장하는 시간을 갖는
                  프로그램'칼 윰'의 분석심리학을 바탕으로
                </p>

                <small class="hashtag">
                  <ul>
                    <li>타악기 밴드</li>
                    <li>음악속에하나되기</li>
                    <li>직장인밴드</li>
                    <li>악기연주</li>
                    <li>즐거움</li>
                  </ul>
                </small>
              </a>
            </article>
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
