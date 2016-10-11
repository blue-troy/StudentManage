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
    <script src="//cdn.bootcss.com/jquery/3.1.1/jquery.js"></script>
    <script>
        function check() {
            var params = {
                telephone :$("#telephone").val(),
            };
            $.ajax({
                type:'POST',
                url:'/user/checkuser',
                data:params,
                dataType:'json',
                success:function (result) {
                    if(result.status.match(0)){
//                        alert("账号已经被注册");
                        $("#telephone").attr("placeholder","账号已经被注册");
                    }else {
                        alert("账号没被注册");
                    }
                }
            });

        }
    </script>

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
                <h1 class='title'>注册</h1>
            </header>

            <div class="content">
                <%--<button onclick="checkemail(12312);">test</button>--%>
                <form action="/user/register" method="post" id="user_register">
                    <div class="list-block">
                        <ul>
                            <!-- Text inputs -->
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-name"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">姓名</div>
                                        <div class="item-input">
                                            <input type="text" name="user.name" placeholder="Your name" required
                                                   data-rule-required="true" data-msg-required="请输入姓名">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-telephone"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">手机</div>
                                        <div class="item-input">
                                            <input type="email" id="telephone" name="user.telephone"  required
                                                   data-rule-required="true" placeholder="telephone">
                                            <%--<input type="button" onclick="check();">--%>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-email"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">邮箱</div>
                                        <div class="item-input">
                                            <input type="email" name="user.email" placeholder="E-mail">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-QQ"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">QQ</div>
                                        <div class="item-input">
                                            <input type="email" name="user.qq" placeholder="QQ" required
                                                   data-rule-required="true" data-msg-required="请输入QQ">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-gender"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">学院专业</div>
                                        <input name="user.Major" type="text" id='city-picker' required
                                               data-rule-required="true" data-msg-required="请选择专业"/>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-password"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">密码</div>
                                        <div class="item-input">
                                            <input type="password" name="user.password" placeholder="Password" class=""
                                                   required data-rule-required="true" data-msg-required="请输入密码">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-gender"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">性别</div>
                                        <div class="item-input">
                                            <select name="user.sex">
                                                <option value="男">男</option>
                                                <option value="女">女</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="align-top">
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-comment"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">自我介绍</div>
                                        <div class="item-input" required data-rule-required="true"
                                             data-msg-required="请输入自我介绍">
                                            <textarea name="user.info"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="content-block">
                        <div class="row">
                            <div class="col-50"><a href="#"
                                                   class="button button-big button-fill button-danger back">取消</a></div>
                            <%--<div class="col-50"><a href="#" class="button button-big button-fill button-success disabled" id="register" >提交</a></div>--%>
                            <div class="col-50"><a href="javascript:document:user_register.submit();"
                                                   class="button button-big button-fill button-success ">提交</a></div>
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
<script type='text/javascript' src='<%=basePath%>js/sm-city-picker.min.js' charset='utf-8'></script>
<script>
    $("#city-picker").cityPicker({
        toolbarTemplate: '<header class="bar bar-nav">\
    <button class="button button-link pull-right close-picker">确定</button>\
    <h1 class="title">选择学院专业</h1>\
    </header>'
    });
    $.init();
</script>
</body>
</html>