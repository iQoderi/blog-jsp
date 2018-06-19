<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
   

  </head>
  
  <body>
   <form action="update.do" method="post">
    	用户名：<input type="text" name="name" value="${user.name }"><br>
    	密码：<input type="text" name="password" value="${user.password }"/><br>
    	<input type="hidden" name="id" value="${user.id }">
    	<input type="submit" value="更新保存">
    </form>
  </body>
</html>
