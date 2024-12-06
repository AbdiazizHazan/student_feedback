<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.model.Student" %>
<% 
Student c = (Student)session.getAttribute("student");
 %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>student profile</title>
</head>
<body>
<%@includefile="studentnavbar.jsp"  %>
<h3 align="center">Welcome to the Student Panel</h3>
 ID:<%=c.getId()%></br>
 NAME:<%=c.getName()%></br>
 GENDER:<%=c.getGender()%></br>
 DOB:<%=c.getDateofbirth()%></br>
 EMAIL:<%=c.getEmail()%></br>
 LOCATION:<%=c.getLocation()%></br>
 CONTACT:<%=c.getContact()%></br>
</body>
</html>