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

</head>
<body>
<div class="page-group">
    <div class="page">
        <div class="content">

            <header class="bar bar-nav">
                <a class="button button-link button-nav pull-left back" href="#" data-transition='slide-out'>
                    <span class="icon icon-left"></span>
                    返回
                </a>
                <h1 class='title'>注册</h1>
            </header>

            <div class="content">
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
                                            <input type="text" id="name" name="user.name" placeholder="Your name">
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
                                            <input type="text" id="telephone" name="user.telephone"
                                                   placeholder="telephone">
                                        </div>
                                        <a href="#" class="button button-fill" onclick="check_phone()">验证</a>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-email"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">邮箱</div>
                                        <div class="item-input">
                                            <input id="email" type="email" name="user.email" placeholder="E-mail"
                                                   onBlur="check_email()">
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
                                            <input id="qq" type="email" name="user.qq" placeholder="QQ">
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-gender"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">学院专业</div>
                                        <input name="user.Major" id='city-picker' type="text">
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item-content">
                                    <div class="item-media"><i class="icon icon-form-password"></i></div>
                                    <div class="item-inner">
                                        <div class="item-title label">密码</div>
                                        <div class="item-input">
                                            <input type="password" name="user.password" placeholder="密码可为空">
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
                                            <select name="user.sex" id="sex">
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
                                        <div class="item-input">
                                            <textarea name="user.info" title=""></textarea>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="content-block">
                        <div class="row">
                            <div class="col-50"><a href="#"
                                                   class="button button-big button-fill back ">取消</a></div>
                            <%--<div class="col-50"><a href="#" class="button button-big button-fill button-success disabled" id="register" >提交</a></div>--%>
                            <%--<div class="col-50"><a href="javascript:document:user_register.submit();"--%>
                            <%--class="button button-big button-fill button-success ">提交</a></div>
                            --%>
                            <div class="col-50"><a href="#" onclick="check_isnull()"
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
    function register_with_check_phone() {
        $.ajax({
            type: 'POST',
            url: '/user/register_with_check_phone',
            data: $('#user_register').serialize(),
            dataType: 'json',
            success: function (result) {
                if (result.status.match(0)) {
                    $.confirm('号码已经被注册，是否直接登录',
                            function () {
//                                传号码值，进入登录页面
//                                alert("传号码值，进入登录页面")
                                var url = "/login.jsp?telephone=" + $("#telephone").val()
                                window.location.assign(url)
                            },
                            function () {
//                                清空号码值
                                $("#telephone").val("")
                            }
                    );
                } else {
//                    $.alert("账号没被注册")
//                    document.getElementById("email").disabled=""
//                    document.getElementById("email").focus()
//                    document:user_register.submit()
                    $.alert("注册成功", function () {
                        window.location.assign("/groupindex.jsp")
                    })
                }
            }
        });
    }
    //    验证输入值
    function check_phone() {
        var params = {
            telephone: $("#telephone").val(),
        };
        $.ajax({
            type: 'POST',
            url: '/user/check_phone',
            data: params,
            dataType: 'json',
            success: function (result) {
                if (result.status.match(0)) {
                    $.confirm('号码已经被注册，是否直接登录',
                            function () {
//                                传号码值，进入登录页面
//                                alert("传号码值，进入登录页面")
                                var url = "/login.jsp?telephone=" + $("#telephone").val()
                                window.location.assign(url)
                            },
                            function () {
//                                清空号码值
                                $("#telephone").val("")
                                document.getElementById("email").focus()
                            }
                    );
                } else {
                    $.alert("账号没被注册")
//                    document.getElementById("email").disabled=""
//                    document.getElementById("email").focus()

                }
            }
        });

    }

    //    验证各项输入值
    function check_email() {
        var email = $('#email').val()
        with (email) {
            apos = email.indexOf("@")
            dotpos = email.lastIndexOf(".")
            if (apos < 1 || dotpos - apos < 2) {
                $.alert("邮件格式错误", function () {
//                $.alert("shit")
                    $('#email').val("")
//                document.getElementById("email").focus()
                })
//            清空
//            重置焦点位置到emial
            } else {
//            重置焦点位置到下一个
//            alert("格式正确")
                document.getElementById("qq").disabled = ""
                document.getElementById("qq").focus()
            }
        }
    }

    //验证是否需要的值都输入了
    function check_isnull() {
        var name = document.getElementById("name").value.trim()
        var telephone = document.getElementById("telephone").value.trim()
        var email = document.getElementById("email").value.trim()
        var qq = document.getElementById("qq").value.trim()
        var major = document.getElementById("city-picker").value.trim()
        var sex = document.getElementById("sex").value.trim()
        if (name == null || name == "") {
            $.alert("姓名不能为空")
            document.getElementById("name").focus()
        } else if (telephone == null || telephone == "") {
            $.alert("手机号码不能为空")
            document.getElementById("telephone").focus()
        } else if (email == null || email == "") {
            $.alert("邮箱不能为空")
            document.getElementById("email").focus()
        } else if (qq == null || qq == "") {
            $.alert("QQ不能为空")
            document.getElementById("qq").focus()
        } else if (major == null || major == "") {
            $.alert("学院专业不能为空")
            document.getElementById("city-picker").click()
        } else if (sex == null || sex == "") {
            $.alert("性别不能为空")
            document.getElementById("sex").focus()
        } else {
            register_with_check_phone()
        }

    }
    //    选择学院专业
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