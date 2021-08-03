<%@ page contentType = "text/html; charset=UTF-8" %>

<!-- head include -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=1280" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="description" content="" />
	<meta name="keywords"    content="" />
	<meta name="author"      content="" />
	<link rel="shortcut icon" href="/avenueCom/images/common/avenue.ico"/>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/common.css" />
	<script src="/avenueCom/js/jquery-1.11.3.min.js" type="text/javascript"></script>
	<script src="/avenueCom/js/jquery.lazyload.js" type="text/javascript"></script>
	<script src="/avenueCom/js/jquery.dotdotdot.js" type="text/javascript"></script>
	<script src="/avenueCom/js/webfontloader.js" type="text/javascript"></script>
	<script src="/avenueCom/js/jquery.pajinate.js" type="text/javascript"></script>
	<script src="/avenueCom/js/script.js" type="text/javascript"></script>

	<title><% if ( !path4tit.equals("") ){ %><%=path4tit%>-<% } %><% if ( !path3tit.equals("") ){ %><%=path3tit%>-<% } %><% if ( !path2tit.equals("") ){ %><%=path2tit%>-<% } %><% if ( !path1tit.equals("") ){ %><%=path1tit%>-<% } %>UNDER STAND AVENUE</title>
<!-- //head include -->


<script>
$(window).load(function(){
	$('a').click(function(e){
		if ($(this).attr('href').indexOf('/shop/') !== -1) {
			e.preventDefault();

			var warkshopText = "가치 소비를 제안하는 WALKSHOP 온라인이 더 나은 모습으로 찾아 뵙기 위해 정비기간을 갖습니다.\n (2017.12.29 금 ~ 2018.1.14 일)"
			alert(warkshopText)
		}
	});
});
</script>
