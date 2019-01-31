<%@ page import="utils.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: SG-ZT
  Date: 2019/1/31
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = null;
        String password = null;
        //书写java代码
        username = request.getParameter("username");
        password = request.getParameter("password");
        System.out.println("uid is: " + username + "\npwd is: " + password);

        if (DBUtil.verifyAccount(username,password) != null){
            out.println("login successfully");
            //request装入参数
            request.setAttribute("User",DBUtil.verifyAccount(username,password));
            //跳转到personCenter页面（通过转发请求的方式）
            request.getRequestDispatcher("personCenter.jsp").forward(request,response);
        }else{
            out.println("login fail");
            request.setAttribute("message","loginFail");
            //登陆失败将request回传到login.jsp（即跳转回login.jsp）
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    %>
</body>
</html>
