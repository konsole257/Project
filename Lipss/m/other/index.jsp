<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<title>LIPSS</title>
</head>
<body class="other">
<div id="wrap" class="index">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- filter// -->
		<div class="filter">
			<form>
				<fieldset>
					<legend class="hide">Search</legend>
					<div class="ls">
						<!-- input checked="checked" 로 기본 일경우 search result 영역 활성화됨 -->
						<a href="#" class="btn-product">PRODUCT</a>
						<ul>
							<li><label><input type="radio" name="product" id="product_1" title="액자" />액자</label></li>
							<li><label><input type="radio" name="product" id="product_2" title="앨범" />앨범</label></li>
						</ul>
						<a href="#" class="btn-brand">BRAND</a>
						<ul>
							<li><label><input type="radio" name="brand1" id="brand1_1" title="YG" />YG</label></li>
							<li><label><input type="radio" name="brand1" id="brand1_2" title="JYP" />JYP</label></li>
						</ul>
						<a href="#" class="btn-artist">ARTIST</a>
						<ul>
							<li><label><input type="radio" name="artist" id="artist_1" title="ARTIST1" />ARTIST1</label></li>
							<li><label><input type="radio" name="artist" id="artist_2" title="ARTIST2" />ARTIST2</label></li>
							<li><label><input type="radio" name="artist" id="artist_3" title="ARTIST3" />ARTIST3</label></li>
							<li><label><input type="radio" name="artist" id="artist_4" title="ARTIST4" />ARTIST4</label></li>
							<li><label><input type="radio" name="artist" id="artist_5" title="ARTIST5" />ARTIST5</label></li>
						</ul>

						<!--
						<a href="#" class="btn-member">MEMBER</a>
						<ul>
							<li><label for="member_all"><input type="checkbox" name="member" id="member_all" title="전체" />전체</label></li>
							<li><label for="member1"><input type="checkbox" name="member" id="member1" title="이승훈"/>이승훈</label></li>
							<li><label for="member2"><input type="checkbox" name="member" id="member2" title="강승윤" />강승윤</label></li>
							<li><label for="member3"><input type="checkbox" name="member" id="member3" title="이승훈" />이승훈</label></li>
							<li><label for="member4"><input type="checkbox" name="member" id="member4" title="하와이" />하와이</label></li>
						</ul>
						-->
					</div>
					<!-- result// -->
					<div class="result">
						<div class="rls"></div>
						<p>
							<a href="#" class="btn-refresh">Refresh</a>
							<a href="#" class="btn-search">Search</a>
						</p>
					</div>
					<!-- //result -->
				</fieldset>
			</form>
		</div>
		<!-- //filter -->

		<!-- banner// -->
		<div class="ban">
			<a href="#"><img src="/m/mpjtCom/images/temp/img_other_ban_720x280.jpg" alt="" /></a>
		</div>
		<!-- //banner -->

		<!-- list// -->
		<div class="other_list_area">
			<div class="sti">
				<p class="tot">총 <em>23</em>개</p>
				<p class="sort">
					<a href="#" class="active">최신순</a>
					<!-- <a href="#">판매순</a> -->
				</p>
			</div>
			<ul class="other_list">

				<!-- 상품없음 // -->
				<li class="nodata">
					판매중인 상품이 없습니다.
				</li>
				<!-- // 상품없음 -->

				<!-- 반복영역 // -->
				<li>
					<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

					<div class="info_area">
						<a href="#">
							<span class="txt_ti ellipsis">일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</span>
							<span class="txt_info ellipsis">일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</span>
							<span class="txt-price">46,000원</span>
						</a>
					</div>
				</li>
				<!-- // 반복영역 -->
				<li>
					<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

					<div class="info_area">
						<a href="#">
							<span class="txt_ti ellipsis">SECHSKIES(젝스키스) - 2016 RE-ALBUM</span>
							<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
							<span class="txt-price">46,000원</span>
						</a>
					</div>
				</li>
				<li>
					<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

					<div class="info_area">
						<a href="#">
							<span class="txt_ti ellipsis">WINNER Everyd4y Official Goods</span>
							<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
							<span class="txt-price">46,000원</span>
						</a>
					</div>
				</li>
				<li>
					<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

					<div class="info_area">
						<a href="#">
							<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y</span>
							<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
							<span class="txt-price">46,000원</span>
						</a>
					</div>
				</li>
			</ul>

			<div class="paging paging_type2">
				<a href="#" class="btn_prev">이전</a>
				<span class="num">
					<a href="#" class="on">1</a>
					<span>/</span>
					<a href="#">5</a>
				</span>
				<a href="#" class="btn_next">다음</a>
			</div>
		</div>
		<!-- //list -->

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>