<!--#include virtual="/en/include/inc_sysconfig.asp"-->



<%
      '(1) 만들기  (쿠키를 만들면서 값을 넣습니다)
      Call  InitCookies("test_cookie",  "송선우" , "" , "" , "n")
      
      '(2) 값 변경하기
      Call  SetStateValue("test_cookie","장수현")
	 
     
      '(3) 쿠키에서 값 가져오기
      Dim test
	  test = GetStateValue("test_cookie")
	  Response.write("test_cookie:" & test & "<br>" ) 
 
      '(4) 쿠키 초기화 하기 (없애기)
      Call  InitCookies("test_cookie",  "" , "" , "" , "n")

	  '(5)보안이 필요한 쿠키 - 만들기
	  Call setSecretCookie("secret_test_cookie,uname",  "송선우" , "" , "" , "n")

	  '(6)보안이 필요한 쿠기 - 값 가져오기
	  Dim secret
	  secret = GetSecretCookie("secret_test_cookie,uname")
	  Response.write("secret_cookie:" & secret )
%>