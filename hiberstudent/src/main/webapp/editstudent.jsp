<%@ page import="service.Crudoperation" %>
<%@ page import="model.Students" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-image: url("https://images.hdqwalls.com/download/apple-mountain-space-dark-minimal-5k-rg-1536x864.jpg");
            background-size: cover;
            color: white;
        }
        
        .container {
            margin-top: 50px;
        }
        
        h1 {
            text-align: center;
        }
        
        form {
            max-width: 500px;
            margin: 0 auto;
        }
        
        .form-group label {
            font-weight: bold;
        }
        
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Student</h1>
        
        <% 
        String studentId = request.getParameter("id");
        Crudoperation crudoperation = new Crudoperation();
        Students student = crudoperation.getUserInfo(Integer.parseInt(studentId));
        if (student != null) {
        %>
        <form action="UpdateStudentServlet" method="post">
            <input type="hidden" name="id" value="<%= student.getId() %>">
            
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" class="form-control" value="<%= student.getName() %>">
            </div>
            
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="text" name="age" id="age" class="form-control" value="<%= student.getAge() %>">
            </div>
            
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" name="username" id="username" class="form-control" value="<%= student.getUsername() %>">
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control" value="<%= student.getMail_id() %>">
            </div>
            
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
        <% 
        } else {
        %>
        <p>Student not found.</p>
        <% 
        }
        %>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
