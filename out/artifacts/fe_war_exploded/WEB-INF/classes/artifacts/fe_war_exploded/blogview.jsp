<%@ page language="java" pageEncoding="UTF-8" import="org.seven.vo.*,org.seven.dao.*,org.seven.daoimpl.*,java.util.*" %>
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
    <link rel="stylesheet" href="css/blogview.css">
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
            <%
                Blog blog=(Blog)request.getAttribute("blog");

            %>
            <span class="blogtitle"><%=blog.getTitle() %></span><br/>
            <%=blog.getContent() %><br/>
            <%
                if(!blog.getImage().equals("NO")){
            %>
            <div class="blogimg"><img src="upload/<%=blog.getImage() %>" /></div>
            <%
                }
            %>
            发表于<span class="blogtime"><%=blog.getDatetime() %> 点击次数<%=blog.getTimes() %> 评论次数<%=(Integer)request.getAttribute("commentnumber") %></span>
        </div>
    </div>
</article>
<%@ include file="footer.jsp" %>

</body>

</html>
