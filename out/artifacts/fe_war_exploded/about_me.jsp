<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta charset="gbk">
    <title>Catango</title>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <link rel="stylesheet" href="css/about_me.css">
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
        <div class="post-content">
            <p><i class="fa fa-user"></i> Nickname: <a href="/">cici</a></p>
            <p><i class="fa fa-envelope"></i> Email: <a href="cici@163.com" target="_blank" rel="noopener">cici@163.com</a></p>
            <p><i class="fa fa-github"></i> Weibo: <a href="https://Weibo.com/cici" target="_blank" rel="noopener">@cici</a>
        </div>
    </div>
</article>
<%@ include file="footer.jsp" %>

</body>

</html>
