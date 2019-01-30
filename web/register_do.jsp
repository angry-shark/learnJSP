<%@ page import="utils.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: SG-ZT
  Date: 2019/1/30
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //书写java代码
    String  username = request.getParameter("username");
    String password = request.getParameter("password");
    int age = Integer.parseInt(request.getParameter("age"));
    String sex = request.getParameter("sex");
    boolean isSuccess = DBUtil.addUser(username,password,age,sex);
    if (isSuccess){
        out.println("注册成功");
    }else {
        out.println("注册失败");
    }
%>
</body>
</html>
