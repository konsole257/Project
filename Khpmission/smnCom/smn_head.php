<?php
    $dirName = dirname($_SERVER['REQUEST_URI']);
    $fileName = basename($_SERVER['REQUEST_URI'],".php");
?>

<?php if ($_SERVER["REQUEST_URI"] === '/' || $_SERVER["REQUEST_URI"] === '/index.php') { ?>
        <link href="/images/include/css/main.css" type="text/css" rel="stylesheet">
<?php } else { ?>
        <link href="/images/include/css/sub.css" type="text/css" rel="stylesheet">
<?php } ?>

<meta charset="UTF-8" />

<script type="text/javascript">
<!--
	//alert("111");

	//모바일 기기에서 접속시 모바일 메인페이지로 이동
	if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
	{
		location.href = "/mobile/index.asp"	;
	}
	else if (navigator.userAgent.match(/Android|android/) != null)
	{
		location.href = "/mobile/index.asp"	;
	}

//-->
</script>

<title>::: 성민선교회 :::</title>
