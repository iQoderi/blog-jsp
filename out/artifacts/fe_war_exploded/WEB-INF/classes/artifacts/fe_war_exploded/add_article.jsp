<%--
  Created by IntelliJ IDEA.
  User: catango
  Date: 2018/6/18
  Time: 下午7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getContextPath();
%>
<link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<link href="<%=path%>/editormd/css/editormd.min.css" rel="stylesheet" type="text/css"/>
<head>
    <title>Catango</title>
</head>
<body class="body">
<header>
    <div class="logo">Blog</div>
    <%@ include file="nav.jsp" %>
    <script>
        window.onload = function () {
            var obj = null;
            var As = document.getElementById('nav').getElementsByTagName('a');
            obj = As[0];
            for (i = 1; i < As.length; i++) {
                if (window.location.href.indexOf(As[i].href) >= 0)
                    obj = As[i];
            }
            obj.id = 'selected'
        }
    </script>
</header>

<div align="left">
    <form action="AddBlogServlet" method="post" >
        <div style="margin-left: 15%">
            <label for="title_input" style="size: A4;color: #dee2db;">标题</label>
            <input name="title" type="text" class="form-control" id="title_input" placeholder="请输入文章标题" style="width: 300px">
            <label for="category_select" style="size: A4;color: #dee2db;">分类</label>
            <select name="type" class="form-control" id="category_select" style="width: 300px">
                <option value="情感">情感</option>
                <option value="分享">分享</option>
                <option value="日志">日志</option>
            </select>
        </div>

        <div id="test-editormd" style="margin-top: 20px">
    <textarea name="content"  style="display:none;">
</textarea>
        </div>

        <div align="center">
            <%--<form id="add_article" action="add" method="post">--%>
            <%--<input id="content" type="hidden" name="content"/>--%>
            <%--<input id="title" type="hidden">--%>
            <%--<input id="category" type="hidden">--%>
                <button type="submit" class="btn btn-primary">发布</button>
            <%--</form>--%>
        </div>
    </form>
</div>
</body>


<!-- editormd start -->
<script src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/editormd/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;
    $(function () {
        testEditor = editormd("test-editormd", {
            width: "70%",
            height: 640,
            syncScrolling: "single",
            path: "../editormd/lib/"
        });
        /*
        // or
        testEditor = editormd({
            id      : "test-editormd",
            width   : "90%",
            height  : 640,
            path    : "../lib/"
        });
        */
    });

    function commit() {
        document.getElementById('content').value = testEditor.getMarkdown();
        document.getElementById('title').value = document.getElementById('title_input').value;
        document.getElementById('category').value = document.getElementById('category_select').value;
        document.getElementById('add_article').submit()
    }
</script>

</html>
