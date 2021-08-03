<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="customer";
	String path3="write";
	String path4="";
	String path1tit="MY PAGE";
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
	<main id="wrap" class="mypage">
		<div class="qna write">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/mypage/mypage.jsp">MY PAGE</a>
            <a href="/mypage/qna_list.jsp">고객센터</a>
						<a href="/mypage/qna_write.jsp"><strong>1:1문의하기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">1:1문의내역</h2>

					<p class="con_tit_txt">궁금하거나 불편한 사항에 대해 문의해주세요.</p>

					<!-- -->
          <div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>고객 문의가 많아 답변이 지연될 수 있는 점은 양해 바라며, 빠른 처리를 위해 노력하겠습니다.</p>
          </div>

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
											<select title="문의 구분 선택" id="u_category">
												<option value="">선택</option>
												<option value="youth">유스</option>
												<option value="heart">하트</option>
												<option value="mom">맘</option>
												<option value="art">아트</option>
												<option value="power">파워</option>
												<option value="sicial">소셜</option>
												<option value="open">오픈</option>
												<option value="shop">쇼핑몰</option>
												<option value="order">주문관련</option>
												<option value="under">언더스탠드에비뉴</option>
												<option value="etc">기타</option>
											</select>

											<select title="주문번호 선택" id="u_order_number">
												<option value="">주문번호</option>
												<option value="1234142">1234142</option>
												<option value="12414">12414</option>
											</select>
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
						$('#u_order_number').parent('[data-ui=select]').css({'visibility':'hidden'});
					});

					$('#u_category').change(function(){
						if ( $(this).val() == 'order' ) {
							$('#u_order_number').parent().css({'visibility':'visible'});
						} else {
							$('#u_order_number').parent().css({'visibility':'hidden'});
						}
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
