<!--#include virtual="/en/include/md5.asp"-->

<%
  '**************************************************************************************************
  '
  '  �ۼ��� : Ȳ����
  '  ���   : ȸ��������å , �α���å , �����ͺ��̽� Connectivity ,�������� ���� �������,���ν���
  '
  '**************************************************************************************************

'+++ ��а��� �̰����� ��� +++
'Option Explicit

 session.codepage = 0
' Response.CharSet = "UTF-8"

  '�����ͺ��̽� Ŀ�ؼ� ���


   'Const DB_DEFAULT_CONSTR = "Provider=SQLOLEDB.1;User ID=sa;Password=castware123!@#;Initial Catalog=CASTWARE;Data Source=112.175.142.98;Connection Lifetime=0;ConnectionTimeout=120"
   
   
   'sql 2005 express ��(��������)
     Const DB_DEFAULT_CONSTR =  "Provider=SQLNCLI;Server=112.175.142.101;Database=CASTWARE;UID=castware;PWD=cast##!@77;"

   '�׽�Ʈ����
   ' Const DB_DEFAULT_CONSTR =  "Provider = SQLOLEDB; Data Source=114.52.63.54;initial Catalog=CASTWARE;User ID=sa;password=ALs9051!a-;"




'   Const DB_DEFAULT_CONSTR = "Provider=SQLOLEDB.1;User ID=sa;Password=cjdrldhk;Initial Catalog=cs_intra;Data Source=218.232.226.132;Connection Lifetime=0;ConnectionTimeout=120"
  Const DB_TEST_CONSTR    = ""


  '����Ʈ �������� ���
  Const DEFAULT_PORT_STR = "80"


  
  '��Ű - ��ȣȭ�� ���� Ű����
  Const COOKIE_SECRET_PREFIX = "*^^*sungmin!"
  'Response.Write("TTT:" & GetSecretCookie("secret_test_cookie") & "<br>")
'--------------------------------------------------------------------------------------------------

  '--------------------------------------------------------------------------------------------------



 '��Ű �ʱ�ȭ
 ' setcookie($name , $value . "-^-". $hash ,  $expire,"/",$domain ,$secure  ); 

 '//��ȣ���ڿ��� �ٿ��� (�����ߴ��� Ȯ���� ������) ��Ű �����
 '//�Ķ���� 1:��Ű��, 2:��Ű��, 3: �������� , 4.������ , 5:ssl ���� : ssl ������ ���Ǵ� ��Ű�̸� =1 , �ƴϸ� 0

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
		  return_val = ""  '�������� �ʴ� ��Ű
	  Else
		  if(md5(COOKIE_SECRET_PREFIX & user_id_plain) = user_id_hash )  Then '��Ű�� �����Ǿ�����?
			 return_val = user_id_plain 
		  else
			 return_val = ""  '�������������� 
		  End If 
	  End If 

	  GetSecretCookie =  return_val 
  End Function
  '-------------------------------------------------------------------------------------------------- 
  '��Ű �ʱ�ȭ
  Sub InitCookies(name,val,expire,domainscope,ssl)
       Dim tmp,Name1d,Name2d
       tmp = split(name,",")    '2���� ��Ű�� ","�� ����
	   if ubound(tmp) > 0 then  '2���� ��Ű�̸�
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
   '��������(��Ű)�� ���
  Function GetStateValue(name)
       Dim tmp,Name1d,Name2d
       tmp = split(name,",")    '2���� ��Ű�� ","�� ����
	   if ubound(tmp) > 0 then  '2���� ��Ű�̸�
           name = tmp(0)
		   name2d = tmp(1)
		   GetStateValue = Request.Cookies(name)(name2d)
	   else
	       GetStateValue = Request.Cookies(name)
	   end if
  end Function
  '--------------------------------------------------------------------------------------------------

  '��������(��Ű)�� �����ϱ�
  Sub SetStateValue(name,data)
       Dim tmp,name1d,name2d
       tmp = split(name,",")    '2���� ��Ű�� ","�� ����
	   if ubound(tmp) > 0 then  '2���� ��Ű�̸�
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
	'+++�α��� ���ѻ�� �α����������� ++++


	dim uid, uname, sResponse_url
 	'uid = request.cookies("Admin_User_Info")("uid")

	uid =GetSecretCookie("admin_uid") '-----2014/09/03
 	if uid = "" then '�α��� ���ϰ� ���������

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


'������ó��
 Function title_opt(j_title,j_cnt)
 	j_title	= title_no_html(j_title) '==html �±� ����
 	if len(j_title) < j_cnt then
 		title_opt = j_title
 	else
 		title_opt = left(j_title,j_cnt) &"..."
 	end if

 End Function

'������ó��
 Function title_no_html(j_title)
	 if j_title <> "" then
		'j_title			= Server.HTMLEncode(j_title)' HTML encoding ����
		j_title			= replace(j_title, "<", "&lt;")
		j_title			= replace(j_title, ">", "&gt;")
		title_no_html	= j_title
     else
		title_no_html	= ""
	 end if
 End Function


'--------------------------------------------------------------------------------------------------


'======= url �ڵ���ũ �ɾ��ֱ� ����=========
Function eregi_replace(pattern, replace, text)

		Dim eregObj

		Set eregObj= New RegExp

		eregObj.Pattern= pattern ' Set Pattern(���� ����)

		eregObj.IgnoreCase    = True ' Set Case Insensitivity(��ҹ��� ���� ����)

		eregObj.Global= True ' Set All Replace(��ü �������� �˻�)



		eregi_replace = eregObj.Replace(text, replace)    ' Replace String

