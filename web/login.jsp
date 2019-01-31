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
    Object uid = request.getAttribute("username");
    Object msg = request.getAttribute("message");
    if(msg != null)
        out.println(msg);
%>

<body>
    <form method="post" action="login_do.jsp">
        登陆<hr/>
        username:<input type="text" name="username">
        <br />
        password:<input type="password" name="password">
        <br/>
        <input type="submit" value="login">
    </form>
</body>
</html>
