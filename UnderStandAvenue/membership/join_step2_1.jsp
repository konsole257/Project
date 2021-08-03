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

					<div class="authentication">
						<p>휴대폰번호와 인증번호를 입력해주세요.</p>

						<div class="authentication_form">
							<form name="form">
								<fieldset>
									<legend>본인인증</legend>

									<div class="hp">
										<select title="휴대폰 앞자리 선택">
											<option value="010" >010</option>
											<option value="1" >1</option>
											<option value="2" >2</option>
										</select>
										<span class="input_wrap">
											<input type="text" title="휴대폰 중간자리 입력" id="u_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumberA" />
										</span>
										<span class="input_wrap">
											<input type="text" title="휴대폰 뒷자리 입력" id="u_hp2" maxlength="4" data-type="onlyNumberA" />
										</span>

										<span class="btn_area"><button type="button" class="small type3" id="hp_get">인증번호 받기</button></span>
									</div>

									<div class="number">
										<div class="input_wrap" data-ui="placeholder"><input id="u_number" type="text" maxlength="6" data-type="onlyNumberA"><label for="u_number">인증번호 숫자 6자리</label></div>
										<span class="btn_area"><button type="submit" class="small type1">확인</button></span>
									</div>

								</fieldset>
							</form>

							<p class="text">회원가입은 만 14세 이상의 경우에만 가능합니다.</p>
							<p class="text">메시지 수신 가능한 휴대폰으로 인증번호를 받으실 수 있습니다.</p>
						</div>
					</div>

					<script>
					var onlyNumber = {
						init : function(){
							this.numberCheck = false;
							this.obj = $('[data-type=onlyNumberA]');
							this.pattern = /\D/;
							this.tempVal;

							this.input(this.numberCheck, this.obj, this.pattern, this.tempVal);
						}, input : function(numberCheck, obj, pattern, tempVal){

							obj.keyup(function(){
								numberCheck = pattern.test($(this).val());
								if ( numberCheck ) {
									alert('숫자만 입력 가능합니다.');
									if ( pattern.test($(this).val()[0]) ) {
										$(this).val('').focus();
									} else {
										$(this).val(tempVal).focus();
									}
								}
								tempVal = $(this).val();
							});
						}
					};onlyNumber.init();//onlyNumber



					$('#hp_get').click(function(){
						function validationPass(){
							alert('인증번호가 발송되었습니다.');
						};

						formValidation(
							'alert', [
								['#u_hp1', '휴대폰 중간자리를 입력 해 주세요.'],
								['#u_hp2', '휴대폰 뒷자리 입력 해 주세요.']
							], validationPass );
					});

					$('form').submit(function(e){
						e.preventDefault();

						function validationPass(){
							document.form.submit();
						};

						formValidation(
							'alert', [
								['#u_number', '인증번호를 입력해 주세요']
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
