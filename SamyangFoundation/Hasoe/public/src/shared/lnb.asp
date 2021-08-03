<% If parentPage = "foundation" Then %>
    <ul class="menu">
        <li <% If page = "greeting" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/greeting.asp">인사말</a></li>
        <li <% If page = "about" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/about.asp">소개</a></li>
        <li <% If page = "history" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/history.asp">연혁</a></li>
        <li <% If page = "organization" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/organization.asp">조직현황</a></li>
        <li <% If page = "location" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/location.asp">오시는길</a></li>
    </ul>
<% ElseIf parentPage = "news" Then %>
    <ul class="menu">
        <li <% If page = "notice" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/notice.asp">재단소식/공지사항</a></li>
        <li <% If page = "report" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/report.asp">공시</a></li>
    </ul>
<% End If %>
