<div class="path">
    <div class="inner">
        <a href="{{dirRoot}}/index.asp" class="menu-home">홈</a>

        <% If parentPage <> "policy" Then %>
        <div class="menu">
            <span class="menu-txt"><%= parentPageName %></span>
            <ul class="list-area">
                <li class="menu-list"><a href="{{dirRoot}}/foundation/greeting.asp">재단소개</a></li>
                <li class="menu-list"><a href="{{dirRoot}}/business/scholar.asp">재단사업</a></li>
                <li class="menu-list"><a href="{{dirRoot}}/news/notice.asp">재단소식</a></li>
                <li class="menu-list"><a href="{{dirRoot}}/community/review.asp">커뮤니티</a></li>
            </ul>
        </div>
        <% End If %>

        <% If parentPage = "foundation" Then %>
            <div class="menu">
                <span class="menu-txt"><%= pageName %></span>
                <ul class="list-area">
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/greeting.asp">인사말</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/about.asp">소개</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/history.asp">연혁</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/organization.asp">조직현황</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/location.asp">오시는길</a></li>
                </ul>
            </div>
        <% ElseIf parentPage = "business" Then %>
            <div class="menu">
                <span class="menu-txt"><%= middlePageName %></span>
                <ul class="list-area">
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/scholar.asp">장학사업</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/recommend.asp">수당상</a></li>
                </ul>
            </div>

            <% If middlePage = "businessAbout" Then %>
                <div class="menu">
                    <span class="menu-txt"><%= pageName %></span>
                    <ul class="list-area">
                        <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/scholar.asp">장학사업 소개</a></li>
                        <!-- <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/scholarApply.asp">장학생 신청</a></li> -->
                    </ul>
                </div>
            <% ElseIf middlePage = "businessApply" Then %>
                <div class="menu">
                    <span class="menu-txt"><%= pageName %></span>
                    <ul class="list-area">
                        <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/recommend.asp">수당상소개</a></li>
                        <!-- <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/recommendApply.asp">수당상추천</a></li> -->
                        <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/history.asp">역대수상자</a></li>
                        <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/commission.asp">운영위원회</a></li>
                        <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/photo.asp">포토갤러리</a></li>
                    </ul>
                </div>
            <% End If %>

        <% ElseIf parentPage = "news" Then %>
            <div class="menu">
                <span class="menu-txt"><%= pageName %></span>
                <ul class="list-area">
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/notice.asp">재단소식/공지사항</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/report.asp">공시</a></li>
                </ul>
            </div>
        <% ElseIf parentPage = "community" Then %>
            <div class="menu">
                <span class="menu-txt"><%= pageName %></span>
                <ul class="list-area">
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/review.asp">장학생후기</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/library.asp">자료실</a></li>
                </ul>
            </div>
        <% ElseIf parentPage = "policy" Then %>
            <div class="menu">
                <span class="menu-txt"><%= pageName %></span>
                <ul class="list-area">
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/privacy.asp">개인정보처리방침</a></li>
                    <li class="menu-list"><a href="{{dirRoot}}/<%= parentPage %>/service.asp">이용약관</a></li>
                </ul>
            </div>
        <% End If %>

    </div>
</div>
