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
                <h1 class='title'>社团信息</h1>
            </header>
            <%
                String id =request.getParameter("id");
                String name=request.getParameter("name");
                String date=request.getParameter("date");
                String teacher=request.getParameter("teacher");
                String organization=request.getParameter("organization");
                String info=request.getParameter("info");
            %>
            <div class="content">
                <div class="list-block">
                    <ul>
                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-name"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">社团名称</div>
                                    <input type="text" value="<%=name%>">
                                    </div>
                                </div>
                        </li>


                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-name"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">指导老师</div>
                                    <input type="text" value="<%=teacher%>">
                                </div>
                            </div>
                        </li>


                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-calendar"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">成立时间</div>
                                        <input type="date" value="<%=date%>">
                                </div>
                            </div>
                        </li>



                        <li>
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-gender"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">所属机构</div>
                                    <input type="text" value="<%=organization%>">
                                </div>
                            </div>
                        </li>
                        </li>


                        <li class="align-top">
                            <div class="item-content">
                                <div class="item-media"><i class="icon icon-form-comment"></i></div>
                                <div class="item-inner">
                                    <div class="item-title label">社团简介</div>
                                    <div class="item-input">
                                        <textarea><%=info%></textarea>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p><a href="Group-creat.jsp" class="button button-big button-fill button-danger">返回 </a></p>
                <p><a href="group/Group-join?gid=<%=id%>&gname=<%=name%>" class="button button-big button-fill button-success">加入社团 </a></p>
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