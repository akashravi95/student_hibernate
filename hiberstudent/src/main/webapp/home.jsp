<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Custom CSS styles */
        body {
            background-image: url("https://images.hdqwalls.com/download/aurora-borealis-beautiful-view-ip-1536x864.jpg");
            background-size: cover;
        }
        .card {
            border: none;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            margin-bottom: 20px;
        }
        
        .card-title {
            color: white;
            font-size: 20px;
        }
        
        .card-text {
            color: white;
        }
        
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }
        
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
            color: #fff;
        }
        .mt-4, .my-4 {
  margin-top: 11rem !important;
}

    </style>
</head>
<body>
    <div class="container">
        <h1 >Home Page</h1>
        
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-sign-in-alt"></i> Login</h5>
                        <p class="card-text">Click below to login.</p>
                        <a href="profilelogin.jsp" class="btn btn-primary">Login</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-list"></i> View All</h5>
                        <p class="card-text">Click below to view all records.</p>
                        <a href="viewstudents.jsp" class="btn btn-primary">View All</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-user-plus"></i> Registration</h5>
                        <p class="card-text">Click below to view your profile.</p>
                        <a href="registration.jsp" class="btn btn-primary">registration</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
