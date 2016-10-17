<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <%--<base href="<%=basePath%>">--%>
    <%--不知为什么有了basepath以后侧边栏不能使用--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>社团管理系统</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <%--<link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">--%>
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
            <h5 align="center">用户名：<%=session.getAttribute("user_name") %>
            </h5>
            <p><a href="Group-creat.jsp" class="button button-big button-fill button-danger">创建社团 </a></p>
            <p><a href="admin/Admin-list" class="button button-big button-fill button-danger">管理社团 </a></p>
            <p><a href="group/Group-list" class="button button-big button-fill button-success">加入社团 </a></p>
            <p><a href="#" class="button button-fill open-panel" data-panel='#panel-left-demo'>打开左侧栏</a></p>
        </div>
    </div>
    <div class="panel-overlay"></div>
    <!-- Left Panel with Reveal effect -->
    <div class="panel panel-left panel-reveal theme-dark" id='panel-left-demo'>
        <%--<div class="content-block">--%>
            <%--<p>用户名</p>--%>
            <%--<p>你可以在这里放用户设置页面</p>--%>
            <%--<p><a href="#" class="close-panel">关闭</a></p>--%>
        <%--</div>--%>
        <div class="list-block">
            <ul>
                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">姓名</div>
                            <input type="text" value="<%=session.getAttribute("user_name")%>">
                        </div>
                    </div>
                </li>

                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">性别</div>
                            <input type="text" value="<%=session.getAttribute("user_sex")%>">
                        </div>
                    </div>
                </li>

                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">学院专业</div>
                            <input type="text" value="<%=session.getAttribute("user_major")%>">
                        </div>
                    </div>
                </li>


                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">电话</div>
                            <input type="text" value="<%=session.getAttribute("user_telephone")%>">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">qq</div>
                            <input type="text" value="<%=session.getAttribute("user_qq")%>">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="item-content">
                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                        <div class="item-inner">
                            <div class="item-title label">邮箱</div>
                            <input type="text" value="<%=session.getAttribute("user_email")%>">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<%--<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>--%>
<script>
    $.init();
</script>
</body>
</html>