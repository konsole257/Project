<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="회원가입";
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
		<div class="join step2">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/join_step1.jsp"><strong>회원가입</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회원가입</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 회원이 되시면 다양한 서비스를 이용할 수 있습니다.</p>

					<!-- -->
					<div class="join_path">
						<strong class="hide">회원가입 진행 위치</strong>

						<ol>
							<li class="step1 ">약관동의</li>
							<li class="step2 on"><strong>회원정보 입력</strong></li>
							<li class="step3 ">가입 완료</li>
						</ol>
					</div>

					<div class="join_form">
						<form name="form">
							<fieldset>
								<legend>회원가입</legend>

								<table>
									<caption>회원가입 양식</caption>

									<colgroup>
										<col style="width:150px;"/>
										<col style="width:930px;"/>
									</colgroup>
									<tbody>
										<tr class="u_id">
											<th scope="row">아이디</th>
											<td>
												<div>
													<input type="text" title="아이디 입력" maxlength="20" id="u_id" />
													<span class="btn_area"><button type="button" class="small type3 btn_overlap">중복확인</button></span>
													<strong class="check" id="u_id_check"></strong>
												</div>
												<strong class="caution">* 6자 이상 20자 이하</strong>
											</td>
										</tr>

										<tr class="u_pw">
											<th scope="row">비밀번호</th>
											<td>
												<div>
													<input type="password" maxlength="15" id="u_pw1" />
													<strong class="check" id="u_pw1_check"></strong>
												</div>
												<strong class="caution">* 비밀번호는 10자이상 영문대/소문자, 숫자, 특수문자 중 2가지 조합 해 주세요.</strong>
											</td>
										</tr>

										<tr class="u_pw">
											<th scope="row">비밀번호 확인</th>
											<td>
												<input type="password" maxlength="15" id="u_pw2" />
												<strong class="check" id="u_pw2_check"></strong>
											</td>
										</tr>

										<tr class="u_name">
											<th scope="row">이름</th>
											<td>
													<input type="text" id="u_name" />
													<input type="checkbox" id="over" /><label for="over">14세 이상입니다 (필수)</label>
													<strong class="check" id="u_name_check"></strong>
											</td>
										</tr>

										<tr class="u_hp">
											<th scope="row">휴대폰</th>
											<td>
												<span class="input_wrap"><input type="text" title="휴대폰 앞 자리" readonly value="010" /></span>
												<span class="input_wrap"><input type="text" title="휴대폰 중간 자리" readonly value="1234" /></span>
												<span class="input_wrap"><input type="text" title="휴대폰 뒷 자리" readonly value="9876" /></span>
											</td>
										</tr>

										<tr class="u_mail">
											<th scope="row">이메일</th>
											<td>
												<span class="input_wrap">
													<input type="text" title="이메일 아이디 입력" id="u_mail1" data-type="mail" />
												</span>
												<span class="input_wrap">
													<input type="text" title="이메일 주소 입력"id="u_mail2" data-type="mail" />
												</span>

												<select title="이메일 선택" data-fn="mailSelect">
													<option value="" >직접입력</option>
													<option value="1" >1</option>
													<option value="2" >2</option>
												</select>
												<strong class="check" id="u_mail1_check"></strong>
												<strong class="check" id="u_mail2_check"></strong>
											</td>
										</tr>

										<tr class="u_pr">
											<th scope="row">광고성 정보 <br />수신여부<span>(선택)</span></th>
											<td>
												<input type="checkbox" id="sms" /><label for="sms">SMS 수신</label>
												<input type="checkbox" id="mail" /><label for="mail">E-mail 수신</label>
											</td>
										</tr>
									</tbody>
								</table>

								<div class="btn_area">
									<button type="submit" class="big type1">가입</button>
									<button type="reset" class="big type2">취소</button>
								</div>
							</fieldset>
						</form>
					</div>

					<script>
					$('.btn_overlap').click(function(){
						function validationPass() {
							if ( $('#u_id').val().length < 6 ) {
								$('#u_id_check').html('아이디를<br />확인해주세요.');
								$('#u_id').removeAttr('data-overlap');
							} else {
								//$('#u_id_check').html('이미 사용중인<br />아이디 입니다.');$('#u_id').val('').focus();$('#u_id').removeAttr('data-overlap');
								$('#u_id_check').html('사용 가능한<br />아이디 입니다.');$('#u_id').attr({'data-overlap':'pass'});
							}
						};

						formValidation(
							'innerHTML', [
								['#u_id', '아이디를<br/>입력해주세요.']
						], validationPass );
					});

					$('#u_id').keyup(function(){
						$('#u_id').removeAttr('data-overlap');
					});

					$('input').blur(function(){
						$('.check').html('');
					});

					$('form').submit(function(e){
						e.preventDefault();

						var patternEng = /[a-z]/i;
						var patternNum = /\d/;
						var patternSpe = /\W/;
						var engCheck = patternEng.test($('#u_pw1').val());
						var numCheck = patternNum.test($('#u_pw1').val());
						var speCheck = patternSpe.test($('#u_pw1').val());

						function validationPass() {
							if ( $('#u_id').attr('data-overlap') != 'pass' ) {
								$('#u_id_check').html('아이디를<br />확인해주세요.');

							} else if ( $('#u_pw1').val().length >= 10 && !engCheck && !numCheck || !engCheck && !speCheck || !numCheck && !speCheck ) {
								$('#u_pw1_check').html('비밀번호를 다시 입력해주세요.');

							} else if ( $('#u_pw1').val().length < 10 ) {
								$('#u_pw1_check').html('비밀번호를 다시 입력해주세요.');

							} else if ( $('#u_pw1').val() != $('#u_pw2').val() ) {
								$('#u_pw2_check').html('비밀번호를 다시 입력해주세요.');

							} else {
								document.form.submit();
							}
						};

						formValidation(
							'innerHTML', [
								['#u_id', '아이디를<br />확인해해주세요.'],
								['#u_name', '이름을 입력해주세요.'],
								['#u_pw1', '비밀번호를 입력해주세요.'],
								['#u_pw2', '비밀번호를 입력해주세요.'],
								['#u_mail1', '이메일을 입력해주세요.'],
								['#u_mail2', '이메일을 입력해주세요.']
						], validationPass );
					});
					</script>
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
