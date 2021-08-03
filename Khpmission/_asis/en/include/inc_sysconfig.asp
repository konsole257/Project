<!--#include virtual="/en/include/md5.asp"-->

<%
  '**************************************************************************************************
  '
  '  작성자 : 황성웅
  '  기능   : 회원인증정책 , 로긴정책 , 데이터베이스 Connectivity ,상태정보 관련 공용펑션,프로시져
  '
  '**************************************************************************************************

'+++ 당분간만 이곳에서 사용 +++
'Option Explicit

 session.codepage = 0
' Response.CharSet = "UTF-8"

  '데이터베이스 커넥션 상수


   'Const DB_DEFAULT_CONSTR = "Provider=SQLOLEDB.1;User ID=sa;Password=castware123!@#;Initial Catalog=CASTWARE;Data Source=112.175.142.98;Connection Lifetime=0;ConnectionTimeout=120"
   
   
   'sql 2005 express 용(실제서버)
     Const DB_DEFAULT_CONSTR =  "Provider=SQLNCLI;Server=112.175.142.101;Database=CASTWARE;UID=castware;PWD=cast##!@77;"

   '테스트서버
   ' Const DB_DEFAULT_CONSTR =  "Provider = SQLOLEDB; Data Source=114.52.63.54;initial Catalog=CASTWARE;User ID=sa;password=ALs9051!a-;"




'   Const DB_DEFAULT_CONSTR = "Provider=SQLOLEDB.1;User ID=sa;Password=cjdrldhk;Initial Catalog=cs_intra;Data Source=218.232.226.132;Connection Lifetime=0;ConnectionTimeout=120"
  Const DB_TEST_CONSTR    = ""


  '사이트 설정관련 상수
  Const DEFAULT_PORT_STR = "80"


  
  '쿠키 - 암호화를 위한 키워드
  Const COOKIE_SECRET_PREFIX = "*^^*sungmin!"
  'Response.Write("TTT:" & GetSecretCookie("secret_test_cookie") & "<br>")
'--------------------------------------------------------------------------------------------------

  '--------------------------------------------------------------------------------------------------



 '쿠키 초기화
 ' setcookie($name , $value . "-^-". $hash ,  $expire,"/",$domain ,$secure  ); 

 '//암호문자열을 붙여서 (변조했는지 확인이 가능한) 쿠키 만들기
 '//파라미터 1:쿠키명, 2:쿠키값, 3: 만료일자 , 4.도메인 , 5:ssl 여부 : ssl 에서만 사용되는 쿠키이면 =1 , 아니면 0

  Sub setSecretCookie(name, value, expire, domainscope ,ssl)
 
	hash = MD5(COOKIE_SECRET_PREFIX & value)
	
	if (expire = "") Then
		'expire = time() + 36000 ;
	End If 

	if (secure = "") Then
		secure = 0
	End If 
	
	Call InitCookies(name, value & "-^-" & hash ,expire,domainscope,ssl)
	'setcookie($name , $value . "-^-". $hash ,  $expire,"/",domainscope ,ssl)

  End Sub
  '-------------------------------------------------------------------------------------------------- 
  Function GetSecretCookie(name)

	  return_val = ""

	  If( GetStateValue(name) <> "") Then
		arr = split(GetStateValue(name),"-^-")
		'Response.write("GetStateValue:" & GetStateValue(name)&"<br>")
		user_id_plain = arr(0)
		'Response.write(arr(0)&"<br>")
		user_id_hash  = arr(1)
	  else
		user_id_plain = ""
		user_id_hash  = ""
	  End If 

	  '//echo("user_id_plain:" .user_id_plain . "<br>" );
	  '//echo("1:" .md5(COOKIE_SECRET_PREFIX . user_id_plain) . "<br>" );
	  '//echo("user_id_hash:" . user_id_hash  . "<br>" );

	  If(user_id_plain = "" ) Then 
		  return_val = ""  '존재하지 않는 쿠키
	  Else
		  if(md5(COOKIE_SECRET_PREFIX & user_id_plain) = user_id_hash )  Then '쿠키가 변조되었는지?
			 return_val = user_id_plain 
		  else
			 return_val = ""  '비정상적인접근 
		  End If 
	  End If 

	  GetSecretCookie =  return_val 
  End Function
  '-------------------------------------------------------------------------------------------------- 
  '쿠키 초기화
  Sub InitCookies(name,val,expire,domainscope,ssl)
       Dim tmp,Name1d,Name2d
       tmp = split(name,",")    '2차원 쿠키는 ","로 구분
	   if ubound(tmp) > 0 then  '2차원 쿠키이면
           name = tmp(0)
		   name2d = tmp(1)
		   Response.cookies(name)(Name2d)=val
	   else
		   Response.cookies(name)=val
       end if
       if expire <> "" and Not isempty(expire) then
		   Response.cookies(name).Expires=expire
       end if

       Response.cookies(name).Path   ="/"
       if ssl ="y" then
	       Response.cookies(name).Secure =True
	   else
	       Response.cookies(name).Secure =False
       end if
	   if domainscope = "y" then
	       Response.cookies(name).Domain = MAIN_DOMAIN
       end if
  End Sub
  '--------------------------------------------------------------------------------------------------
   '상태정보(쿠키)값 얻기
  Function GetStateValue(name)
       Dim tmp,Name1d,Name2d
       tmp = split(name,",")    '2차원 쿠키는 ","로 구분
	   if ubound(tmp) > 0 then  '2차원 쿠키이면
           name = tmp(0)
		   name2d = tmp(1)
		   GetStateValue = Request.Cookies(name)(name2d)
	   else
	       GetStateValue = Request.Cookies(name)
	   end if
  end Function
  '--------------------------------------------------------------------------------------------------

  '상태정보(쿠키)값 셋팅하기
  Sub SetStateValue(name,data)
       Dim tmp,name1d,name2d
       tmp = split(name,",")    '2차원 쿠키는 ","로 구분
	   if ubound(tmp) > 0 then  '2차원 쿠키이면
           name1d = tmp(0)
		   name2d = tmp(1)

		   if  isnull(data) or  data = ""   then
		       Response.Cookies(name1d)(name2d) = " "
	       else
		       Response.Cookies(name1d)(name2d) = data
		   end if
	   else
	       Response.Cookies(name) = data
	   end if
  end Sub
  '--------------------------------------------------------------------------------------------------
  'Database Config
  Function GetConnectionObject(sect)
	   Dim dbConn
	   Set dbConn= Server.CreateObject("ADODB.Connection")
	   select case (sect)
	          case "DB_DEFAULT_CONSTR"
	                dbConn.Open DB_DEFAULT_CONSTR
			  case "DB_TEST_CONSTR"
			        dbConn.Open  DB_TEST_CONSTR
	   end select
	   set GetConnectionObject = dbConn
 End function

