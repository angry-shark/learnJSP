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

    if(isSuccess){
        //把数据给装入request对象
        request.setAttribute("message","registerSuccessful");
        request.setAttribute("username",username);
        request.setAttribute("password",password);
        request.setAttribute("age",age);
        request.setAttribute("sex",sex);
        //将装入数据的request对象转发给login.jsp
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }else{
        out.println("注册失败");
        request.setAttribute("message","registerFail");
        request.getRequestDispatcher("register.jsp").forward(request,response);
    }
//    if (isSuccess){
//        out.println("注册成功");
//    }else {
//        out.println("注册失败");
//    }
%>
</body>
</html>
