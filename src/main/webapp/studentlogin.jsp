<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="mainnavbar.jsp" %> <!-- Include the navigation bar here -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JFSD SDPK - Student Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 60px); /* Adjust for navbar height */
        }
        .login-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .register-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007BFF;
            text-decoration: none;
        }
        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="content">
    <div class="login-container">
        <h2>Student Login</h2>
        <form method="POST" action="checkstudentlogin">
            <label for="studentUsername">Username:</label>
            <input type="text" id="studentUsername" name="cemail" required>

            <label for="studentPassword">Password:</label>
            <input type="password" id="studentPassword" name="cpwd" required>

            <input type="submit" value="Login">
        </form>

        <a href="studentregistration" class="register-link">Don't have an account? Register here</a>
    </div>
</div>

</body>
</html>
