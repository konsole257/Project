<h3 class="tit">자료실</h3>

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

    <a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}.asp" class="btn-fill-blue-middle btn-link">자료실 이동</a>
</div> -->
<!-- // nodata : 검색 결과 없을경우 -->

<div class="bbs-list-area">
	{{include('./components/skip.html', {"prop": {"id": "list-area-end","text": "자료실 건너뛰기"}})}}

    <table class="bbs-list-table">
        <caption class="hide">자료실</caption>

        <colgroup>
            <col style="width:121px;">
            <col style="width:681px;">
            <col style="width:117px;">
            <col style="width:161px;">
        </colgroup>

        <thead>
            <tr>
                <th>NO</th>
                <th>제목</th>
                <th>첨부파일</th>
                <th>등록일</th>
            </tr>
        </thead>

        <tbody>
            <!-- 반복영역 // -->
            <tr>
                <td class="number">10</td>
                <td class="subject"><a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}View.asp">2019년 기부금 모금액 및 활용실적 2019년 기부금 모금액 및 활용실적 2019년 기부금 모금액 및 활용실적</a></td>
                <td class="download"><span>첨부파일</span></td>
                <td class="date">2020.06.30</td>
            </tr>
            <!-- // 반복영역 -->

            {{for (var i = 9; i >= 1; i--) {
                <tr>
                    <td class="number">`+i+`</td>
                    <td class="subject"><a href="{{dirRoot}}/{{prop.parentPage}}/{{prop.page}}View.asp">2019년 기부금 모금액 및 활용실적</a></td>
                    <td class="download"><span>첨부파일</span></td>
                    <td class="date">2020.06.30</td>
                </tr>
            }}}
        </tbody>
    </table>
</div>
<hr id="list-area-end">

<!-- pagination : 게시물 없을경우 비노출 // -->
{{include('./components/pagination.html')}}
<!-- // pagination -->
