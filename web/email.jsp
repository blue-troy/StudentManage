<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>社团管理系统</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <%--<link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">--%>
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <%--<script type="text/javascript" src="js/FileSaver.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/tableExport.js"></script>--%>
    <script>
        function test(email) {
            var params = {
                email : email,
            };
            $.ajax({
                type:'POST',
                url:'/json/email',
                data:params,
                dataType:'text',
                success:function (result) {
                       alert(result);
                    }
            });

        }
    </script>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <button onclick="test(123456);">email</button>
    </div>
</div>

<%--<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>--%>
</body>
</html>