'--------------------------------------------------------------------------------------------------
Function GetCurrentUrl()
         GetCurrentUrl = Request.ServerVariables("URL") & "?" &Request.ServerVariables("QUERY_STRING")
End Function
'--------------------------------------------------------------------------------------------------

Function Login_En_chk()
	'+++로그인 안한사람 로그인페이지로 ++++


	dim uid, uname, sResponse_url
 	'uid = request.cookies("Admin_User_Info")("uid")

	uid =GetSecretCookie("admin_uid") '-----2014/09/03
 	if uid = "" then '로그인 안하고 들어왔을경우

		'sResponse_url = "http://"& Request.ServerVariables("SERVER_NAME")& ":" & Request.ServerVariables("SERVER_PORT") &"/login.asp?sResponse_url="
 		sResponse_url = "/cms_manager/en/login.asp?sResponse_url="
		'sResponse_url = sResponse_url & "http://"& Request.ServerVariables("SERVER_NAME")& ":" & Request.ServerVariables("SERVER_PORT") &""
		'sResponse_url = sResponse_url & "http://"& Request.ServerVariables("SERVER_NAME")&""
		sResponse_url = sResponse_url & Request.ServerVariables("URL") & "?" &Server.UrlEncode(Request.ServerVariables("QUERY_STRING"))
		response.redirect sResponse_url


 		'sResponse_url = "http://"& Request.ServerVariables("SERVER_NAME")& ":" & Request.ServerVariables("SERVER_PORT") &"/login.asp?sResponse_url="
 		'sResponse_url = "http://"& Request.ServerVariables("SERVER_NAME")&"/cms_manager/en/login.asp?sResponse_url="
		'sResponse_url = sResponse_url & "http://"& Request.ServerVariables("SERVER_NAME")& ":" & Request.ServerVariables("SERVER_PORT") &""
		'sResponse_url = sResponse_url & "http://"& Request.ServerVariables("SERVER_NAME")&""
		'sResponse_url = sResponse_url & Request.ServerVariables("URL") & "?" &Server.UrlEncode(Request.ServerVariables("QUERY_STRING"))
		'response.redirect sResponse_url

 	 end if

End function

'--------------------------------------------------------------------------------------------------


'제목줄처리
 Function title_opt(j_title,j_cnt)
 	j_title	= title_no_html(j_title) '==html 태그 제거
 	if len(j_title) < j_cnt then
 		title_opt = j_title
 	else
 		title_opt = left(j_title,j_cnt) &"..."
 	end if

 End Function

