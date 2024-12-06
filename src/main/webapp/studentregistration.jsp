<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
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
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
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
        .btn {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            width: 100%;
            margin-top: 10px;
            display: block;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .forgot-password {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007BFF;
            text-decoration: none;
        }
        .forgot-password:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="container">
        <h2>Student Registration</h2>
        <form method="POST" action="insertstudent">
            <label for="sname">Name:</label>
            <input type="text" id="sname" name="sname" required>

            <label for="sgender">Gender:</label>
            <select id="sgender" name="sgender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="sdob">Date of Birth:</label>
            <input type="date" id="sdob" name="sdob" required>

            <label for="semail">Email:</label>
            <input type="email" id="semail" name="semail" required>

            <label for="spwd">Password:</label>
            <input type="password" id="spwd" name="spwd" required>

            <label for="slocation">Location:</label>
            <input type="text" id="slocation" name="slocation" required>

            <label for="scontact">Contact Number:</label>
            <input type="text" id="scontact" name="scontact" required>

            <input type="submit" value="Register">
        </form>

        <!-- Login Button -->
        <a href="studentlogin" class="btn">Login</a>

        <!-- Forgot Password Link -->
        <a href="forgotPassword" class="forgot-password">Forgot Password?</a>
    </div>
</body>
</html>
