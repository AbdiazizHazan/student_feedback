<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Courses</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-radius: 5px;
            overflow: hidden;
            cursor: pointer;
        }
        .card-img-top {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .card-body {
            padding: 1rem;
        }
        .card-title {
            font-size: 1.2rem;
            color: #333;
            font-weight: bold;
        }
        .card-text {
            font-size: 0.95rem;
            color: #666;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="container my-4">
        <h1>Available Courses</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:forEach var="course" items="${courses}">
                <div class="col">
                    <div class="card h-100" onclick="location.href='${pageContext.request.contextPath}/enroll?id=${course.courseId}'">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPluqOisFsCPAziBS3vpwC4RES4REb3MgRw&s" class="card-img-top" alt="${course.courseName}">
                        <div class="card-body">
                            <h5 class="card-title">${course.courseName}</h5>
                            <p class="card-text">${course.description}</p>
                            <p class="card-text"><strong>Duration:</strong> ${course.duration} hours</p>
                            <p class="card-text"><strong>Instructor:</strong> ${course.instructor}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
