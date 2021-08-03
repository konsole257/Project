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

		<div class="program adult detail">
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
          <article class="bbs detail type1">
						<header>
							<h4 class="subject">[ART STAND] 제목이 표시됩니다.</h4>
							<time class="date">2016.01.10</time>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
                <dl>
                    <dt>매체</dt>
                    <dd>움직임</dd>

                    <dt>시간</dt>
                    <dd>90분</dd>

                    <dt>대상</dt>
                    <dd>성인</dd>

                    <dt>프로그램 진행일</dt>
                    <dd>2016.02.17 ~ 2016.02.28</dd>
                </dl>
								<p>
                  <img src="/avenueCom/images/temp/heart_program900x600.jpg" alt="" class="img" />

									내용이 표시됩니다.<br />
									언더스탠드에비뉴가 전하는 따뜻한 소식들입니다.<br />
									내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다. 내용이 표시됩니다.<br /><br />

									내용이 표시됩니다.<br />
									내용이 표시됩니다. 내용이 표시됩니다.
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
							</div>
						</div>
					</article>

					<div class="btn_area">
						<a href="#" class="midium type1 btn_bbs_submit">신청하기</a>
          	<a href="#" class="midium type4 btn_bbs_list">목록</a>
					</div>

          <!-- 댓글영역 // -->
          <div class="reply">
            <p>프로그램 참여 후기를 댓글로 남겨주세요.</p>

            <div>
              <form>
                  <fieldset>
                    <legend>댓글작성</legend>

                    <textarea title="댓글 입력"></textarea>
                    <span class="btn_area">
                        <button type="submit" class="big type3 btn_submit">등록</button>
                    </span>
                  </fieldset>
              </form>

            </div>
          </div>

          <ul class="reply_list">
            <!-- 반복영역 // -->
            <li>
              <span class="name">kl***</span>
              <time class="date">2015.12.01</time>
              <p>댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이
                댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.<span class="btn_area"><a href="#" class="small type1 btn_del">삭제</a></span></p>
            </li>
            <!-- // 반복영역 -->

            <li>
              <span class="name">kl***</span>
              <time class="date">2015.12.01</time>
              <p>댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.댓글이
                댓글이 보여집니다.댓글이 보여집니다.댓글이 보여집니다.</p>
            </li>
          </ul>

          <div class="paging">
    				<a href="#" class="prev">이전</a>
    				<span class="num">
    					<a href="#" class="on"><strong>1</strong></a>
    					<a href="#">2</a>
    					<a href="#">3</a>
    				</span>
    				<a href="#" class="next">다음</a>
    			</div>
          <!-- // 댓글영역 -->

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
