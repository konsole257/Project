<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="아이디/비밀번호 찾기";
	String path2tit="";
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
	<main id="wrap" class="membership">
		<div class="inquiry">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/inquiry.jsp"><strong>아이디/ 비밀번호 찾기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">아이디/ 비밀번호 찾기</h2>

					<p class="con_tit_txt">회원가입 시 입력하신 정보로 아이디/비밀번호를 찾을 수 있습니다.</p>

					<!-- -->
					<div class="inquiry_area" data-ui="tab">
						<!-- 아이디찾기 // -->
						<section class="inquiry_id">
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#id_tab">아이디 찾기</a></h3>

							<div data-ui="tab_content" id="id_tab">
								<div class="inquiry_form">
									<form name="id_tab_form">
										<fieldset>
											<legend>아이디 찾기</legend>

											<input type="radio" id="id_hp" name="certification" checked /><label for="id_hp">회원정보에 등록한 <em>휴대폰으로 인증</em></label>
											<input type="radio" id="id_mail" name="certification" /><label for="id_mail">회원정보에 등록한 <em>이메일로 인증</em></label>

											<table>
												<caption>아이디 찾기 양식</caption>

												<colgroup>
													<col style="width:185px;"/>
													<col />
												</colgroup>

												<tbody>
													<!-- 이름 // -->
													<tr class="u_name">
														<th scope="row">이름</th>
														<td>
															<span class="input_wrap">
																<input type="text" title="이름 입력" id="id_tab_u_name" />
															</span>
														</td>
													</tr>
													<!-- // 이름 -->

													<!-- 휴대폰 // -->
													<tr class="u_hp">
														<th scope="row">휴대폰</th>
														<td>
															<select title="휴대폰 앞자리 선택">
																<option value="010" >010</option>
																<option value="1" >1</option>
																<option value="2" >2</option>
															</select>

															<span class="input_wrap">
																<input type="text" title="휴대폰 중간자리 입력" id="id_tab_u_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
															</span>
															<span class="input_wrap">
																<input type="text" title="휴대폰 뒷자리 입력" id="id_tab_u_hp2" maxlength="4" data-type="onlyNumber" />
															</span>
															<button type="button" class="btn_get" id="hp_get">인증번호 받기</button>
														</td>
													</tr>
													<!-- // 휴대폰 -->

													<!-- 이메일 // -->
													<tr class="u_mail">
														<th scope="row">이메일</th>
														<td>
															<span class="input_wrap">
																<input type="text" title="이메일 아이디 입력" id="id_tab_u_mail1" data-type="mail" />
															</span>
															<span class="input_wrap">
																<input type="text" title="이메일 주소 입력" id="id_tab_u_mail2" data-type="mail" />
															</span>

															<select title="이메일 선택" data-fn="mailSelect">
																<option value="" >직접입력</option>
																<option value="1" >1</option>
																<option value="2" >2</option>
															</select>

															<button type="button" class="btn_get" id="mail_get">인증번호 받기</button>
														</td>
													</tr>
													<!-- // 이메일 -->

													<!-- 인증번호 // -->
													<tr class="u_number">
														<th scope="row">인증번호</th>
														<td>
															<div class="input_wrap" data-ui="placeholder">
																<input type="text" id="id_tab_u_number" maxlength="6" data-type="onlyNumber" />
																<label for="id_tab_u_number">인증번호 숫자 6자리</label>
															</div>
														</td>
													</tr>
													<!-- // 인증번호 -->
												</tbody>
											</table>

											<div class="btn_area">
												<p>아직 언더스탠드에비뉴 회원이 아니신가요?<a href="/membership/join_step1.jsp" class="small type4">회원가입</a></p>
												<button type="submit" class="midium type1">확인</button>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
						</section>
						<!--// 아이디찾기 -->

						<!-- 비밀번호찾기 // -->
						<section class="inquiry_pw">
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#pw_tab">비밀번호 찾기</a></h3>

							<div data-ui="tab_content" id="pw_tab">
								<div class="inquiry_form">
									<form name="pw_tab_form">
										<fieldset>
											<legend>비밀번호 찾기</legend>

											<table>
												<caption>비밀번호 찾기 양식</caption>

												<colgroup>
													<col style="width:185px;"/>
													<col />
												</colgroup>

												<tbody>
													<!-- 아이디 // -->
													<tr class="u_name">
														<th scope="row">아이디</th>
														<td>
															<span class="input_wrap">
																<input type="text" title="아이디 입력" id="pw_tab_u_id" />
															</span>
														</td>
													</tr>
													<!-- // 아이디 -->

													<!-- 이름 // -->
													<tr class="u_name">
														<th scope="row">이름</th>
														<td>
															<span class="input_wrap">
																<input type="text" title="이름 입력" id="pw_tab_u_name" />
															</span>
														</td>
													</tr>
													<!-- // 이름 -->

													<!-- 휴대폰 // -->
													<tr class="u_hp">
														<th scope="row">휴대폰</th>
														<td>
															<select title="휴대폰 앞자리 선택">
																<option value="010" >010</option>
																<option value="1" >1</option>
																<option value="2" >2</option>
															</select>

															<span class="input_wrap">
																<input type="text" title="휴대폰 중간자리 입력" id="pw_tab_u_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
															</span>
															<span class="input_wrap">
																<input type="text" title="휴대폰 뒷자리 입력" id="pw_tab_u_hp2" maxlength="4" data-type="onlyNumber" />
															</span>
														</td>
													</tr>
													<!-- // 휴대폰 -->

													<!-- 이메일 // -->
													<tr class="u_mail">
														<th scope="row">이메일</th>
														<td>
															<span class="input_wrap">
																<input type="text" title="이메일 아이디 입력" id="pw_tab_u_mail1" data-type="mail" />
															</span>
															<span class="input_wrap">
																<input type="text" title="이메일 주소 입력" id="pw_tab_u_mail2" data-type="mail" />
															</span>

															<select title="이메일 선택" data-fn="mailSelect">
																<option value="" >직접입력</option>
																<option value="1" >1</option>
																<option value="2" >2</option>
															</select>
														</td>
													</tr>
													<!-- // 이메일 -->
												</tbody>
											</table>

											<div class="btn_area">
												<p>
													비밀번호를 받을 방법을 선택하세요.
													<input type="radio" id="pw_hp" name="certification" /><label for="pw_hp">휴대폰</label>
													<input type="radio" id="pw_mail" name="certification" /><label for="pw_mail">이메일</label>
												</p>
												<button type="submit" class="midium type1">확인</button>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
						</section>
						<!-- // 비밀번호찾기 -->
						<script>
						location.href.indexOf('?inquiryPW') != -1 ? $('.inquiry_pw').addClass('on') : $('.inquiry_id').addClass('on') ;
						$('#id_tab input[name=certification]').click(function(){
							if ( $('#id_hp').is(':checked') ) {
								$('#id_tab .u_hp').css({ 'visibility':'visible', 'position':'inherit' });
								$('#id_tab .u_mail').css({ 'visibility':'hidden', 'position':'absolute' });
							} else if ( $('#id_mail').is(':checked') ) {
								$('#id_tab .u_hp').css({ 'visibility':'hidden', 'position':'absolute' });
								$('#id_tab .u_mail').css({ 'visibility':'visible', 'position':'inherit' });
							}
						});


						$('#hp_get').click(function(){ //연락처로 인증번호 받기
							function submit(){
								alert('인증번호가 발송되었습니다.');
							};

							formValidation(
								'alert', [
									['#id_tab_u_hp1', '휴대폰 중간자리를 입력 해 주세요.'],
									['#id_tab_u_hp2', '휴대폰 뒷자리 입력 해 주세요.']
								], submit );
						});

						$('#mail_get').click(function(){ //메일로 인증번호 받기
							function submit(){
								alert('인증번호가 발송되었습니다.\n인증번호가 오지 않을 경우 스팸함을 확인해주세요.');
							};

							formValidation(
								'alert', [
									['#id_tab_u_mail1', '이메일 아이디를 입력 해 주세요.'],
									['#id_tab_u_mail2', '이메일 주소를 입력 해 주세요.']
								], submit );
						});

						$('#id_tab form').submit(function(e){ //아이디 찾기
							e.preventDefault();

							function submit(){
								document.id_tab_form.submit();
							};

							formValidation(
								'alert', [
									['#id_tab_u_name', '이름을 입력 해 주세요.'],
									['#id_tab_u_number', '인증번호를 입력 해 주세요.']
								], submit );
						});

						$('#pw_tab form').submit(function(e){
							e.preventDefault();

							function submit(){
								if ( !$('#pw_tab [name=certification]').is(':checked') ) {
									alert('비밀번호를 받을 방법을 선택하세요.');
									return false;
								} else {
									document.pw_tab_form.submit();
									return false;
								}
							};

							formValidation(
								'alert', [
									['#pw_tab_u_id', '아이디를 입력 해 주세요.'],
									['#pw_tab_u_name', '이름을 입력 해 주세요.'],
									['#pw_tab_u_hp1', '휴대폰 중간자리를 입력 해 주세요.'],
									['#pw_tab_u_hp2', '휴대폰 뒷자리 입력 해 주세요.'],
									['#pw_tab_u_mail1', '이메일 아이디를 입력 해 주세요.'],
									['#pw_tab_u_mail2', '이메일 주소를 입력 해 주세요.']
								], submit );
						});
						</script>
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
