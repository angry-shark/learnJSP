<%--
  Created by IntelliJ IDEA.
  User: SG-ZT
  Date: 2019/1/30
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String username = null;
    String password = null;
    //书写java代码
    username = request.getParameter("username");
    password = request.getParameter("password");
    System.out.println("uid is: " + username + "\npwd is: " + password);
%>

<body>
    <form method="post" action="login.jsp">
        username:<input type="text" name="username">
        <br />
        password:<input type="password" name="password">
        <br/>
        <input type="submit" value="login">
    </form>
</body>
</html>
