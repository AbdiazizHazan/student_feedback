<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>viewallstudent</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
	<%@include file="adminnavbar.jsp" %>
<h3 align = "center"> view all student</h3>
<table align="center" border=2 class="table table-hover">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>GENDER</th>
		<th>DATE OF BIRTH</th>
		<th>EMAIL</th>
		<th>LOCATION</th>
		<th>CONTACT</th>
		
	</tr>
	
	<c:forEach  items="${studentlist}" var="student">
	<tr>
	<td><c:out value="${student.id}"></c:out></td>
	<td><c:out value="${student.name}"></c:out></td>
	<td><c:out value="${student.gender}"></c:out></td>
	<td><c:out value="${student.email}"></c:out></td>
	<td><c:out value="${student.dateofbirth}"></c:out></td>
	<td><c:out value="${student.location}"></c:out></td>
	<td><c:out value="${student.contact}"></c:out></td>
	
	</tr>		 
		
	</c:forEach >
</table>	
		
		
</body>
</html>