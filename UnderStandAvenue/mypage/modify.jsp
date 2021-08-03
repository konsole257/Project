<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="membership";
	String path3="modify";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="개인정보 변경";
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
		<div class="modify">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
            <a href="/">MY PAGE</a>
            <a href="/">회원정보</a>
						<a href="/membership/join_step1.jsp"><strong>개인정보 변경</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회원가입</h2>

					<p class="con_tit_txt">개인정보를 변경할 수 있습니다.</p>

					<!-- -->
					<form>
						<fieldset>
							<legend>개인정보 변경</legend>

							<table>
								<caption>개인정보 변경 양식</caption>

								<colgroup>
									<col style="width:150px;"/>
									<col style="width:300px;"/>
                  <col style="width:150px;"/>
									<col style="width:300px;"/>
								</colgroup>
								<tbody>
									<tr class="u_id">
										<th scope="row">아이디</th>
										<td>adsf1234</td>

                    <th scope="row">이름</th>
										<td>김세영</td>
									</tr>

									<tr class="u_pw">
										<th scope="row">현재 비밀번호</th>
										<td colspan="3">
												<input type="password" maxlength="15" id="u_pw1" />
										</td>
									</tr>

                  <tr class="u_mail">
										<th scope="row">이메일</th>
										<td colspan="3">
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

                      <span class="btn_area"><button type="button" class="small type3">중복확인</button></span>

                      <strong class="check">이미 가입된 이메일입니다. 다른 이메일로 수정 해 주세요.</strong>
										</td>
									</tr>

									<tr class="u_hp">
										<th scope="row">휴대폰</th>
										<!-- 2016-03-15 : 추가 // -->
										<td colspan="3">
											010 - 1111 - 2222
											<span class="btn_area">
												<a href="#hp" class="small type2 btn_hp" data-fn="popupBtnOpen">휴대폰번호 변경</a>
											</span>
										</td>
										<!-- // 2016-03-15 : 추가 -->
									</tr>

									<tr class="u_pr">
										<th scope="row">광고성 정보 <br />수신여부<span>(선택)</span></th>
										<td colspan="3">
											<input type="checkbox" id="sms" /><label for="sms">SMS 수신</label>
											<input type="checkbox" id="mail" /><label for="mail">E-mail 수신</label>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="btn_area">
                <a href="#password" class="midium type2 btn_password" data-fn="popupBtnOpen">비밀번호 변경</a>
								<button type="button" class="midium type1 btn_ok">확인</button>
								<button type="reset" class="midium type4 btn_bbs_cancel">취소</button>
							</div>
						</fieldset>
					</form>

          <!-- 비밀번호 변경 팝업 // -->
					<div id="password" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">비밀번호 변경</h2>

							<div class="popup_content">
								<strong class="caution">
									10자 이상 영문대/소문자, 숫자, 특수문자(! @ $ % ^ *) 중<br />
									2가지 조합 가능
								</strong>

								<form name="form">
									<fieldset>
										<legend>비밀번호 변경</legend>

										<label for="u_now_pw">현재 비밀번호</label>
										<input type="password" id="u_now_pw" />

										<label for="u_new_pw">새로운 비밀번호<strong class="check"></strong></label> <!-- class="true : 사용 가능, false : 사용 불가능" -->
										<input type="password" id="u_new_pw" maxlength="15" data-fn="ablePassword" />

										<label for="u_confirm_pw">새로운 비밀번호 확인<strong class="check"></strong></label> <!-- class="true : 일치, false : 불일치" -->
										<input type="password" id="u_confirm_pw" maxlength="15" data-fn="samePassword" />

										<div class="btn_area">
											<button type="button" class="midium type3">수정</button>
											<button type="button" class="midium type2" data-fn="popupBtnClose">취소</button>
										</div>
									</fieldset>
								</form>

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 비밀번호 변경 팝업 -->

					<!-- 휴대폰번호 변경 팝업 2016-03-15 : 추가 // -->
					<div id="hp" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">휴대폰번호 변경</h2>

							<div class="popup_content">
								<form name="form">
									<fieldset>
										<legend>휴대폰변호 변경</legend>

										<h3>변경할 휴대폰번호</h3>

										<select title="휴대폰 앞자리 선택">
											<option value="010" >010</option>
											<option value="1" >1</option>
											<option value="2" >2</option>
										</select>
										<span class="input_wrap">
											<input type="text" title="휴대폰 중간자리 입력" id="u_hp1" maxlength="4" data-fn="nextFocus" data-type="onlyNumber" />
										</span>
										<span class="input_wrap">
											<input type="text" title="휴대폰 뒷자리 입력" id="u_hp2" maxlength="4" data-type="onlyNumber" />
										</span>

										<div class="number">
											<div class="input_wrap" data-ui="placeholder"><input id="u_number" type="text" maxlength="6" data-type="onlyNumber"><label for="u_number">인증번호 숫자 6자리</label></div>
											<span class="btn_area"><button type="button" class="small type4 btn_number">인증번호 받기</button></span>
										</div>

										<div class="btn_area">
											<button type="button" class="midium type3">수정</button>
											<button type="button" class="midium type2 btn_cancel" data-fn="popupBtnClose">취소</button>
										</div>
									</fieldset>
								</form>

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 휴대폰번호 변경 팝업 2016-03-15 : 추가 -->
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
