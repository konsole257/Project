<noscript>
이 사이트를 이용하기 위해서 자바스크립트를 활성화 시킬 필요가 있습니다.
<a href="http://www.enable-javascript.com/ko/" target="_blank">브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
</noscript>

<header id="header">
	<div class="inner">
		{{include('./components/skip.html', {"prop": {"id": "container","text": "본문으로 건너뛰기"}})}}

		<div class="logo"><a href="{{dirRoot}}/index.asp">수당재단</a></div>

		<button type="button" class="btn-mute btn-menu-open">메뉴열기</button>
		<div class="menu-list-area">
			<button type="button" class="btn-mute btn-menu-close">메뉴닫기</button>

			<ul class="menu-list">
				<li>
					<a href="{{dirRoot}}/foundation/greeting.asp">재단소개</a>

					<ul>
						<li><a href="{{dirRoot}}/foundation/greeting.asp">인사말</a></li>
						<li><a href="{{dirRoot}}/foundation/about.asp">소개</a></li>
						<li><a href="{{dirRoot}}/foundation/history.asp">연혁</a></li>
						<li><a href="{{dirRoot}}/foundation/organiztion.asp">조직현황</a></li>
						<li><a href="{{dirRoot}}/foundation/location.asp">오시는길</a></li>
					</ul>
				</li>
				<li>
					<a href="{{dirRoot}}/business/scholar.asp">재단사업</a>

					<ul>
						<li>
							<a href="{{dirRoot}}/business/scholar.asp">장학사업</a>

							<ul>
								<li>
									<a href="{{dirRoot}}/business/scholar.asp">장학사업소개</a>
								</li>
								<!-- <li>
									<a href="{{dirRoot}}/business/scholarApply.asp">장학생신청</a>
								</li> -->
							</ul>
						</li>
						<li>
							<a href="{{dirRoot}}/business/">수당상</a>

							<ul>
								<li>
									<a href="{{dirRoot}}/business/recommend.asp">수당상소개</a>
								</li>
								<!-- <li>
									<a href="{{dirRoot}}/business/recommendApply.asp">수당상추천</a>
								</li> -->
								<li>
									<a href="{{dirRoot}}/business/history.asp">역대수상자</a>
								</li>
								<li>
									<a href="{{dirRoot}}/business/commission.asp">운영위원회</a>
								</li>
								<li>
									<a href="{{dirRoot}}/business/photo.asp">포토갤러리</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<a href="{{dirRoot}}/news/notice.asp">재단소식</a>

					<ul>
						<li><a href="{{dirRoot}}/news/notice.asp">재단소식/공지사항</a></li>
						<li><a href="{{dirRoot}}/news/report.asp">공시</a></li>
					</ul>
				</li>
				<li>
					<a href="{{dirRoot}}/community/review.asp">커뮤니티</a>

					<ul>
						<li><a href="{{dirRoot}}/community/review.asp">장학생후기</a></li>
						<li><a href="{{dirRoot}}/community/library.asp">자료실</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<!-- <a href="#" class="btn-middle btn-request" onclick="alert('준비중입니다.');">장학신청</a> -->
	</div>
</header>

<hr id="header-end">
