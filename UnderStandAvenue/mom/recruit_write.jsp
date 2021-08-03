<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="mom";
	String path3="about";
	String path4="recruit";
	String path1tit="STAND";
	String path2tit="MOM STAND";
	String path3tit="ABOUT";
	String path4tit="채용안내";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mom">

		<div class="recruit write">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mom.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/mom/about.jsp">MOM STAND</a>
						<a href="/mom/about.jsp">About</a>
						<a href="/mom/recruit.jsp">채용안내</a>
						<a href="/mom/recruit_write.jsp"><strong>입사지원</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">입사지원</h2>
					<p class="con_tit_txt">꿈과 열정을 갖고 미래를 꿈꾸는 외식인재를 기다립니다.</p>

          <!-- -->
          <form>
            <fieldset>
              <legend>입사지원</legend>

              <table>
                <caption>입사지원 양식</caption>

                <colgroup>
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                </colgroup>

                <tbody>
                  <tr>
                    <th scope="row">입사전형<small>Position available</small></th>
                    <td colspan="3">
                      <select title="입사전형 선택" id="u_available">
                        <option>선택 </option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">모집부분<small>Recruitment section</small></th>
                    <td>
                      <select title="모집부분 선택" id="u_recruitment">
                        <option>선택 </option>
                      </select>
                    </td>

                    <th scope="row">희망업무<small>Position applying for</small></th>
                    <td>
                      <select title="희망업무 선택" id="u_applying">
                        <option>선택 </option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">이름<small>Name</small></th>
                    <td><input type="text" title="이름 입력" id="u_name" /></td>

                    <th scope="row">연락처<small>Cell number</small></th>
                    <td>
                      <input type="text" title="연락처 앞자리 입력"  id="u_hp1" data-type="onlyNumber" />
                      <span class="input_wrap hp"><input type="text" title="연락처 중간자리 입력" id="u_hp2" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" /></span>
                      <span class="input_wrap hp"><input type="text" title="연락처 뒷자리 입력" id="u_hp3" maxlength="4" data-fn="nextFocus" data-type="onlyNumber"/></span>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">이메일<small>Email</small></th>
                    <td colspan="3">
                      <input type="text" title="이메일 주소 입력" id="u_mail1" data-type="mail" />
                      <span class="input_wrap mail"><input type="text" title="이메일 주소 입력" id="u_mail2" data-type="mail" /></span>
                      <select title="이메일 주소 선택" id="u_mail3">
                        <option>선택</option>
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">파일 첨부<small>Files to upload</small></th>
                    <td colspan="3">
                      <input type="text" id="fileName" class="file_name" readonly="readonly" title="찾아보기" />
											<div class="file_button_wrap">
												<input type="button" value="찾아보기" class="file_button" title="찾아보기" />
												<input type="file" class="file_hidden" onchange="document.getElementById('fileName').value = this.value" title="찾아보기" />
											</div>
                      <strong class="caution">다운로드 받으신 자사 양식과 준비하신 서류(ex. 자격증 사본 등) 을 파일로 첨부해 주세요.</strong>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">내용<small>Essays</small></th>
                    <td colspan="3">
                      <textarea title="내용 입력" id="u_txt"></textarea>
                    </td>
                  </tr>
                </tbody>
              </table>

              <div class="btn_area">
                <strong class="caution">허위 사실이 발견될 경우 채용이 취소될 수 있습니다.</strong>

                <button type="button" class="midium type4 btn_bbs_cancel">취소</button>
                <button type="submit" class="midium type1 btn_bbs_submit">지원하기</button>
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
