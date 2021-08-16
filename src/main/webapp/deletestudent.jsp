<%--
  Created by IntelliJ IDEA.
  User: fawzi
  Date: 8/13/2021
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
</head>
<body>
<%@include file="WEB-INF/taglibs.jsp"%>
<%@include file="navbar.html"%>
<%@page import="com.StudentPckg.*" %>
<%@ page import="java.sql.SQLException" %>
<%
    Student st = new Student();
    int id = Integer.parseInt((String) request.getParameter("id"));

    try {
        st=StudentDao.getStudent(id);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    try {
        int i =  StudentDao.deleteStudent(st);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }

    response.sendRedirect("showStudent.jsp");
%>


</body>
</html>
