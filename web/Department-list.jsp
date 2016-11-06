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
        <div class="content">
            <!-- 这里是页面内容区 -->
            <header class="bar bar-nav">
                <a class="button button-link button-nav pull-left back" href="#" data-transition='slide-out'>
                    <span class="icon icon-left"></span>
                    返回
                </a>
                <h1 class='title'>部门列表</h1>
            </header>
            <div class="content">
                <div class="list-block contacts-block">
                    <div content="list-group">
                        <ul>
                            <s:iterator value="departments" var="d">
                                <li>
                                    <a href="/Department-info.jsp?departmentId=<s:property value="#d.id"/>&departmentName=<s:property value="#d.name"/>&groupId=<s:property value="#d.gid"/> "
                                       class="item-link item-content">
                                        <div class="item-content">
                                            <div class="item-inner">
                                                <div class="item-title"><s:property value="#d.name"></s:property></div>
                                                <%--部门名称--%>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </s:iterator>
                        </ul>
                    </div>
                </div>
                <s:debug></s:debug>
                <p><a href="#" class="button button-big button-fill button-danger back">返回 </a></p>
                <p><a href="group/Department-info?gid=<%=id%>" class="button button-big button-fill">选择部门</a></p>
                <%--<p><a href="group/Group-join?gid=<%=id%>&gname=<%=name%>"--%>
                <%--class="button button-big button-fill button-success">加入社团 </a></p>--%>
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