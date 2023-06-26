<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-image: url("https://images.hdqwalls.com/download/mac-os-x-rancho-cucamonga-no-tree-vj-1536x864.jpg");
            background-size: cover;
        }
        
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login-form {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
        }
        .login-form{
        border: none;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .text-center,.form-group {
        color: white
        }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h1 class="text-center">Login</h1>
            
            <form action="logincontroller" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
                </div>
                
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
            
            <hr>
            
            <p class="text-center">Don't have an account? <a href="registration.jsp">Sign Up</a></p>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
