<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <%--不知为什么有了basepath以后侧边栏不能使用--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>社团管理系统</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">

</head>
<body>
<div class="page-group">
    <!-- 你的html代码 -->
    <div class="page">
        <header class="bar bar-nav">
            <a class="icon icon-me pull-left my-btn" data-panel="#panel-left-demo"></a>
            <h1 class='title'>管理社团</h1>
        </header>
        <nav class="bar bar-tab">
            <a class="tab-item external " href="group/Group-list">
                <span class="icon icon-search"></span>
                <span class="tab-label">加入社团</span>
            </a>
            <a class="tab-item external active" href="admin/Admin-list">
                <span class="icon icon-settings"></span>
                <span class="tab-label">管理社团</span>
            </a>
            <a class="tab-item external" href="Group-creat.jsp">
                <span class="icon icon-friends"></span>
                <span class="tab-label">创建社团</span>
            </a>
        </nav>
        <div class="content">
            <div class="list-block">

            </div>
        </div>
        </div>
            <div class="panel-overlay"></div>
            <div class="panel panel-left panel-reveal theme-dark" id='panel-js-demo'>
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
</div>
            <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
            <script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
            <script>
                $(document).on("click", ".my-btn", function () {
                    $.openPanel("#panel-js-demo");
                });
                $("#picker").picker({
                    toolbarTemplate: '<header class="bar bar-nav">\
                  <button class="button button-link pull-left">按钮</button>\
                  <button class="button button-link pull-right close-picker">确定</button>\
                  <h1 class="title">标题</h1>\
                  </header>',
                    cols: [
                        {
                            textAlign: 'center',
                            values: ['iPhone 4', 'iPhone 4S', 'iPhone 5', 'iPhone 5S', 'iPhone 6', 'iPhone 6 Plus', 'iPad 2', 'iPad Retina', 'iPad Air', 'iPad mini', 'iPad mini 2', 'iPad mini 3']
                        }
                    ]
                });
                $.init();
            </script>
</body>
</html>