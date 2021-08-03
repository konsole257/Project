
<!--#include virtual="/en/include/inc_sysconfig.asp"-->
<!--#include virtual="/en/include/download_path.asp"-->
<%
	response.expires = "0"
	'	ON ERROR RESUME NEXT
%>


<%
'----------------------------------------------------------------------------------
Function IsMobilePhone()
		Dim UAG
		Dim MOBILE_YN

		MOBILE_YN = "N"

		UAG = Request.ServerVariables("HTTP_USER_AGENT")
		
		'If InStr(UAG,"AppleWebKit") > 0 Then 
		
			'MOBILE_YN = "Y"
		If InStr(UAG,"iPad") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"iPhone") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"iPod") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"BlackBerry") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"Android") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"Windows CE") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"LG") > 0 Or InStr(UAG,"lgtelecom")   Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"MOT") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"SAMSUNG") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"SonyEricsson") > 0 Then 
			MOBILE_YN = "Y"
		ElseIf InStr(UAG,"RIM Tablet") > 0 Then 
			MOBILE_YN = "Y"
		End If 

'Response.Write UAG & "<bR>"
		
		IsMobilePhone = MOBILE_YN
		
End Function
'----------------------------------------------------------------------------------
%>
<%
if isMobilePhone() = "Y" Then
	Response.redirect "booklist.asp?Imageid=3"
End if 
%>

<%

	Dim brd_gbn, brd_name '==== 게시판 구분자
	brd_gbn		= request("brd_gbn")
	brd_name	= request("brd_name")

	dim cpage, mode, strque, field, total_key
	if Request.QueryString("Page") = "" then
		cPage = 1
	else
		cPage = cint(Request.QueryString ("Page"))
	end if

	mode 		= request("mode")
	strque 		= request("strque")
	field 			= request("field")

	if strque <> "" then
		strque = replace(strque,"'","''")
	end if

			'+++ 검색조건들 +++
		if strque <> "" then 						'+++키워드로 검색했을경우 +++
				total_key = total_key & field &" like '%"& strque &"%' and"
		end if

		if total_key <> "" then
			total_key = " where "& left(total_key,len(total_key)-3)
		else
			total_key = ""
		end if
		'+++ 검색조건 끝 +++

	%>

	<%
		dim fmcon
		dim qryRec
		dim listCount
		dim inttotalpage


		set fmcon  = GetConnectionObject("DB_DEFAULT_CONSTR")   '커넥션 가져오기
		set qryRec = Server.CreateObject ("ADODB.Recordset")

		qryRec.PageSize = 4

		dim intpage, sql, reforder,step,ref
		intpage = qryRec.PageSize * cpage

		dim idx, numkey,replykey,indentkey,uname,subject,file_name,regdate,cnt,modify_date
		
		sql = "select top "& intpage &" KO_SEB_IDX, TITLE, WRITER, FILE_NAME, FILE_SIZE, EBOOK_URL,EBOOK_URL_V2, READ_CNT, CONVERT(VARCHAR(10),INS_DATE,121) INS_DATE " '2019.11.11 EBOOK_URL_V2에서 가져오는것으로 변경
		sql = sql &" from KO_SEB_AK "& total_key &" "
		sql = sql &" ORDER BY KO_SEB_IDX DESC"

		'response.write sql &"<br>"

		qryRec.open sql, fmcon,3,1

		sql = ""
		dim rs
		sql = "select count(*) count from KO_SEB_AK "& total_key &""
		set rs = fmcon.execute (sql)

		dim inttotalcount
		inttotalcount = rs("count")
		if not qryRec.eof then
	 		intTotalPage = fix(rs("count")\(qryRec.PageSize))
	 		if rs("count") mod qryRec.PageSize <> 0 then
	 			intTotalPage = intTotalPage + 1
	 		end if

			qryRec.AbsolutePage = cPage
		end if


		' 다운로드 경로
			'download_path		= ko_seb_www
			'download_path		= "/en/download/ko_seb/"
			download_path		= ""
	

	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>::: 한국성민선교회 :::</title>
<link rel="stylesheet" type="text/css" href="/share/style.css" />
<!--2012.05.14 모바일기기의 경우 다른 페이지로 분기 -->	
<script type="text/javascript"> 
	
       /**
       var mobileKeyWords = new Array('AppleWebKit','iPhone','iPod','BlackBerry','Android','Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	for (var word in mobileKeyWords){
		if(navigator.userAgent.match(mobileKeyWords[word])!=null){
			window.location.href='booklist.asp?Imageid=3';
			break;
		}
	}
**/
</script>

