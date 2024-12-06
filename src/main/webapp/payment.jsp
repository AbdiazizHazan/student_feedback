<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: Arial, sans-serif;
        }
        .checkout-container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 2rem;
            border-radius: 12px;
            background: linear-gradient(to bottom right, #ffffff, #f8f9fa);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .checkout-container h2 {
            text-align: center;
            color: #4CAF50;
        }
        .form-label {
            font-weight: bold;
            color: #333;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            transition: border-color 0.2s;
        }
        .form-control:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.2);
        }
        .btn-primary {
            background-color: #4CAF50;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 1rem;
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .btn-primary:hover {
            background-color: #45a049;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<div class="checkout-container">
    <h2 class="mb-4">Checkout</h2>
    <form action="confirmOrder" method="post">
        <!-- Personal Information -->
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <!-- Address -->
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <div class="mb-3">
            <label for="contact" class="form-label">Contact</label>
            <input type="text" class="form-control" id="contact" name="city" required>
        </div>

        

        <!-- Submit Button -->
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Confirm Order</button>
        </div>
    </form>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
