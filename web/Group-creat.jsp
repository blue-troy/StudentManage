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
        <header class="bar bar-nav">
            <a class="icon icon-me pull-left my-btn" data-panel="#panel-left-demo"></a>
            <h1 class='title'>创建社团</h1>
        </header>
        <nav class="bar bar-tab">
            <a class="tab-item external" href="group/Group-list">
                <span class="icon icon-search"></span>
                <span class="tab-label">加入社团</span>
            </a>
            <a class="tab-item external" href="Group-manage.jsp">
                <span class="icon icon-settings"></span>
                <span class="tab-label">管理社团</span>
                <%--&lt;%&ndash;<span class="badge">2</span>&ndash;%&gt;提示消息数目--%>
            </a>
            <a class="tab-item external active" href="Group-creat.jsp">
                <span class="icon icon-friends"></span>
                <span class="tab-label">创建社团</span>
            </a>
        </nav>
        <div class="content">
            <!-- 这里是页面内容区 -->
            <div class="creat">

                <div class="content">
                    <form action="group/Group-creat" method="post" id="group_creat">
                        <div class="list-block">
                            <ul>
                                <li>
                                    <div class="item-content">
                                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title label">社团名称</div>
                                            <div class="item-input">
                                                <input type="text" name="group.name" placeholder="Your groupname">
                                            </div>
                                        </div>
                                    </div>
                                </li>


                                <li>
                                    <div class="item-content">
                                        <div class="item-media"><i class="icon icon-form-name"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title label">指导老师</div>
                                            <div class="item-input">
                                                <input type="text" name="group.teacher" placeholder="Your Teacher">
                                            </div>
                                        </div>
                                    </div>
                                </li>


                                <li>
                                    <div class="item-content">
                                        <div class="item-media"><i class="icon icon-form-calendar"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title label">成立时间</div>
                                            <div class="item-input">
                                                <input type="date" name="group.date" placeholder="Birth day"
                                                       value="2014-04-30">
                                            </div>
                                        </div>
                                    </div>
                                </li>


                                <li>
                                    <div class="item-content">
                                        <div class="item-media"><i class="icon icon-form-gender"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title label">所属机构</div>
                                            <input type="text" name="group.organization" id='OrganizationPicker'/>
                                        </div>
                                    </div>
                                </li>


                                <li class="align-top">
                                    <div class="item-content">
                                        <div class="item-media"><i class="icon icon-form-comment"></i></div>
                                        <div class="item-inner">
                                            <div class="item-title label">社团简介</div>
                                            <div class="item-input">
                                                <textarea name="group.info"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="content-block">
                            <div class="row">
                                <div class="col-50"><a href="#"
                                                       class="button button-big button-fill button-danger back">取消</a>
                                </div>
                                <div class="col-50"><a href="javascript:document:group_creat.submit();"
                                                       class="button button-big button-fill button-success">提交</a></div>
                            </div>
                        </div>
                    </form>
                </div>

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
    <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
    <script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
    <script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
    <script>
        $(document).on("click", ".my-btn", function() {
            $.openPanel("#panel-js-demo");
        });
        $("#OrganizationPicker").picker({
            toolbarTemplate: '<header class="bar bar-nav">\
                                                          <button class="button button-link pull-right close-picker">确定</button>\
                                                          <h1 class="title">请选择称呼</h1>\
                                                          </header>',
            cols: [
                {
                    textAlign: 'center',
                    values: ['学生社团联合会（社联）', '交通运输管理学院', '信息科学技术学院', '航海学院', '交通运输装备与海洋工程学院', '法学院', '公共管理与人文学院', '马克思主义学院', '物理系']
                },
            ]
        });
        $.init();
    </script>
</body>
</html>