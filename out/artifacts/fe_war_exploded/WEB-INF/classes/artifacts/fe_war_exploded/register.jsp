<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta charset="gbk">
    <title>Catango</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/modernizr.js"></script>
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

<article>
    <%@ include file="side_menu.jsp" %>
    <div class="r_box">
        <form action="RegisterServlet" method="post" class="form">
            <div class="form-group">
                <label class="white" for="exampleFormControlInput1">用户名</label>
                <input name="username" type="text" class="form-control" id="exampleFormControlInput1" placeholder="请输入用户名">
            </div>
            <div class="form-group">
                <label class="white" for="exampleFormControlInput2">密码</label>
                <input name="password" type="password" class="form-control" id="exampleFormControlInput2" placeholder="请输入用户密码">
            </div>
            <div class="form-group">
                <label class="white" for="exampleFormControlSelect1">密保问题</label>
                <select name="question" class="form-control" id="exampleFormControlSelect1">
                    <option value="你喜欢吃什么">你喜欢吃什么</option>
                    <option value="你喜欢喝什么">你喜欢喝什么</option>
                    <option value="你喜欢玩什么">你喜欢玩什么</option>
                </select>
            </div>
            <div class="form-group">
                <label class="white" for="exampleFormControlInput3">答案</label>
                <input name="answer" type="password" class="form-control" id="exampleFormControlInput3" placeholder="请输入答案">
            </div>
            <button type="submit" class="btn btn-primary">注册</button>
            <a class="blue" href="forget.jsp" >登录</a>
        </form>
    </div>
</article>
<%@ include file="footer.jsp" %>

</body>

</html>
