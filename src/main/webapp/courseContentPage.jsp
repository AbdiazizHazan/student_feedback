<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Content</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .content-container {
            margin-top: 30px;
        }
        .lesson-title {
            font-weight: bold;
            font-size: 1.3rem;
        }
    </style>
</head>
<body>

<div class="container content-container">
    <h2 class="text-center">Welcome to the Course!</h2>
    <p class="text-center">You now have access to all course materials. Enjoy your learning journey!</p>
    
    <div class="mt-4">
        <h4>Course Materials:</h4>
        <ul class="list-group">
            <li class="list-group-item">
                <span class="lesson-title">Lesson 1: Introduction to the Course</span>
                <a href="lesson1.jsp" class="btn btn-primary btn-sm float-end">Watch Now</a>
            </li>
            <li class="list-group-item">
                <span class="lesson-title">Lesson 2: Advanced Concepts</span>
                <a href="lesson2.jsp" class="btn btn-primary btn-sm float-end">Watch Now</a>
            </li>
            <li class="list-group-item">
                <span class="lesson-title">Download Course Notes</span>
                <a href="courseNotes.pdf" class="btn btn-secondary btn-sm float-end" download>Download</a>
            </li>
        </ul>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
