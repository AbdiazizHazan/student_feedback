<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Panel - JFSD</title>
    <style>
        /* CSS for the Navigation Bar */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="studenthome" class="active">Home</a>
        <a href="viewcourses">View Courses</a>
        <a href="studentprofile">My Profile</a>
        <a href="studentlogout">Logout</a>
    </div>

    <!-- Content specific to the student panel can be added here -->

</body>
</html>
