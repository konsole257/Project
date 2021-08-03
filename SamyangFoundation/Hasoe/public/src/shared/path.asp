<div class="path">
    <a href="{{dirRoot}}/index.asp">홈</a>

    <% If parentPage = "foundation" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/greeting.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "haseo" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/about.asp"><%= parentPageName %></a>
    <% ElseIf parentPage = "business" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/research.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "news" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/notice.asp"><%= parentPageName %></a>
        <a href="{{dirRoot}}/<%= parentPage %>/<%= page %>.asp"><%= pageName %></a>
    <% ElseIf parentPage = "policy" Then %>
        <a href="{{dirRoot}}/<%= parentPage %>/service.asp"><%= pageName %></a>
    <% End If %>
</div>
