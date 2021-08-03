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
<div id="wrap" class="delivery">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">배송지관리</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="delivery_area">
			<div class="btn_area">
				<a href="#" class="btn_default">기본배송지 설정</a>

				<a href="#" class="btn_register">배송지등록</a>
			</div>

			<ul class="delivery_list">
				<!-- 반복영역 // -->
				<li>
					<label><input type="checkbox" class="chk_type2" checked><span>집 <span>(기본배송지)</span></span></label>
					<dl>
						<dt>수취인</dt>
						<dd>강유나</dd>

						<dt>연락처</dt>
						<dd>010-1234-5678</dd>

						<dt>주소</dt>
						<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
					</dl>
					<a href="#" class="btn_modify">수정</a>
					<button type="button" class="btn_del">삭제</button>
				</li>
				<!-- // 반복영역 -->

				<li>
					<label><input type="checkbox" class="chk_type2"><span>집 <span></span></span></label>
					<dl>
						<dt>수취인</dt>
						<dd>강유나</dd>

						<dt>연락처</dt>
						<dd>010-1234-5678</dd>

						<dt>주소</dt>
						<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
					</dl>
					<a href="#" class="btn_modify">수정</a>
					<button type="button" class="btn_del">삭제</button>
				</li>

				<li>
					<label><input type="checkbox" class="chk_type2"><span>집 <span></span></span></label>
					<dl>
						<dt>수취인</dt>
						<dd>강유나</dd>

						<dt>연락처</dt>
						<dd>010-1234-5678</dd>

						<dt>주소</dt>
						<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
					</dl>
					<a href="#" class="btn_modify">수정</a>
					<button type="button" class="btn_del">삭제</button>
				</li>

				<li>
					<label><input type="checkbox" class="chk_type2"><span>집 <span></span></span></label>
					<dl>
						<dt>수취인</dt>
						<dd>강유나</dd>

						<dt>연락처</dt>
						<dd>010-1234-5678</dd>

						<dt>주소</dt>
						<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
					</dl>
					<a href="#" class="btn_modify">수정</a>
					<button type="button" class="btn_del">삭제</button>
				</li>

				<li>
					<label><input type="checkbox" class="chk_type2"><span>집 <span></span></span></label>
					<dl>
						<dt>수취인</dt>
						<dd>강유나</dd>

						<dt>연락처</dt>
						<dd>010-1234-5678</dd>

						<dt>주소</dt>
						<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
					</dl>
					<a href="#" class="btn_modify">수정</a>
					<button type="button" class="btn_del">삭제</button>
				</li>
			</ul>
		</div>
	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
