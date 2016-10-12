<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>社团管理系统</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">
    <style>
    </style>
</head>
<body>
<%
    String telephone=request.getParameter("telephone");

%>
<div class="page-group">
    <!-- 你的html代码 -->
    <div class="page">
        <div class="content">
            <!-- 这里是页面内容区 -->
            <header class="bar bar-nav">
                <a class="button button-link button-nav pull-left back" href="#" data-transition='slide-out'>
                    <span class="icon icon-left"></span>
                    返回
                </a>
                <h1 class='title'>登录</h1>
            </header>
            <div class="content">
                <form action="/user/login" method="post" id="user_login">
                    <div class="list-block">
                        <ul>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-name"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">手机</div>
                                        <div class="item-input">
                                            <input type="text" name="user.telephone" placeholder="number" value="<%=telephone%>" >
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-password"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">密码</div>
                                        <div class="item-input">
                                            <s:password name="user.password" placeholder="Password"></s:password>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="content-block">
                        <div class="row">
                            <div class="col-50"><a href="#" class="button button-big button-fill button-danger back">忘记密码</a>
                            </div>
                            <div class="col-50"><a href="javascript:document:user_login.submit();"
                                                   class="button button-big button-fill button-success">登录</a></div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
<script>
    $.init();
</script>
</body>
</html>