<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: SG-ZT
  Date: 2019/1/31
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    User user = (User)request.getAttribute("User");
%>

Name: <%=user.getUsername()%><br/>
age: <%=user.getAge()%><br/>
sex: <%=user.getSex()%><br/>
</body>
</html>