End Function


'======= url �ڵ���ũ �ɾ��ֱ� ��=========

'--------------------------------------------------------------------------------------------------
 Function auto_link(text)

		 Dim regex_file, regex_http, regex_mail

		 regex_file = "gz|tgz|tar|gzip|zip|rar|mpeg|mpg|exe|rpm|dep|rm|ram|asf|ace|viv|avi|mid|gif|jpg|png|bmp|eps|mov"

		 regex_http = "(http|https|ftp|telnet|news):\/\/(([\xA1-\xFEa-z0-9_\-]+\.[][\xA1-\xFEa-z0-9:;&#@=_~%\?\/\.\,\+\-]+)(\/|[\.]*[a-z0-9]))"

		 regex_mail = "([\xA1-\xFEa-z0-9_\.\-]+)@([\xA1-\xFEa-z0-9_\-]+\.[a-z0-9\-\._\-]+[\.]*[\xA1-\xFEa-z0-9\?=]*)"

		 ' img tag �� a tag �� ��� ��ũ�� �����ٿ� ���� �̷���� ���� ���

		 ' �̸� ���ٷ� ��ħ (��ġ�鼭 �ΰ� �ɼǵ��� ��� ������)

		 'text = eregi_replace("<(a|img)[^>]*(href|src)[^>]*(" & regex_http & "|mailto:" & regex_mail & ")[^>]*>","<$1 $2=""$3"">", text)

		 text = eregi_replace("<(a)[^>]*(href)[^>]*(" & regex_http & "|mailto:" & regex_mail & ")[^>]*>","<$1 $2=""$3"">", text)

		 ' Ư�����ڿ� ��ũ�� target ����

		 text = eregi_replace("&(quot|gt|lt)","!$1", text)

		 ' html ���� Link ��ȣ

		 text  = eregi_replace("href=""(" & regex_http & ")""[^>]*>","href=""$2_orig://$3"" target=""_blank"">", text)

		 text  = eregi_replace("href=""mailto:(" & regex_mail & ")"">","href=""mailto:$2@$3"">", text)

		 text  = eregi_replace("(background|codebase|src)[ \n]*=[\n""' ]*(" & regex_http & ")[""']*","$1=""$3_orig://$4""",text)

		 '��ũ�� �ȵ� Url�� Email Address �ڵ� ��ũ

		 text  = eregi_replace("(" & regex_http & ")" ,"<a href=""$1"" target=""_blank"">$1</a>", text)

		 text  = eregi_replace("(" & regex_mail & ")","<a href=""mailto:$1"">$1</a>", text)

		 ' ��ȣ�� ���� ġȯ�Ȱ� ����

		 text = eregi_replace("!(quot|gt|lt)","&$1", text)

		 text = eregi_replace("(http|https|ftp|telnet|news|mms)_orig","$1", text)

		 text = eregi_replace("@","@",text)

		 ' File Link�� Target�� ����

		 text = eregi_replace("(\.(" & regex_file & ")"") target=""_blank""","$1", text)

		auto_link = text

End Function

'--------------------------------------------------------------------------------------------------




%>




<%

	' ####################  ����ó�� �Լ� �����ǹ� XSS ���� #############################################################################'


    '===========================================================================================
	Dim arrFields		'�Ķ���� �迭
	Dim blnResult		'�Ķ���� null ��� bool��
	Dim blnBadString	'�Ķ���Ϳ� SQL Injection, CSS ���� ����ִ��� �Ǵ�
	Dim arrBadWord		'�˷��� SQL Injection, CSS �迭
	Dim arrBadWord2		'�˷��� SQL Injection, CSS �迭	
	'===========================================================================================

	' SQL-Injection ���ڿ��� �߰��Ǿ����� �Ʒ� ���ڿ��� �߰�
	arrBadWord = array(";","'","--","/",":","+","exec","master..","xp_cmdshell","ipconfig","script","sp_addextendeproc","xplog70","dir","../","xp_dirtree","xp_regdeletekey","xp_regenumvalues","xp_regread","xp_regwrite","xp_makewebtask","sp_makewebtask","addextendedproc","comd_list","jiaozhu","xiao","xialou","t_jiaozhu","d99_tmp","d99_reg","d99_cmd","%00")
	'===========================================================================================

	arrBadWord2 = array("script","'","--","\","+","exec","master..","xp_cmdshell","ipconfig","script","sp_addextendeproc","xplog70","dir","../","xp_dirtree","xp_regdeletekey","xp_regenumvalues","xp_regread","xp_regwrite","xp_makewebtask","sp_makewebtask","addextendedproc","comd_list","jiaozhu","xiao","xialou","t_jiaozhu","d99_tmp","d99_reg","d99_cmd","exec xp_","exec sp_", "openrowset","execute","immediate","union","select","insert","update","--","/*","*/","%00") 
	'===========================================================================================

	' SQL Injection ���� ���ڿ� üũ
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


	' varFields : üũ�� �Ķ���� ����(�迭)�� (input, output ��)
	' blnEmpty : null ���� ����ϴ��� ����
	' blnResult : null ���� ������� �ʾ��� ��� ������ ����� ����ִ��� �˷���(True, False)
	' blnBadString : SQL Injection ���� ���ڿ��� �������� �˷���(True, False)
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


	'������� �Լ� 
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
				'	response.write "�����Ͱ� ��ȿ���� ����"
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
				'	response.write "�����Ͱ� ��ȿ���� ����"
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
