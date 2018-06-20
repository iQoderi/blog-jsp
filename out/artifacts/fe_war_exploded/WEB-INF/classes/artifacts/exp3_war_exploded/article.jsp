<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta charset="gbk">
    <title>Catango</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/modernizr.js"></script>
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

<article>
    <div class="l_box">
        <div class="about_me">
            <h2>关于我</h2>
            <ul>
                <i><img src="images/avatar.jpg"></i>
                <p><b>Catango</b>，喵喵喵喵喵喵喵喵喵喵喵喵</p>
            </ul>
        </div>
        <div class="category">
            <h2>文章分类</h2>
            <ul>
                <li><a href="/">学无止境（33）</a></li>
                <li><a href="/">日记（19）</a></li>
                <li><a href="/">慢生活（520）</a></li>
                <li><a href="/">美文欣赏（40）</a></li>
            </ul>
        </div>
        <div class="links">
            <h2>友情链接</h2>
            <ul>
                <a href="http://www.marklux.cn">MarkLux</a>
            </ul>
        </div>
    </div>

    <div class="r_box">
    </div>
</article>
<footer>
    <p>Design by <a href="www.catango.cn" target="_blank">Catango</a></p>
</footer>

</body>

</html>
