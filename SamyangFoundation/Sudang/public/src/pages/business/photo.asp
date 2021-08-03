<h3 class="tit">포토갤러리</h3>

<!-- nodata : 등록된 게시물 없을경우 // -->
<!-- <div class="nodata">
    <p>등록된 게시물이 없습니다.</p>

    <a href="{{dirRoot}}/index.asp" class="btn-fill-blue-middle btn-link">메인 이동</a>
</div> -->
<!-- // nodata : 등록된 게시물 없을경우 -->

<div class="bbs-list-area">
	{{include('./components/skip.html', {"prop": {"id": "list-area-end","text": "재단소식/공지사항 건너뛰기"}})}}

	<ul class="bbs-list">
		<!-- 반복영역 // -->
			<li>
				<div class="bbs-list-gallery">
					<a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}View.asp">
						<picture class="img"><img src="{{dirRoot}}/resources/images/temp/" alt="" onerror="this.src='{{dirRoot}}/resources/images/pc/common/bbs-noimg.jpg'"></picture><!-- 2020.07.28 : 수정 -->
						<div class="txt">
							<span class="subject">2019년 제 28회 수당상 시상식</span>
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
							<span class="subject">2019년 제 28회 수당상 시상식</span>
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
