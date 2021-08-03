<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="contest";
	String path4="contest";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="공모전 신청";
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
	<main id="wrap" class="open">
		<div class="contest write">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_open.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/open/about.jsp">OPEN STAND</a>
						<a href="/open/contest_write.jsp"><strong>공모전 신청 작성</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">OPEN STAND</h2>
					<p class="con_tit_txt">세상을 밝힐 아이디어를 기다립니다.</p>

          <!-- -->
          <form>
            <fieldset>
              <legend>공모전 신청</legend>

              <table>
    						<caption>공모전 신청 양식</caption>

    						<colgroup>
    							<col style="width:150px;" />
    							<col style="width:300px" />
    							<col style="width:150px;" />
                  <col style="width:300px;" />
    						</colgroup>

    						<body>
    							<tr>
                    <th scope="col">참가팀명</th>
                    <td colspan="3"><input type="text" title="참가팀명 입력" id="u_team" /></td>
    							</tr>

                  <tr>
                    <th scope="col">대표자명</th>
                    <td><input type="text" title="대표자명 입력" id="u_name" /></td>

                    <th scope="col">휴대폰</th>
                    <td>
                      <select title="휴대폰 앞자리 선택" id="u_hp1">
  											<option value="010" >010</option>
  											<option value="1" >1</option>
  											<option value="2" >2</option>
  										</select>
  										<span class="input_wrap hp">
  											<input type="text" title="휴대폰 중간자리 입력" id="u_hp2" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
  										</span>
  										<span class="input_wrap hp">
  											<input type="text" title="휴대폰 뒷자리 입력" id="u_hp3" maxlength="4" data-type="onlyNumber" />
  										</span>
                    </td>
    							</tr>

                  <tr>
                    <th scope="col">이메일</th>
                    <td colspan="3">
  										<input type="text" title="이메일 주소 입력" id="u_mail1" maxlength="4" data-fn="nextFocus" />

  										<span class="input_wrap mail">
  											<input type="text" title="이메일 주소 입력" id="u_mail2" maxlength="4" />
  										</span>
                      <select title="이메일 주소 선택" id="u_mail3">
  											<option value="" >직접입력</option>
  											<option value="1" >1</option>
  											<option value="2" >2</option>
  										</select>
                    </td>
    							</tr>

                  <tr>
                    <th scope="col">공간 사용 신청기간</th>
                    <td colspan="3">
											<input type="text" title="" id="u_date1" readonly />
											<article class="calendar_area" data-fn="calendar">
			                  <label for="u_date1" class="btn_calendar">달력보기</label>
			                  <div class="calendar calendar1"></div>
			                </article>

											<span class="input_wrap date"><input type="text" title="" id="u_date2" readonly /></span>
											<article class="calendar_area" data-fn="calendar">
			                  <label for="u_date2" class="btn_calendar">달력보기</label>
			                  <div class="calendar calendar2"></div>
			                </article>

                    </td>
    							</tr>

                  <tr>
                    <th scope="col">조직형태</th>
                    <td><input type="text" title="조직형태 입력" id="u_group" /></td>

                    <th scope="col">사업아이템</th>
                    <td><input type="text" title="사업아이템 입력" id="u_item" /></td>
    							</tr>

                  <tr>
                    <th scope="col">파일 첨부</th>
                    <td colspan="3">
											<input title="찾아보기" class="file_name" id="fileName" type="text" readonly="readonly">
											<div class="file_button_wrap">
												<input title="찾아보기" class="file_button" type="button" value="찾아보기">
												<input title="찾아보기" class="file_hidden" onchange="document.getElementById('fileName').value = this.value" type="file">
											</div>
											<strong class="caution">파일은 최대 1개 용량은 5M까지 등록 가능합니다.</strong>
										</td>
    							</tr>

                  <tr>
                    <th scope="col">사업내용</th>
                    <td colspan="3">
                      <textarea title="사업내용 입력" id="u_txt"></textarea>
                    </td>
    							</tr>
    						</body>
    					</table>

              <div class="btn_area">
                <button type="button" class="midium type4 btn_bbs_cancel">취소</button>
                <button type="submit" class="midium type1 btn_bbs_submit">신청하기</button>
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
