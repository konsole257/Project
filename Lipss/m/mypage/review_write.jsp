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
<div id="wrap" class="review_write">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle//-->
		<div id="subTitle2">
			<h2 class="tit">상품평 등록</h2>
			<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
		</div>
		<!-- //subtitle -->

		<div class="write_arena">
			<strong class="require">필수항목</strong>

			<form>
				<table>
					<caption>상품평 작성 양식</caption>

					<colgroup>
						<col style="width:101px;">
						<col style="">
					</colgroup>

					<tbody>
						<tr>
							<th class="require">별점</th>
							<td>
								<div class="grade_heart" title="4하트">
									<a href="javascript:void(0);" class="active"></a>
									<a href="javascript:void(0);" class="active"></a>
									<a href="javascript:void(0);" class="active"></a>
									<a href="javascript:void(0);" class="active"></a>
									<a href="javascript:void(0);"></a>
								</div>
							</td>
						</tr>
						<tr>
							<th class="require">품질</th>
							<td>
								<label><input type="radio" name="quality" class="rdo_type1" checked><span>만족</span></label>
								<label><input type="radio" name="quality" class="rdo_type1"><span>보통</span></label>
								<label><input type="radio" name="quality" class="rdo_type1"><span>불만</span></label>
							</td>
						</tr>
						<tr>
							<th class="require">배송</th>
							<td>
								<label><input type="radio" name="delivery" class="rdo_type1" checked><span>만족</span></label>
								<label><input type="radio" name="delivery" class="rdo_type1"><span>보통</span></label>
								<label><input type="radio" name="delivery" class="rdo_type1"><span>불만</span></label>
							</td>
						</tr>
						<tr>
							<th class="require">상품후기</th>
							<td>
								<textarea class="write_txt" title="내용 입력"></textarea>
							</td>
						</tr>
						<tr>
							<th>포토등록<br>(프리미엄)</th>
							<td>
								<div class="filebox preview-image">
									<input type="text" class="txt_type1 upload-name" placeholder="파일 선택" disabled="disabled">
									<label for="input-file">업로드</label>
									<input type="file" id="input-file" class="upload-hidden">
									<ul class="filetxt">
										<li>첨부 파일은 1개만 등록 가능합니다. (JPG,PNG,GIF파일)</li>
										<li>첨부파일은 최대 10M의 용량 제한이 있습니다.</li>
									</ul>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

				<div class="btn_area">
					<button type="submit" class="btn_purple">확인 <span>Ok</span></button>
					<button type="button" class="btn_cancel" onclick="fn.goback();">취소 <span>Cancel</span></button>
				</div>
			</form>
		</div>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>