<script language="javascript">
function viewEbook(path, idx){
	//if(path=="/ebook/WAYOFLIFE/WAYOFLIFE.html")
	//{
	//		window.open(path,'_blank','width=1009,height=796,resizable=yes');
	//}else if(path=="/ebook/young_mission/young_mission.html")
	//{
	//		window.open(path,'_blank','width=1002,height=744,resizable=yes');
    //}else if (path == "/ebook/roadofcross/cross.html") {
    //window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
    //} else if (path == "/ebook/purposeoflife/purposeoflife.html") {
    //window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
    //}
   // window.open('ebookViewCnt.asp?reUrl='+path+'&idx='+idx, '_blank', 'width=1002,height=744,resizable=yes');
	//window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
	//window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
	document.form1.Ebook.value = path ;
	document.form1.idx.value = idx ; 
//	window.open('', '_viewplayer', 'width=1200, height=800, top=50, left=50, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
//	var opt = 'width='+screen.width+' , height='+screen.height+' , top=0, left=0, fullscreen=yes, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
	var opt = 'width=1200, height=800, top=50, left=50, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
	window.open('', '_viewplayer', opt);
	document.form1.target = "_viewplayer"
	//xurl = "/vod/vodplayer/flvplayer_iframe.asp?path="+path;
	//open_scroll_no(xurl,'_viewplayer','665','545');
	document.form1.action = "../../ebook_main_2019.asp";
	document.form1.submit();	
}

    
function viewScreen(path){
	window.open(path, '_blank', 'width=800,height=600,resizable=no');
}
//-->
</script>
</head>
<body  topmargin="0">
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td>
		<!-- top img-->
		<!-- #include virtual="/share/top.asp"-->
		<!-- //top img-->
	</td> 
</tr>
<tr>
	<td style="padding-top: 24px;">
		<table width="950" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="194" height="500" valign="top" bgcolor="#eeeeee">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td bgcolor="#EEEEEE">
						<!-- left menu -->
						<!-- #include virtual="/share/left_menu_bbs_2019.asp"-->
						<!-- //left menu -->
					</td>
				</tr>
				</table>
			</td>
			<td width="15" valign="top">&nbsp;</td>
			<td width="741" valign="top">
<form name="form1" id="form1" method="post">	
<input type="hidden" name="Ebook">
<input type="hidden" name="idx">
</form>
<table width="741" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="384"><!--img src="/img/ebook/title_text.gif" alt="성서영해집" width="102" height="32" /--></td>
			<td width="357" valign="bottom">
				<table width="70%" border="0" align="right" cellpadding="0" cellspacing="0">
				<tr>
					<td class="small_title"><div align="right"><img src="/img/common/s_tit_dot.gif" width="3" height="3" />&nbsp;성서영해집</div></td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2">&nbsp;</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td>
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td style="padding-bottom:7px;">
				<img src="/img/ebook/sub_text.gif" alt="표지를 클릭하시면 e-book을 보실 수 있습니다. 스크린리더보기는 시각장애인 사용자를 위한 텍스트북입니다." />
				<a href="booklist_flash_2019.asp?ImageId=3" style="float:right;margin-top:27px;"><img src="/img/ebook/btn_flash.png" alt="플래시 이북 보기"></a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<!-- [s]list -->
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="1" colspan="2" bgcolor="#cccccc"></td>
				</tr>
				<tr>
					<td height="4" colspan="2" bgcolor="#f3f3f3"></td>
				</tr>
				<tr>



					<%
						
						dim rowcount, num
						dim qrySql1, rs1, tname

						if NOT qryRec.Eof then

							RowCount = qryRec.pageSize
							num = inttotalcount - ((cpage-1) * 10)
							n = 1
						Do while Not qryRec.EOF and RowCount > 0

							 If n Mod 2 = 1 Then 
						   %>
							<td width="50%" height="142" style="padding:15px 0 15px 0;">
							<% 
							Else
							%>
							<td width="50%">
							<%							
							End If %>



						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="32%">
								<table width="103" border="0" cellpadding="0" cellspacing="2" bgcolor="#5e5e5e">
								<tr>
									<td height="135" bgcolor="#FFFFFF"><a href="javascript:viewEbook('<%=qryRec.Fields("ebook_url_v2")%>','<%=qryRec.Fields("KO_SEB_IDX")%>')"><img src=<%=download_path%><%=qryRec.Fields("FILE_NAME")%> alt="<%=Replace(qryRec.Fields("title"),"<br>"," ")%>" width="101" height="135" border="0"/></a></td>
								</tr>
								</table>
							</td>
							<td width="68%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%" valign="top"><img src="/img/ebook/dot.gif" width="3" height="3" style="margin:6px 0 0 0;" /></td>
									<td width="94%" align="left"><strong>제목</strong> : <%=qryRec.Fields("title")%></td>
								</tr>
								<tr align="left">
									<td height="10" colspan="2"></td>
								</tr>
								<tr>
									<td width="6%" valign="top"><img src="/img/ebook/dot.gif" width="3" height="3" style="margin:6px 0 0 0;" /></td>
									<td align="left"><strong>저자</strong> : <%=qryRec.Fields("writer")%></td>
								</tr>
								</table>
							</td>
						</tr>
						</table>
						</td>

						<%			
								 If n <> 1 And n Mod 2 = 0 Then 
						%>

					  </tr>
						<tr>
							<td height="1" colspan="2" bgcolor="#cccccc"></td>
						</tr>
						<tr>

    					  <%
							End if
								if qryRec.Eof then
									exit Do
								end if

								num = num - 1
								n = n + 1
							RowCount = Rowcount - 1
						qryRec.MoveNext
						Loop

						  %>

					<% end if %>
						</tr>


