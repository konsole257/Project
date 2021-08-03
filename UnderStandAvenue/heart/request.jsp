<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="request";
	String path4="request";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="예약/신청하기";
	String path4tit="프로그램 신청";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

	<script>
function ajaxAdd(val) {
		$.ajax({
				url : "/heart/request.jsp",

				success : function(data) {
					$('#ajaxCateSpan').empty();
					$('#ajaxCateSpan').append('<select id="u_program2" class="new"><option>'+val+'</option></select>');
					select.init($('#ajaxCateSpan select'));
				}
		});
	}

	function ajaxAdd2() {
			$.ajax({
					url : "/heart/request.jsp",

					success : function(data) {
						$('#ajaxCateSpan').empty();
						$('#ajaxCateSpan').append('<select id="u_program2" class=""><option>1231231</option></select>');
						select.init($('#ajaxCateSpan select'));
					}
			});
		}

	$(document).ready(function(){
		ajaxAdd2();
	});


	</script>

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="heart">

		<div class="request">
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
						<a href="/heart/guide.jsp">예약/신청하기</a>
						<a href="/heart/request.jsp"><strong>프로그램 신청</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">프로그램 신청</h2>

					<p class="con_tit_txt">일대일 상담으로 가장 알맞은 프로그램을 안내해드립니다.</p>

				  <!-- -->
          <form>
            <fieldset>
              <legend>프로그램 신청</legend>

              <table>
                <caption>프로그램 신청 양식</caption>

                <colgroup>
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                  <col style="width:150px;" />
                  <col style="width:300px;" />
                </colgroup>

                <tr>
                  <th scope="row">프로그램</th>
                  <td colspan="3" class="program">
                    <select title="프로그램 선택" id="u_program1" onchange="ajaxAdd(this.value);">
                      <option>선택</option>
                      <option value="111">추가됨1</option>
											<option value="222">추가됨2</option>
                    </select>

										<span id="ajaxCateSpan"></span>

                    <!--<input type="text" title="프로그램 입력" id="u_program2" />-->
                  </td>
                </tr>


                <tr>
                  <th scope="row">제목</th>
                  <td colspan="3">
                    <input type="text" title="제목 입력" id="u_subjext" data-blankCancel="true"/>
                  </td>
                </tr>

                <tr>
                  <th scope="row">신청자이름</th>
                  <td><span id="u_name">이지연</span></td>

                  <th scope="row">휴대폰</th>
                  <td>
                    <select title="휴대폰 앞자리 선택" id="u_hp1">
                      <option>선택</option>
                      <option>1</option>
                    </select>

                    <span class="input_wrap hp"><input type="text" title="휴대폰 중간자리 입력" id="u_hp2" /></span>

                    <span class="input_wrap hp"><input type="text" title="휴대폰 뒷자리 입력" id="u_hp3" /></span>
                  </td>
                </tr>

                <tr>
                  <th scope="row">이메일</th>
                  <td colspan="3">
                    <input type="text" title="이메일 주소 입력" id="u_mail1" />

                    <span class="input_wrap mail"><input type="text" title="이메일 주소 입력" id="u_mail2" /></span>

                    <select title="이메일 주소 선택" id="u_mail3">
                      <option>선택</option>
                      <option>1</option>
                    </select>
                  </td>
                </tr>

                <tr>
                  <th scope="row">희망시간</th>
                  <td colspan="3">
										<article class="calendar_area" data-fn="calendar">
		                  <label for="u_date1" class="btn_calendar">달력보기</label>
		                  <div class="calendar calendar1"></div>
		                </article>
                    <input type="text" title="" id="u_date1" readonly />

                    <select title="" id="u_date2">
                      <option>선택</option>
                      <option>1</option>
                    </select>
                    <span class="u_date">시</span>

                    <select title="" id="u_date3">
                      <option>선택</option>
                      <option>1</option>
                    </select>
                    <span class="u_date">분</span>
                </td>
                </tr>

                <tr>
                  <th scope="row">참여자이름</th>
                  <td>
                    <input type="text" title="" id="u_name" />
                    <strong class="caution">* 참여자가 여러명인 경우 대표자 한 명의 이름만 적으세요.</strong>
                  </td>

                  <th scope="row">참여인원</th>
                  <td>
                    <input type="text" title="" id="u_peaple" />
										<strong class="caution">*숫자로만 기입해 주세요.</strong>
                  </td>
                </tr>

                <tr>
                  <th scope="row">그룹형태</th>
                  <td>
                    <input type="radio" name="gender" id="u_gender1" />
                    <label for="u_gender1">남</label>

                    <input type="radio" name="gender" id="u_gender2" />
                    <label for="u_gender2">여</label>

                    <input type="radio" name="gender" id="u_gender3" />
                    <label for="u_gender3">혼성</label>
                  </td>

                  <th scope="row">연령</th>
                  <td>
                    <input type="text" title="" id="u_age" />
                    <strong class="caution">* 참여자가 여러명인 경우 대략적인 연령대를 적으세요.</strong>
                  </td>
                </tr>

                <tr>
                  <th scope="row">내용</th>
                  <td colspan="3">
                    <textarea title="" id="u_txt"></textarea>
                  </td>
                </tr>
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
