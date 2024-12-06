<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.model.Student" %>
<% 
Student c = (Student)session.getAttribute("student");
 %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
<%@includefile="studentnavbar.jsp"  %>
welcome  <%=c.getName()%>
</body>
</html>