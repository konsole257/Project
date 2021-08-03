<h3 class="tit">공시</h3>

<div class="top">
	<!-- 공시 메뉴 // -->
	<ul class="menu">
		<li class="active"><a href="{{dirRoot}}/news/{{prop.page}}.asp">전체</a></li><!-- 해당 페이지에서 <li class="active"> -->
		<li><a href="{{dirRoot}}/news/{{prop.page}}.asp">재무제표</a></li>
		<li><a href="{{dirRoot}}/news/{{prop.page}}.asp">감사보고서</a></li>
	</ul>
	<!-- // 공시 메뉴 -->
	
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
    <p>등록된 게시물이 없습니다.</p>

    <a href="{{dirRoot}}/index.asp" class="btn-fill-green-middle btn-link">메인 이동</a>
</div>
<!-- // nodata -->
