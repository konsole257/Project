<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="customer";
	String path2="qna";
	String path3="";
	String path4="";
	String path1tit="고객센터";
	String path2tit="1:1 문의하기";
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
	<main id="wrap" class="customer">
		<div class="qna">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_customer.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/customer/notice.jsp">고객센터</a>
						<a href="/customer/faq.jsp"><strong>1:1 문의하기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">FAQ</h2>

					<p class="con_tit_txt">궁금하거나 불편한 사항에 대해 문의해주세요.</p>

					<!-- -->
					<form name="form">
						<fieldset>
							<legend>1:1 문의</legend>

							<table>
								<caption>1:1 문의 양식</caption>

								<colgroup>
									<col style="width:150px;"/>
									<col style="width:300px;"/>
									<col style="width:150px;"/>
									<col style="width:300px;"/>
								</colgroup>
								<tbody>
									<tr class="u_category">
										<th scope="row">문의 구분</th>
										<td colspan="3">
											<!-- 2018.02.02 : 수정 // -->
											<select title="문의 구분 선택" id="u_category">
												<option value="">선택</option>
												<option value="shop"><li>UNDER STAND AVENUE</li></option>
												<option value="dodream">DO DREAM</option>
												<option value="order">WALKSHOP</option>
												<option value="order">교환/반품</option>
												<option value="etc">기타</option>
											</select>
											<!-- // 2018.02.02 : 수정 -->

											<span class="u_order_number_wrap">
												<select title="주문번호 선택" id="u_order_number">
													<option value="">주문번호</option>
													<option value="1234142">1234142</option>
													<option value="12414">12414</option>
												</select>
											</span>
										</td>
									</tr>
									<tr class="u_subject">
										<th>제목</th>
										<td colspan="3"><input type="text" title="제목 입력" id="u_subject" data-blankCancel="true" /></td>
									</tr>
									<tr class="u_hp">
										<th scope="row">이름</th>
										<td>홍길동</td>

										<th scope="row">연락처</th>
										<td>
											<span class="input_wrap"><input type="text" title="연락처 앞 자리" id="u_hp1" value="010" data-type="onlyNumber" /></span>
											<span class="input_wrap"><input type="text" title="연락처 중간 자리" id="u_hp2" value="0000" data-type="onlyNumber" /></span>
											<span class="input_wrap"><input type="text" title="연락처 뒷 자리" id="u_hp3" value="0000" data-type="onlyNumber" /></span>
										</td>
									</tr>
									<tr class="u_mail">
										<th>이메일</th>
										<td colspan="3">
											<span class="input_wrap">
												<input type="text" title="이메일 아이디 입력" value="understand" id="u_mail1" data-type="mail" />
											</span>
											<span class="input_wrap">
												<input type="text" title="이메일 주소 입력" value="avenue.com" id="u_mail2" data-type="mail" />
											</span>

											<select title="이메일 선택" id="u_mail" data-fn="mailSelect">
												<option value="" >직접입력</option>
												<option value="1" >1</option>
												<option value="2" >2</option>
											</select>
										</td>
									</tr>
									<tr class="u_answer">
										<th scope="row">답변 알림 방법</th>
										<td colspan="3">
											<input type="radio" name="answer" id="answer_sms" /><label for="answer_sms">SMS</label>
											<input type="radio" name="answer" id="answer_mail" /><label for="answer_mail">E-mail</label>
										</td>
									</tr>
									<tr class="u_file">
										<th>파일첨부</th>
										<td colspan="3">
											<input type="text" id="fileName" class="file_name" readonly="readonly" title="찾아보기" />
											<div class="file_button_wrap">
												<input type="button" value="찾아보기" class="file_button" title="찾아보기" />
												<input type="file" class="file_hidden" onchange="document.getElementById('fileName').value = this.value" title="찾아보기" />
											</div>
											<strong class="caution">* 파일은 최대 1개 용량은 5M까지 등록 가능합니다.</strong>
										</td>
									</tr>
									<tr class="u_txt">
										<th>내용</th>
										<td colspan="3">
											<textarea title="내용 입력" id="u_txt"></textarea>
											<strong class="caution">* 반품 및 교환접수 상태 문의는 택배사 및 송장번호를 입력해 주시기 바랍니다. </strong>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="btn_area">
								<button type="reset" class="midium type4 btn_bbs_cancel">취소</button>
								<button type="submit" class="midium type1 btn_bbs_submit">문의하기</button>
							</div>
						</fieldset>
					</form>

					<script>
					$(window).load(function(){
						if ( $('#u_category').val() == 'order' ) {
							$('.u_order_number_wrap').css({'visibility':'visible'});
						} else {
							$('.u_order_number_wrap').css({'visibility':'hidden'});
						}
					});

					$('#u_category').change(function(){
						if ( $(this).val() == 'order' ) {
							$('.u_order_number_wrap').css({'visibility':'visible'});
						} else {
							$('.u_order_number_wrap').css({'visibility':'hidden'});
						}
					});

					$('form').submit(function(e){
						e.preventDefault();

						function validationPass() {
							if ( $('.u_answer [type=checkbox]:checked').length < 1 ) {
								alert('답변 알림방법을 선택해주세요.');
							} else if ( $('#u_order_number').parent().is(':visible') && $('#u_order_number').val() == '' ) {
								alert('주문번호를 선택해주세요.');
							} else {
								document.form.submit();
							}
						};

						formValidation(
							'alert', [
								['#u_category', '문의구분을 선택해주세요.'],
								['#u_subject', '제목을 입력해주세요.'],
								['#u_hp2', '연락처를 입력해주세요.'],
								['#u_hp3', '연락처를 입력해주세요.'],
								['#u_mail1', '이메일을 입력해주세요.'],
								['#u_mail2', '이메일을 입력해주세요.'],
								['#u_txt', '내용을 입력해주세요.']
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
