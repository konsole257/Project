<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="info";
	String path4="recruit";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="지원신청";
	String path4tit="지원하기";
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
		<div class="recruit">
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
						<a href="/youth/recruit.jsp"><strong>지원하기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">지원하기</h2>
					<p class="con_tit_txt">유스스탠드 커리큘럼지원을 기다립니다.</p>

					<!-- -->
					<form>
						<fieldset>
							<legend>커리큘럼지원</legend>

							<table>
								<caption>커리큘럼지원 양식</caption>

								<colgroup>
									<col style="width:150px;">
									<col style="width:300px;">
									<col style="width:150px;">
									<col style="width:300px;">
								</colgroup>

								<tbody>
									<tr>
										<th>커리큘럼</th>
										<td>
											<select id="u_category" title="커리큘럼 선택">
												<option>개임개발&middot;그래픽</option>
												<option>조경&middot;원예</option>
												<option>웹 편집출판&middot;디자인</option>
												<option>영상편집</option>
												<option>제과&middot;제빵</option>
												<option>바리스타</option>
												<option>가죽공예</option>
												<option>향 공예</option>
												<option>네일아트</option>
											</select>
										</td>
										<th>강좌명</th>
										<td>
											<select id="u_lecture" title="강좌 선택">
												<option>1</option>
												<option>2</option>
												<option>3</option>
											</select>
										</td>
									</tr>

									<tr>
										<th>신청자이름</th>
										<td>
											<input type="text" id="u_name" />
										</td>
										<th>휴대폰</th>
										<td>
											<select id="u_hp" title="휴대폰 앞자리 선택">
												<option>010</option>
												<option>2</option>
												<option>3</option>
											</select>
											<span class="input_wrap"><input type="text" id="u_hp1" title="휴대폰 중간자리 입력" maxlength="4" data-fn="nextFocus" data-type="onlyNumber"/></span>
											<span class="input_wrap"><input type="text" id="u_hp2" title="휴대폰 뒷자리 입력"  maxlength="4" data-type="onlyNumber" /></span>
										</td>
									</tr>

									<tr class="u_mail">
										<th>이메일</th>
										<td colspan="3">
											<span class="input_wrap"><input type="text" id="u_mail1" title="이메일 아이디 입력" data-type="mail" /></span>
											<span class="input_wrap"><input type="text" id="u_mail2" title="이메일 주소 입력" data-type="mail" /></span>
											<select id="u_mail" title="이메일 주소 선택" data-fn="mailSelect">
												<option value="">직접입력</option>
												<option value="1">1</option>
												<option value="2">2</option>
											</select>
										</td>
									</tr>

									<tr>
										<th>연락방법</th>
										<td colspan="3">
											<input type="radio" name="contact" id="tp" /><label for="tp">전화</label>
											<input type="radio" name="contact" id="mail" /><label for="mail">E-mail</label>
										</td>
									</tr>

									<tr>
										<th>성별</th>
										<td>
											<input type="radio" name="gender" id="men" /><label for="men">남</label>
											<input type="radio" name="gender" id="women" /><label for="women">여</label>
										</td>

										<th>연령</th>
										<td>
											<input type="text" id="u_age" title="연령 입력" />
										</td>
									</tr>

									<tr>
										<th>파일 첨부</th>
										<td colspan="3">
											<input title="찾아보기" class="file_name" id="fileName" type="text" readonly="readonly">
											<div class="file_button_wrap">
												<input title="찾아보기" class="file_button" type="button" value="찾아보기">
												<input title="찾아보기" class="file_hidden" onchange="document.getElementById('fileName').value = this.value" type="file">
											</div>
											<strong class="caution">* 파일은 최대 1개 용량은 5M까지 등록 가능합니다.</strong>
										</td>
									</tr>

									<tr>
										<th>내용</th>
										<td colspan="3">
											<textarea id="u_txt" title="내용입력"></textarea>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="btn_area">
								<button type="reset" class="midium type4 btn_bbs_cancel">취소</button>
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
