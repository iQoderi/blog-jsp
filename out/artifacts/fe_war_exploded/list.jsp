<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <script type="text/javascript" >
  	function deleteone(){
  		var msg = "您真的要删除吗？";
  		if(confirm(msg)){
  			return true;
  		}else{
  			return false;
  		}
  	}
  </script>
  <body>
   	<center>
   	<a href="index.jsp">添加新用户</a>
   	<table border="1">
   		<tr>
			<td>ID</td><td>用户名</td><td>密码</td><td>创建日期</td><td>年龄</td><td>性别</td>
   		</tr>
   		<c:forEach items="${list}" var="user">
   			<tr>
   				<td>${user.id }</td>
   				<td>${user.name }</td>
   				<td>${user.password }</td>
   				<td>${user.date }</td>
				<td>${user.age }</td>
				<td>${user.sexy}</td>
   				<td><a href="toupdate.do?id=${user.id}">修改</a><a href="delete.do?id=${user.id}" onclick="return deleteone()">删除</a></td>
   			</tr>
   		</c:forEach>
   	</table>
   	
   	</center>
  </body>
</html>
