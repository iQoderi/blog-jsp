<%@ page import="java.util.List,org.seven.vo.Blog" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <%@include file="top_menu.jsp"%>
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
    <% List list  = (List)request.getAttribute("list");
    %>

    <div class="r_box">
        <c:forEach items="${list}" var="blog" >
            <li><i><a href="/"></a></i>
                <h3><a href="FindBlogServlet?id=${blog.getId()}">${blog.getTitle()}</a></h3>
                <a>分类:</a> <a href="/">${blog.getType()}</a>
                <p>${blog.getContent()}</p>
            </li>
        </c:forEach>
        <div class="page_list"><a class="allpage"><b>99</b>
        </a>
            &nbsp;&nbsp;
            <a href="#" class="curPage">1</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(2)">2</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(3)">3</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(4)">4</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(5)">5</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(6)">6</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(7)">7</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(8)">8</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(9)">9</a>
            &nbsp;&nbsp;
            <a href="#" onclick="page(2)">下一页</a>
        </div>
    </div>
</article>
<%@ include file="footer.jsp" %>
</body>

</html>
