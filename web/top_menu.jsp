<%--
  Created by IntelliJ IDEA.
  User: qoder
  Date: 2018/6/20
  Time: 上午2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.seven.vo.User" contentType="text/html;charset=UTF-8" language="java" %>
<div class="menu_nav">
    <ul>
        <%--<li ><a href="index.jsp"><span>首页</span></a></li>--%>
        <li><a href="add_article.jsp"><span>发布博客</span></a></li>
        <li><a href="FindAllBlogServlet"><span>管理博客</span></a></li>
        <li>
                <%
        User user=(User)session.getAttribute("user");
     if(user==null){
    	 %>
            <a href="login.jsp"><span>用户登录 </span></a>
                <%
     }else{
    	 %>
            <a href="LogoutServlset"><span>用户注销 </span></a>
                <%
    	 if(user.getType().equals("2")){
    		 %>
        <li><a href="manager.jsp"><span>用户管理 </span></a></li>
        <%
        }else{
        %>
        <li><a href="user.jsp"><span>修改用户信息 </span></a></li>
        <%
                }
            }
        %>

    </ul>
</div>
