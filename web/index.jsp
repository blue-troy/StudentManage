<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>社团管理系统</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <%--图标待制作--%>
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">
    <style>
    </style>
</head>
<body>
<div class="page-group">
    <!-- 你的html代码 -->
    <div class="page">
        <div class="content-padded">
            <!-- 这里是页面内容区 -->
            <h2 align="center" style="color: #0f88eb">社团管理系统</h2>
            <h5 align="center">科技是第一生产力</h5>
            <div align="center">
            <img src="images/logo.png"  style="width: 6rem;">
            </div>
            <p><a href="register.jsp" class="button button-big button-fill external">注册 </a></p>
            <p><a href="login.jsp" class="button button-big button-fill button-success ">登录 </a></p>
            <p><a href="http://159.203.237.145/wordpress/" class="external"
                  style="color:#aebdc9;font-size: 12px;text-align: center; display: block;">海风商创出品 · 何益鑫</a></p>
        </div>
    </div>

</div>

<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
</body>
</html>