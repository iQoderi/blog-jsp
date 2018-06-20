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
<link href="css/base.css" rel="stylesheet">
<link href="<%=path%>/editormd/css/editormd.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head>
    <title>Catango</title>
</head>
<body class="body">
<header>
    <div class="logo">Blog</div>
    <nav id="nav">
        <ul>
            <li><a href="index.jsp">网站首页</a></li>
            <li><a href="list.html">我的日记</a></li>
            <li><a href="about.html">关于我</a></li>
            <li><a href="gbook.html">留言</a></li>
            <li><a href="infopic.html">内容页</a></li>
        </ul>
    </nav>
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
    <div style="margin-left: 15%">
        <label for="title" style="size: A4;color: #dee2db;">标题</label>
        <input type="text" class="form-control" id="title_input" placeholder="请输入文章标题" style="width: 300px">
        <label for="category" style="size: A4;color: #dee2db;">分类</label>
        <select class="form-control" id="category_select" style="width: 300px">
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
    </div>

    <div id="test-editormd" style="margin-top: 20px">
    <textarea style="display:none;">
</textarea>
    </div>

    <div align="center">
        <form id="add_article" action="add" method="post">
            <input id="content" type="hidden" name="content"/>
            <input id="title" type="hidden">
            <input id="category" type="hidden">
            <button type="button" class="btn btn-default" style="width: 80px ;margin-bottom: 100px;" onclick="commit()">
                保存
            </button>
        </form>
    </div>
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
