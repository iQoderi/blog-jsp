<%@ page language="java" contentType="text/html;charset=UTF-8"
         import="org.seven.vo.*,org.seven.dao.*,org.seven.daoimpl.*,java.util.*"
         pageEncoding="utf-8"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>ColorFlames | Contact</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
    <%@ include file="nav.jsp" %>
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">

                <div class="article">
                    <h2><span>***de博客</span></h2>
                    <div class="clr"></div>

                    <%
                        //使用pager javabean的要求：
                        //ArrayList list中存放了所有的用户对象
                        //userlist存放在session中
                    %>
                    <pg:pager maxPageItems="5" url="blogall.jsp">
                        <table>
                            <c:forEach items="${sessionScope.list}" var="blog">
                                <pg:item>
                                    <tr> <td><a href="FindBlogServlet?id=${blog.id}">${blog.title}</a></td>
                                        <td><a href="DeleteBlogServlet?id=${blog.id}">删除博客</a></td></tr>
                                </pg:item>
                            </c:forEach>
                            <tr>
                                <td  >
                                    <pg:index>
                                        <pg:first><a href="${pageUrl }">第一页</a></pg:first>
                                        <pg:prev><a href="${pageUrl}">上一页</a></pg:prev>
                                        <pg:pages>
                                            <a href="${pageUrl}">[${pageNumber }]</a>
                                        </pg:pages>
                                        <pg:next><a href="${pageUrl}">下一页</a></pg:next>
                                        <pg:last><a href="${pageUrl }">最后一页</a></pg:last>
                                    </pg:index>
                                </td>
                            </tr>
                        </table>
                    </pg:pager>




                </div>
            </div>
            <%@include file="side_menu.jsp" %>

        </div></div>
</div><!--main end-->
<%@ include file="footer.jsp" %></body>
</html>
