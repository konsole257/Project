<div class="top">
	<!-- 검색 // -->
	<form class="search">
		<fieldset>
			<legend class="hide">검색</legend>

			<div class="input-search">
				<input type="text" title="검색어 입력" placeholder="검색어를 입력해 주세요.">
				<button type="submit" class="btn-mute btn-search">검색</button>
			</div>
		</fieldset>
	</form>
	<!-- // 검색 -->
</div>

<!-- nodata : 등록된 게시물 없을경우 // -->
<!-- <div class="nodata">
    <p>등록된 게시물이 없습니다.</p>

    <a href="{{dirRoot}}/index.asp" class="btn-fill-blue-middle btn-link">메인 이동</a>
</div> -->
<!-- // nodata : 등록된 게시물 없을경우 -->

<!-- nodata : 검색 결과 없을경우 // -->
<!-- <div class="nodata">
    <p>검색 결과가 없습니다.</p>

    <a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}.asp" class="btn-fill-blue-middle btn-link">장학생후기 이동</a>
</div> -->
<!-- // nodata : 검색 결과 없을경우 -->

<div class="bbs-list-area">
	{{include('./components/skip.html', {"prop": {"id": "list-area-end","text": "장학생후기 건너뛰기"}})}}

	<ul class="bbs-list">
		<!-- 반복영역 // -->
			<li>
				<div class="bbs-list-gallery">
					<a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}View.asp">
						<picture class="img"><img src="{{dirRoot}}/resources/images/temp/" alt="" onerror="this.src='{{dirRoot}}/resources/images/pc/common/bbs-noimg.jpg'"></picture><!-- 2020.07.28 : 수정 -->
						<div class="txt">
							<span class="subject">2020년 양영재단 길하나 장학생 스토리 2020년 양영재단 길하나 장학생 스토리</span>
                            <p class="cont">장학금이라고 하면 누군가에게 공짜로 받는 돈이라 생각합니다.</p>
							<span class="date">2020.06.30</span>
						</div>
					</a>
				</div>
			</li>
		<!-- // 반복영역 -->

		{{for (var i = 5; i >= 1; i--) {
			<li>
				<div class="bbs-list-gallery">
					<a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}View.asp">
						<picture class="img"><img src="{{dirRoot}}/resources/images/temp/img-news520x371.jpg" alt="" onerror="this.src='{{dirRoot}}/resources/images/pc/common/bbs-noimg.jpg'"></picture>
						<div class="txt">
							<span class="subject">2020년 양영재단 길하나 장학생 스토리</span>
                            <p class="cont">장학금이라고 하면 누군가에게 공짜로 받는 돈이라 생각합니다. 하지만 저에게는 사회로 나갈 수 있게하는 디딤돌 같은 역할입니다.</p>
							<span class="date">2020.06.30</span>
						</div>
					</a>
				</div>
			</li>
		}}}
	</ul>
</div>
<hr id="list-area-end">

<!-- pagination : 게시물 없을경우 비노출 // -->
{{include('./components/pagination.html')}}
<!-- // pagination -->