<!--
					<tr>
					<td width="50%" height="142" style="padding:15px 0 15px 0;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="32%">
								<table width="103" border="0" cellpadding="0" cellspacing="2" bgcolor="#5e5e5e">
								<tr>
									<td height="135" bgcolor="#FFFFFF"><a href="javascript:viewEbook('/ebook/WAYOFLIFE/WAYOFLIFE.html')"><img src="/img/ebook/book01.gif" alt="The way of life" width="101" height="135" border="0"/></a></td>
								</tr>
								</table>
							</td>
							<td width="68%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/><br /><br /></td>
									<td width="94%" align="left"><strong>제목</strong> : The way of life<br /> (Special edition for Israel)</td>
								</tr>
								<tr align="left">
									<td height="10" colspan="2"></td>
								</tr>
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/></td>
									<td align="left"><strong>저자</strong> : 정요한</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td align="left" height="60" valign="bottom"><a href="javascript:viewScreen('screen_WAYOFLIFE.aspx')"><img src="/img/ebook/btn_screen.gif" border="0" alt="스크린리더보기" /></a></td>
								</tr>
								</table>
							</td>
						</tr>
						</table>
					</td>
					<td width="50%">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="32%">
								<table width="103" border="0" cellpadding="0" cellspacing="2" bgcolor="#5e5e5e">
								<tr>
									<td height="135" bgcolor="#FFFFFF"><a href="javascript:viewEbook('/ebook/purposeoflife/purposeoflife.html')"><img src="/img/ebook/book04.gif" alt="구속의 도리 요약집" width="101" height="135" border="0" /></a></td>
								</tr>
								</table>
							</td>
							<td width="68%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/><br /><br /></td>
									<td width="94%" align="left"><strong>제목</strong> : 인생의 목적<br />(구속의 도리 요약집)</td>
								</tr>
								<tr>
									<td height="10" colspan="2"></td>
								</tr>
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/></td>
									<td align="left"><strong>저자</strong> : 정요한</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td align="left" height="60" valign="bottom"><a href="javascript:viewScreen('screen_purposeoflife.aspx')"><img src="/img/ebook/btn_screen.gif" border="0" alt="스크린리더보기" /></a></td>
								</tr>
								</table>
							</td>
						</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="2" bgcolor="#cccccc"></td>
				</tr>
				<tr>
					<td width="50%" height="142" style="padding:15px 0 15px 0;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="32%">
								<table width="103" border="0" cellpadding="0" cellspacing="2" bgcolor="#5e5e5e">
								<tr>
									<td height="135" bgcolor="#FFFFFF"><a href="javascript:viewEbook('/ebook/roadofcross/cross.html')"><img src="/img/ebook/book03.gif" alt="Road Of Cross" width="101" height="135" border="0"/></a></td>
								</tr>
								</table>
							</td>
							<td width="68%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/><br /><br /></td>
									<td width="94%" align="left"><strong>제목</strong> : 십자가의 길<br />(성신의 피의 대속의 마음)</td>
								</tr>
								<tr align="left">
									<td height="10" colspan="2"></td>
								</tr>
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/></td>
									<td align="left"><strong>저자</strong> : 정요한</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td align="left" height="60" valign="bottom"><a href="javascript:viewScreen('screen_cross.aspx')"><img src="/img/ebook/btn_screen.gif" border="0" alt="스크린리더보기" /></a></td>
								</tr>
								</table>
							</td>
						</tr>
						</table>
					</td>
					<td width="50%">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="32%">
								<table width="103" border="0" cellpadding="0" cellspacing="2" bgcolor="#5e5e5e">
								<tr>
									<td height="135" bgcolor="#FFFFFF"><a href="javascript:viewEbook('/ebook/young_mission/young_mission.html')"><img src="/img/ebook/book02.gif" alt="청소년용 전도지" width="101" height="135" border="0" /></a></td>
								</tr>
								</table>
							</td>
							<td width="68%" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/><br /><br /></td>
									<td width="94%" align="left"><strong>제목</strong> : 인생의 목적<br />(청소년용 전도지)</td>
								</tr>
								<tr>
									<td height="10" colspan="2"></td>
								</tr>
								<tr>
									<td width="6%"><img src="/img/ebook/dot.gif" width="3" height="3" align="absmiddle"/></td>
									<td align="left"><strong>저자</strong> : 정요한</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td align="left" height="60" valign="bottom"><a href="javascript:viewScreen('screen_young_mission.aspx')"><img src="/img/ebook/btn_screen.gif" border="0" alt="스크린리더보기" /></a></td>
								</tr>
								</table>
							</td>
						</tr>
						</table>
					</td>
				</tr>-->
				<tr>
					<td height="4" colspan="2" bgcolor="#f3f3f3"></td>
				</tr>
				<tr>
					<td height="1" colspan="2" bgcolor="#cccccc"></td>
				</tr>
				</table>
				<!-- [e]list -->
			</td>
		</tr>
		</table>
		<!-- [s]pageing -->
		
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="board">
		<tr> 
			<td style="width:110px;"></td>
			<td style="padding:10px 0 0 0;text-align:center;">
				<%
						dim intnumofpage,intstart,intend,a
						intNumOfPage=10
						intstart = ((cpage-1)\intNumOfPage)*intNumOfPage+1
						intEnd = (((cpage-1)+intNumOfPage)\intNumOfPage)*intNumOfPage
						if cint(intTotalPage) <= cint(intEnd) then
						intEnd=intTotalPage
						end if

						if cint(cpage) > cint(intNumOfPage) then
						%>
						<a href="book_2019.asp?page=<%= intstart-1%>&brd_gbn=<%=brd_gbn%>&brd_name=<%=brd_name%>&mode=<%=mode%>&strque=<%=strque%>&field=<%=field%>">
						<!-- <img src="/board/board_01/imgs/prev.gif" style="border-width:0px;" /></a> -->
						<%
						else
						%>
						<!-- <img src="/board/board_01/imgs/prev.gif" style="border-width:0px;" /> -->
						<%
						end if
						%>
						<%
						for a = intstart To intEnd
						%>
						<%
						If CINT(a) = CINT(cpage) then
						%>
						<span class="current"><%=a%></span>
						<%elseif a <> cpage then%>
						&nbsp;<a href="book_2019.asp?page=<%=a%>&brd_gbn=<%=brd_gbn%>&brd_name=<%=brd_name%>&mode=<%=mode%>&strque=<%=strque%>&field=<%=field%>" class="current"><%=a%></a>
						<%
						end if

						next
						%>
						<%
						if intTotalPage>intEnd then
						%>
						<a href="book_2019.asp?page=<%=intEnd+1%>&brd_gbn=<%=brd_gbn%>&brd_name=<%=brd_name%>&mode=<%=mode%>&strque=<%=strque%>&field=<%=field%>"><img src="/board/board_01/imgs/next.gif" style="border-width:0px;" /></a>
						<%else%>
						<!-- <img src="/board/board_01/imgs/next.gif" style="border-width:0px;" /> -->
						<%
						end if
						%>
			</td>
			<td style="width:110px;padding:5px 0 0 0;">
<!--
				<a href="/ebook/booklist_2019.asp?Imageid=3"><img src="/img/ebook/btn_list.gif" border="0" alt="목록보기" /></a>
-->
			</td>
		</tr>
		</table>
		<!-- [e]pageing -->

	</td>
</tr>
</table>

			</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td style="padding-top: 20px;">
		<!-- footer -->
		<!-- #include virtual="/share/footer.asp"-->
		<!-- //footer -->
	</td>
</tr>
</table>
</body>
</html>
<%
		qryRec.close
		set qryRec=nothing
%>

