<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<script>
		function goAddLike(obj){
			$(obj).addClass("active");
		}
	</script>

</head>
<body class="event">
<div id="wrap" class="view">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle// -->
		<div id="subTitle2">
			<h2 class="tit">이벤트</h2>
		</div>
		<!-- //subtitle -->


		<article class="view_area">
			<header class="tit_area">
				<h2 class="subject">이달의 사진에 도전하세요!</h2>
				<span class="date">2018.09.08</span>
			</header>

			<div class="editor_area">
				이달의 사진에 도전하세요!<br /><br />
				댓글에 여러분의 사진을 올려 참가해주세요.<br />
				푸짐한 상품을 드립니다.<br /><br /><br />
				기간 : 2018.09.08 ~ 09.30<br />
				발표 : 2018.10.10<br /><br />
			</div>

			<dl class="file_area">
				<dt>첨부파일</dt>
				<dd><a href="#">img_0129.jpg</a></dd>
				<dd><a href="#">img_0129.jpg</a></dd>
			</dl>

			<a href="#" class="btn_list"><span>목록<span>List</span></span></a>
		</article>

		<!-- comment// -->
		<div class="comment_area">

			<!-- 등록// -->
			<div class="write_area">
				<form>
					<fieldset>
						<legend class="tit">댓글</legend>
						<div class="write_box">
							<textarea title="댓글 입력" class="textarea" maxlength="300" placeholder="내용과 무관한 댓글, 악플, 홍보성 광고글 등은 삭제될 수 있습니다.&#13;&#10;댓글은 300자 이내로 작성해주세요." ></textarea>
							<a href="#" class="btn_img" onclick="fn.popupOpen('#file_upload');">이미지 첨부</a>
							<button type="button" class="btn_register">등록하기</button>
							<p class="msg">* 로그인 후 댓글을 남겨주세요.</p> <!-- 로그인 전 -->
							<!-- <p class="msg">* 욕설이나 비방 내용 또는 관련 없는 내용을 등록하실 경우 안내 없이 삭제 처리될 수 있습니다.</p> --> <!-- 로그인 후 -->
						</div>
					</fieldset>
				</form>
			</div>
			<!-- //등록 -->

			<div class="count">총 <b class="number">25</b>개의 <b>댓글</b></div>

			<ul class="comment_list">
				<!-- 반복영역// -->
				<li>
					<div class="comm_con">
						<span class="name"><span class="icon_sns naver">naver</span>이*동</span><button type="button" class="btn_like" onclick="goAddLike(this);">328</button>
						<span class="date">2018.09.10 09:05:56</span>
						<p class="txt_con">
							이달의 사진 이벤트에 참여하고 싶어요~~ ^^*<button type="button" class="btn_del">삭제</button>
						</p>
						<figure class="attached_img">
							<img src="/m/mpjtCom/images/temp/img_comment.jpg" alt="첨부 이미지">
						</figure>
					</div>
				</li>
				<!-- //반복영역 -->
				<li>
					<div class="comm_con">
						<span class="name"><span class="icon_sns facebook">facebook</span>김*수</span><button type="button" class="btn_like" onclick="goAddLike(this);">328</button>
						<span class="date">2018.09.10 09:05:56</span>
						<p class="txt_con">
							이달의 사진 이벤트에 참여하고 싶어요~~ ^^* 이달의 사진 이벤트에 참여하고 싶어요~~ ^^* 이달의 사진 이벤트에 참여하고 싶어요~~ ^^* 이달의 사진 이벤트에 참여하고 싶어요~~ ^^*
						</p>
						<figure class="attached_img">
							<img src="/m/mpjtCom/images/temp/img_comment.jpg" alt="첨부 이미지">
						</figure>
					</div>
				</li>
				<li>
					<div class="comm_con">
						<span class="name">김*수</span><button type="button" class="btn_like" onclick="goAddLike(this);">328</button>
						<span class="date">2018.09.10 09:05:56</span>
						<p class="txt_con">
							이달의 사진 이벤트에 참여하고 싶어요~~ ^^*
						</p>
					</div>
				</li>
				<li>
					<div class="comm_con">
						<span class="name">이*수</span><button type="button" class="btn_like" onclick="goAddLike(this);">328</button>
						<span class="date">2018.09.10 09:05:56</span>
						<p class="txt_con">
							이달의 사진 이벤트에 참여하고 싶어요~~ ^^*
						</p>
						<figure class="attached_img">
							<img src="/m/mpjtCom/images/temp/img_comment.jpg" alt="첨부 이미지">
						</figure>
					</div>
				</li>
			</ul>

			<!--  페이징// -->
			<div class="paging paging_type2">
				<a href="#" class="btn_prev">이전</a>
				<span class="num">
					<a href="#" class="on">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
				</span>
				<a href="#" class="btn_next">다음</a>
			</div>
			<!--  //페이징 -->
		</div>
		<!-- //comment -->

	</main>
	<!-- //content -->

	<!-- 팝업 : 파일 첨부// -->
	<div id="file_upload" class="popup file_upload">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#file_upload')">닫기</button>
				<h3>파일 첨부하기</h3>

				<div class="filebox preview-image">
					<input type="text" id="uploadName" class="txt_type1 upload-name" placeholder="파일 선택" disabled="disabled">
					<label for="imgFile">업로드</label>
					<input type="file" id="imgFile" name="imgFile" accept="image/gif, image/jpeg, image/png" class="upload-hidden">
					<ul class="filetxt">
						<li>10MB이하의 이미지 파일만 등록할 수 있습니다.</li>
					</ul>
				</div>

				<div class="btn_area">
					<button type="button" class="btn_purple">등록</button>
					<button type="button" class="btn" onclick="fn.popupClose('#file_upload')">취소</button>
				</div>

			</div>
		</div>
	</div>
	<!-- //팝업 : 파일 첨부 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
