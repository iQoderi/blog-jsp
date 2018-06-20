<%--
  Created by IntelliJ IDEA.
  User: catango
  Date: 2018/6/18
  Time: 上午9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<head>
    <title>admin</title>
    <style>
        #form1 {
            margin-left: 10%;
            margin-right: 10%;
            margin-top: 10px;
        }

        #form2 {
            margin-left: 10%;
            margin-right: 10%;
        }
    </style>
</head>
<body>
<% Boolean flag = false;
    if (request != null) {
        flag = (boolean) request.getAttribute("flag");
    }
%>

<form action="backstage" method="get">
    <div class="form-group" id="form1">
        <label for="InputAccount">Account</label>
        <input type="text" class="form-control" id="InputAccount" placeholder="Account" name="account">
    </div>
    <div class="form-group" id="form2">
        <label for="InputPWD">Password</label>
        <input type="password" class="form-control" id="InputPWD" placeholder="Password" name="password">
    </div>
    <button type="submit" class="btn btn-default" style="margin-left: 50%">登录</button>
</form>
<%if (flag) {%>
<script>alert("账号或密码不对")</script>
<%}%>
</body>

</html>
