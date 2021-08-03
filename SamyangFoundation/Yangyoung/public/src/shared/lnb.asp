<% If parentPage = "foundation" Then %>
    <ul class="menu">
        <li <% If page = "greeting" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/greeting.asp">인사말</a></li>
        <li <% If page = "about" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/about.asp">소개</a></li>
        <li <% If page = "history" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/history.asp">연혁</a></li>
        <li <% If page = "organization" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/organization.asp">조직현황</a></li>
        <li <% If page = "location" Then %>class="active"<% End if %> ><a href="{{dirRoot}}/<%= parentPage %>/location.asp">오시는길</a></li>
    </ul>
<% ElseIf parentPage = "business" Then %>
    <ul class="menu">
        <li <% If page = "scholar" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/scholar.asp">장학사업</a></li>
        <!-- <li <% If Instr(page,"scholarApply") Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/scholarApply.asp">장학생신청</a></li> -->
        <li <% If page = "research" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/research.asp">학술연구지원사업</a></li>
        <li <% If Instr(page,"researchApply") or Instr(page,"thesisApply") Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/researchApply.asp">연구비지원신청</a></li>
    </ul>
<% ElseIf parentPage = "news" Then %>
    <ul class="menu">
        <li <% If page = "notice" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/notice.asp">재단소식/공지사항</a></li>
        <li <% If page = "report" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/report.asp">공시</a></li>
    </ul>
<% ElseIf parentPage = "community" Then %>
    <ul class="menu">
        <li <% If page = "review" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/review.asp">장학생후기</a></li>
        <li <% If page = "library" Then %>class="active"<% End if %>><a href="{{dirRoot}}/<%= parentPage %>/library.asp">자료실</a></li>
    </ul>
<% End If %>
