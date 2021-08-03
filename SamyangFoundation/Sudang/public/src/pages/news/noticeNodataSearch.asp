<h3 class="tit">재단소식/공지사항</h3>

<div class="top">
	<!-- 공지사항 메뉴 // -->
	<ul class="menu">
		<li class="active"><a href="{{dirRoot}}/">전체</a></li><!-- 해당 페이지에서 <li class="active"> -->
		<li><a href="{{dirRoot}}/">재단소식</a></li>
		<li><a href="{{dirRoot}}/">공지사항</a></li>
	</ul>
	<!-- // 공지사항 메뉴 -->

	<!-- 검색 // -->
	<form class="search">
		<fieldset>
			<legend class="hide">검색</legend>

			<div class="input-search">
				<input type="text" placeholder="검색어를 입력해 주세요.">
				<button type="submit" class="btn-mute btn-search">검색</button>
			</div>
		</fieldset>
	</form>
	<!-- // 검색 -->
</div>

<!-- nodata // -->
<div class="nodata">
    <p>검색 결과가 없습니다.</p>

    <a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}.asp" class="btn-fill-green-middle btn-link">재단소식/공지사항 이동</a>
</div>
<!-- // nodata -->