'제목줄처리
 Function title_no_html(j_title)
	 if j_title <> "" then
		'j_title			= Server.HTMLEncode(j_title)' HTML encoding 수행
		j_title			= replace(j_title, "<", "&lt;")
		j_title			= replace(j_title, ">", "&gt;")
		title_no_html	= j_title
     else
		title_no_html	= ""
	 end if
 End Function


'--------------------------------------------------------------------------------------------------


'======= url 자동링크 걸어주기 시작=========
Function eregi_replace(pattern, replace, text)

		Dim eregObj

		Set eregObj= New RegExp

		eregObj.Pattern= pattern ' Set Pattern(패턴 설정)

		eregObj.IgnoreCase    = True ' Set Case Insensitivity(대소문자 구분 여부)

		eregObj.Global= True ' Set All Replace(전체 문서에서 검색)



		eregi_replace = eregObj.Replace(text, replace)    ' Replace String

End Function


'======= url 자동링크 걸어주기 끝=========

'--------------------------------------------------------------------------------------------------
 Function auto_link(text)

		 Dim regex_file, regex_http, regex_mail

		 regex_file = "gz|tgz|tar|gzip|zip|rar|mpeg|mpg|exe|rpm|dep|rm|ram|asf|ace|viv|avi|mid|gif|jpg|png|bmp|eps|mov"

		 regex_http = "(http|https|ftp|telnet|news):\/\/(([\xA1-\xFEa-z0-9_\-]+\.[][\xA1-\xFEa-z0-9:;&#@=_~%\?\/\.\,\+\-]+)(\/|[\.]*[a-z0-9]))"

		 regex_mail = "([\xA1-\xFEa-z0-9_\.\-]+)@([\xA1-\xFEa-z0-9_\-]+\.[a-z0-9\-\._\-]+[\.]*[\xA1-\xFEa-z0-9\?=]*)"

		 ' img tag 와 a tag 의 경우 링크가 여러줄에 걸쳐 이루어져 있을 경우

		 ' 이를 한줄로 합침 (합치면서 부가 옵션들은 모두 삭제함)

		 'text = eregi_replace("<(a|img)[^>]*(href|src)[^>]*(" & regex_http & "|mailto:" & regex_mail & ")[^>]*>","<$1 $2=""$3"">", text)

		 text = eregi_replace("<(a)[^>]*(href)[^>]*(" & regex_http & "|mailto:" & regex_mail & ")[^>]*>","<$1 $2=""$3"">", text)

		 ' 특수문자와 링크시 target 삭제

		 text = eregi_replace("&(quot|gt|lt)","!$1", text)

		 ' html 사용시 Link 보호

		 text  = eregi_replace("href=""(" & regex_http & ")""[^>]*>","href=""$2_orig://$3"" target=""_blank"">", text)

		 text  = eregi_replace("href=""mailto:(" & regex_mail & ")"">","href=""mailto:$2@$3"">", text)

		 text  = eregi_replace("(background|codebase|src)[ \n]*=[\n""' ]*(" & regex_http & ")[""']*","$1=""$3_orig://$4""",text)

		 '링크가 안된 Url및 Email Address 자동 링크

		 text  = eregi_replace("(" & regex_http & ")" ,"<a href=""$1"" target=""_blank"">$1</a>", text)

		 text  = eregi_replace("(" & regex_mail & ")","<a href=""mailto:$1"">$1</a>", text)

		 ' 보호를 위해 치환된것 복구

		 text = eregi_replace("!(quot|gt|lt)","&$1", text)

		 text = eregi_replace("(http|https|ftp|telnet|news|mms)_orig","$1", text)

		 text = eregi_replace("@","@",text)

		 ' File Link시 Target을 삭제

		 text = eregi_replace("(\.(" & regex_file & ")"") target=""_blank""","$1", text)

		auto_link = text

End Function

'--------------------------------------------------------------------------------------------------




%>




