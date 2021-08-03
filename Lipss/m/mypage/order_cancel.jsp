<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="mypage">
<div id="wrap" class="order_cancel">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle//-->
		<div id="subTitle2">
			<h2 class="tit">전체주문취소 신청</h2>
			<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
		</div>
		<!-- //subtitle -->

		<div class="cancel_area">
			<strong class="require">필수항목</strong>

			<table>
				<caption>전체주문취소 양식</caption>

				<colgroup>
					<col style="width:101px;">
					<col style="">
				</colgroup>

				<tbody>
					<tr>
						<th class="number require">주문번호</th>
						<td class="number">20188456156324851644</td>
					</tr>
					<tr>
						<th class="require">취소사유선택</th>
						<td>
							<div class="select email">
								<select title="취소사유 선택">
									<option>선택해주세요</option>
									<option>직접입력</option>
								</select>
								<input type="text" class="sel_txt" title="취소사유 직접 입력" placeholder="직접입력" />
							</div>
						</td>
					</tr>
					<tr>
						<th class="require">제목</th>
						<td><input type="text" title="휴대폰 번호 입력" class="inp_type1" /></td>
					</tr>
					<tr>
						<th class="require">내용</th>
						<td>
							<textarea title="내용 입력"></textarea>
						</td>
					</tr>
					<tr>
						<th class="price">환불예정금액</th>
						<td class="price">&#8361; 38,000</td>
					</tr>
					<tr>
						<th class="require">환불계좌</th>
						<td>
							<div class="select email">
								<select title="은행 선택">
									<option>은행 선택</option>
								</select>
							</div>
							<input type="text" title="계좌번호 입력" placeholder="계좌번호 (‘-’없이 입력)" pattern="[0-9]*" class="inp_type1 write_bank1" />
							<input type="text" title="예금주 입력" placeholder="예금주" class="inp_type1 write_bank2" />
						</td>
					</tr>
				</tbody>
			</table>

			<button type="button" class="btn_purple">확인<span>Ok</span></button>
		</div>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
