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
                <h1 class='title'>部门信息</h1>
            </header>
            <div class="content">
                <form action="admin/Department-create" id="Department-create">
                    <div class="list-block">
                        <ul>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-name"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">部门名称</div>
                                        <div class="item-input">
                                            <input type="text" name="department.name" placeholder="Your departmentname">
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <input type="hidden" name="department.gid" value="<s:property value="gid"/> ">

                            <li class="align-top">
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-comment"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">部门简介</div>
                                        <div class="item-input">
                                            <textarea>功能待完善，数据库字段未添加。</textarea>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <s:debug></s:debug>
                    <p><a href="#" class="button button-big button-fill button-danger back">返回 </a></p>
                    <p><a href="javascript:document:Department-create.submit();" class="button button-big button-fill">继续创建</a></p>
                    <p><a href="#" class="button button-big button-fill button-danger back">完成 </a></p>
                </form>
            </div>

        </div>
    </div>
</div>
<s:debug></s:debug>

<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
<script>
    $.init();
</script>
</body>
</html>