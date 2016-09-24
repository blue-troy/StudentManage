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
                <h1 class="title">社团列表</h1>
            </header>
            <div class="bar bar-header-secondary">
                <form action="group/Group-list" method="post" id="group_list" style="margin-bottom: 0px;">
                    <div class="searchbar row">
                        <div class="search-input col-85">
                            <input type="search" id='search' name="gname" placeholder='搜索社团'/>
                        </div>
                        <a class="button button-fill button-primary col-15" href="javascript:document:group_list.submit();" style="top: auto;"><span class="icon icon-search"></span></a>
                    </div>
                </form>
            </div>
            <div class="content">
                <div class="list-block media-list">
                    <ul>
                        <s:iterator value="groups" var="g">
                            <li>
                                <a href="Group-info.jsp?id=<s:property value="#g.id"/>&name=<s:property value="#g.name"/>&teacher=<s:property value="#g.teacher"/>&date=<s:property value="#g.date"/>&organization=<s:property value="#g.organization"/>&info=<s:property value="#g.info"/> "class="item-link item-content">
                                    <div class="item-media"><img src="http://gqianniu.alicdn.com/bao/uploaded/i4//tfscom/i3/TB10LfcHFXXXXXKXpXXXXXXXXXX_!!0-item_pic.jpg_250x250q60.jpg" style='width: 4rem;'></div>
                                    <div class="item-inner">
                                        <div class="item-title-row">
                                            <div class="item-title"> <s:property value="#g.name"/></div>
                                        </div>
                                        <div class="item-subtitle">组织：<s:property value="#g.organization"/> 指导老师：<s:property value="#g.teacher"/></div>
                                        <div class="item-text"><s:property value="#g.info"/>...</div>
                                    </div>
                                </a>
                            </li>
                        </s:iterator>
                    </ul>
                </div>
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