<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            max-width: 400px;
            margin-top: 100px;
        }
      
        
        body {
            background-image: url("https://images.hdqwalls.com/download/mac-os-x-rancho-cucamonga-no-tree-vj-1536x864.jpg");
            background-size: cover;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Registration</h2>
        <form method="post" action="registerController">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="text" id="age" name="age" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email ID:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="text-center">
                <input type="submit" value="Register" class="btn btn-primary">
            </div>
        </form>
    </div>
</body>
</html>
