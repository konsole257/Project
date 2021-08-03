    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no, email=no, address=no">
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

    <link rel="canonical" href="url">
    <meta property="og:site_name" content="양영재단">

    <meta property="og:type" content="website">
    <meta property="og:title" content="title">
    <meta property="og:image" content="image">
    <meta property="og:url" content="url">
    <meta property="og:description" content="description">

    <link rel="apple-touch-icon-precomposed" href="{{dirRoot}}/resources/images/common/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="{{dirRoot}}/resources/images/common/favicon.ico">

    <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/lib/normalize.min.css" />
    <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/lib/jquery-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/lib/swiper.min.css" />

    <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/common.css" />

    <% If page = "main" Then %>
        <!-- 메인 : main.css -->
        <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/main.css" />
    <% Else %>
        <!-- 메인제외 나머지 : sub.css -->
        <link rel="stylesheet" type="text/css" href="{{dirRoot}}/resources/css/sub.css" />
    <% End If %>



    <!-- <title>페이지명 - 양영재단</title> -->
    <title><%= pageName %> - 양영재단</title>
