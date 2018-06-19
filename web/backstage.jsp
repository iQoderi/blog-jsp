<%--
  Created by IntelliJ IDEA.
  User: catango
  Date: 2018/6/18
  Time: 上午10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    #table {
        margin: 30px;
    }

</style>
<head>
    <title>backstage</title>
</head>
<body class="body">
<table id="table" class="table">
    <tr>
        <td>ID</td>
        <td>文章名</td>
        <td>分类</td>
        <td>创建日期</td>
        <td>修改日期</td>
    </tr>
    <%--for循环添加文章列表--%>
    <tr>
        <td>ID</td>
        <td>文章名</td>
        <td>分类</td>
        <td>创建日期</td>
        <td>修改日期</td>
        <td>修改日期</td>
    </tr>
</table>
<div align="center">
    <a class="btn btn-default" href="add_article.jsp" role="button" style="margin-bottom: 20px">添加文章</a>
    <br/>
    <a class="btn btn-default" href="#" role="button" style="margin-bottom: 20px">编辑个人信息</a>
    <br/>
    <a class="btn btn-default" href="#" role="button" style="margin-bottom: 20px">编辑分类信息</a>
</div>
<br/>
<div align="center">
</div>
</body>
</html>
