<div class="path">
    <a href="{{dirRoot}}/index.asp">홈</a>

    <% If parentPage = "foundation" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/about.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "business" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/scholar.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "news" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/notice.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "community" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/review.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "policy" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/service.asp"><%= pageName %></a>
    <% End If %>
</div>
