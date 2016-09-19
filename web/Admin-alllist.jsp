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
    <link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
    </style>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">新生信息详细表</div>
            <table class="table">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>学院专业</th>
                        <th>电话</th>
                        <th>qq</th>
                        <th>邮箱</th>
                        <th>个人简介</th>
                    </tr>
                </thead>
                <%int i=1;%>
                <s:iterator value="users" var="u" >
                    <tr>
                        <th scope="row"><%=i++%></th>
                        <th><s:property value="#u.name"/></th>
                        <th><s:property value="#u.sex"/></th>
                        <th><s:property value="#u.major"/></th>
                        <th><s:property value="#u.telephone"/></th>
                        <th><s:property value="#u.qq"/></th>
                        <th><s:property value="#u.email"/></th>
                        <th><s:property value="#u.info"/></th>
                    </tr>
                </s:iterator>

            </table>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/TableExport/3.2.9/js/tableexport.min.js"></script>
<script>
    $('#tb_departments').bootstrapTable({
        url: '/Export/GetDepartment',         //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        clickToSelect:true,
        showExport: true,                     //是否显示导出
        exportDataType: "basic",              //basic', 'all', 'selected'.
        columns: [{
            checkbox: true
        }, {
            field: 'id',
            title: 'id'
        }, {
            field: 'name',
            title: '姓名'
        }, {
            field: 'major',
            title: '学院专业'
        }, {
            field: 'telephone',
            title: '电话'
        }, {
            field: 'qq',
            title: 'QQ'
        },{
            field: 'email',
            title: '邮箱'
        },{
            field: 'info',
            title: '个人简介'
        },]
    });
</script>
</body>
</html>