<%

	' ####################  보안처리 함수 인젝션및 XSS 차단 #############################################################################'


    '===========================================================================================
	Dim arrFields		'파라미터 배열
	Dim blnResult		'파라미터 null 허용 bool값
	Dim blnBadString	'파라미터에 SQL Injection, CSS 값이 들어있는지 판단
	Dim arrBadWord		'알려진 SQL Injection, CSS 배열
	Dim arrBadWord2		'알려진 SQL Injection, CSS 배열	
	'===========================================================================================

	' SQL-Injection 문자열이 추가되어지면 아래 문자열에 추가
	arrBadWord = array(";","'","--","/",":","+","exec","master..","xp_cmdshell","ipconfig","script","sp_addextendeproc","xplog70","dir","../","xp_dirtree","xp_regdeletekey","xp_regenumvalues","xp_regread","xp_regwrite","xp_makewebtask","sp_makewebtask","addextendedproc","comd_list","jiaozhu","xiao","xialou","t_jiaozhu","d99_tmp","d99_reg","d99_cmd","%00")
	'===========================================================================================

	arrBadWord2 = array("script","'","--","\","+","exec","master..","xp_cmdshell","ipconfig","script","sp_addextendeproc","xplog70","dir","../","xp_dirtree","xp_regdeletekey","xp_regenumvalues","xp_regread","xp_regwrite","xp_makewebtask","sp_makewebtask","addextendedproc","comd_list","jiaozhu","xiao","xialou","t_jiaozhu","d99_tmp","d99_reg","d99_cmd","exec xp_","exec sp_", "openrowset","execute","immediate","union","select","insert","update","--","/*","*/","%00") 
	'===========================================================================================

	' SQL Injection 관련 문자열 체크
	Sub injectionCheck(varField, ByRef blnBadString)
		Dim k
		For k=0 To UBound(arrBadWord)
			If InStr( varField, arrBadWord(k) ) > 0 Then
				blnBadString = True
				Exit For
			End If			
		Next
	End Sub
'--------------------------------------------------------------------------------------------------


	Function  injectionCheck2(varField, ByRef output)
		Dim k
		Dim blnBadString
		blnBadString= False
		For k=0 To UBound(arrBadWord2)		
			If InStr(varField, arrBadWord2(k) ) > 0 Then
					blnBadString = True
					output = arrBadWord2(k)
					Exit for
			End If	
		Next
		injectionCheck2 = blnBadString
	End Function
'--------------------------------------------------------------------------------------------------


	' varFields : 체크할 파라미터 변수(배열)값 (input, output 용)
	' blnEmpty : null 값을 허용하는지 여부
	' blnResult : null 값을 허용하지 않았을 경우 값들이 제대로 들어있는지 알려줌(True, False)
	' blnBadString : SQL Injection 관련 문자열이 들어오는지 알려줌(True, False)
	Sub validateCheck(varFields, blnEmpty, ByRef blnResult, ByRef blnBadString)
		Dim i
		blnResult = True
		blnBadString = False

		For i=0 To UBound(varFields)
			injectionCheck LCase(Trim(Request(varFields(i)))), blnBadString

			If Trim(Request(varFields(i))) = "" Then
				If blnEmpty = False Then
					blnResult = False
					Exit For
				Else
					varFields(i) = null
				End If
			Else
				varFields(i) = Trim(Request(varFields(i)))
			End If
		Next
	End Sub
'--------------------------------------------------------------------------------------------------


	'실제사용 함수 
	Sub SqlValidCheck()
		Dim blnResult,blnBadString,item,i,varField
		Dim output
		blnResult = False
		For each item in Request.Form
			for i = 1 to Request.Form(item).Count
				 varField = Request.Form(item)(i)
				 varField = Trim(varField)
				 varField = LCase(varField)
				 blnResult = injectionCheck2(varField,output)
				If blnResult  Then
					'response.write varField
				'	response.write "데이터가 유효하지 않음"
					response.Write("<script language='javascript'> alert(' Bad keyword [" & output & "]is found!');</script>")
					response.end
				End If
			next
		Next

		For each item in Request.querystring
			for i = 1 to Request.querystring(item).Count
				 varField = Request.querystring(item)(i)
				 varField = Trim(varField)
				 varField = LCase(varField)
				 blnResult = injectionCheck2(varField,output)
				If blnResult  Then
				'	response.write "데이터가 유효하지 않음"
				    response.Write("<script language='javascript'> alert(' Bad keyword [" & output & "]is found! ');</script>")
					response.end
				End If
			next
		Next
	End Sub

'--------------------------------------------------------------------------------------------------
 Function RequestStr(str_v , size)
	   
	str_v2 = Trim(Request(str_v))
	If str_v2 <> "" And Len(str_v2) > size Then
	    'str_v2 = Left(Request(str_v2),size)
		str_v2 = ""
		Response.Write("RequestStr : Invalid Parameter")
		Response.End 
	End If
	
	RequestStr = str_v2
 End Function


 Function RequestNum(str_v , size)
	   
	str_v2 = Request(str_v)
	If str_v2 <> "" And CDbl(str_v2) > size Then
	    str_v2 = 0
	End If
	
	RequestNum = str_v2
 End Function


'--------------------------------------------------------------------------------------------------



Call SqlValidCheck()

%>
