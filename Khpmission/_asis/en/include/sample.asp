<!--#include virtual="/en/include/inc_sysconfig.asp"-->



<%
      '(1) �����  (��Ű�� ����鼭 ���� �ֽ��ϴ�)
      Call  InitCookies("test_cookie",  "�ۼ���" , "" , "" , "n")
      
      '(2) �� �����ϱ�
      Call  SetStateValue("test_cookie","�����")
	 
     
      '(3) ��Ű���� �� ��������
      Dim test
	  test = GetStateValue("test_cookie")
	  Response.write("test_cookie:" & test & "<br>" ) 
 
      '(4) ��Ű �ʱ�ȭ �ϱ� (���ֱ�)
      Call  InitCookies("test_cookie",  "" , "" , "" , "n")

	  '(5)������ �ʿ��� ��Ű - �����
	  Call setSecretCookie("secret_test_cookie,uname",  "�ۼ���" , "" , "" , "n")

	  '(6)������ �ʿ��� ��� - �� ��������
	  Dim secret
	  secret = GetSecretCookie("secret_test_cookie,uname")
	  Response.write("secret_cookie:" & secret )
%>