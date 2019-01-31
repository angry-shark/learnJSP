<%--
  Created by IntelliJ IDEA.
  User: SG-ZT
  Date: 2019/1/30
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        if(request.getAttribute("message") !=  null){
            out.println(request.getAttribute("message"));
        }
    %>

    <form method="post" action="register_do.jsp">
        注册<hr/>
        username:<input type="text" name="username">
        <br />
        password:<input type="password" name="password">
        <br/>
        age:<input type="text" name="age"/>
        <br/>
        sex:  male<input type="radio" name="sex" value="male"><br/>
            female<input type="radio" name="sex" value="female"/>
        <br/>
        <input type="submit" value="register">
    </form>
</body>
</html>
