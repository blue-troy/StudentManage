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
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <%--<script src="//cdn.bootcss.com/bootstrap-table/1.11.0/bootstrap-table.js"></script>--%>
    <%--<script src="//cdn.bootcss.com/bootstrap-table/1.11.0/extensions/export/bootstrap-table-export.js"></script>--%>
    <%--<script src="//cdn.bootcss.com/TableExport/3.2.9/js/tableexport.min.js"></script>--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="js/FileSaver.min.js"></script>
    <script type="text/javascript" src="js/tableExport.js"></script>
    <style>
    </style>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">新生信息详细表</div>
        <a href="#"
           onclick="$('.table').tableExport({type:'excel', excelstyles:['border-bottom', 'border-top', 'border-left', 'border-right']});">Export
            to Excel</a>
        <table class="table"/>
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
        <s:iterator value="users" var="u">
            <tr>
                <td scope="row">1</td>
                <td><s:property value="#u.name"/></td>
                <td><s:property value="#u.sex"/></td>
                <td><s:property value="#u.major"/></td>
                <td><s:property value="#u.telephone"/></td>
                <td><s:property value="#u.qq"/></td>
                <td><s:property value="#u.email"/></td>
                <td><s:property value="#u.info"/></td>
            </tr>
        </s:iterator>

        </table>
    </div>
</div>

<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>