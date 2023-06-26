
<%@page import="service.Crudoperation"%>
<%@page import="model.Students"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        
        body {
            background-image: url("https://images.hdqwalls.com/download/mac-os-x-rancho-cucamonga-no-tree-vj-1536x864.jpg");
            background-size: cover;
        }
        h1{
        color: white
        }
        </style>
</head>
<body>

    <div class="container">
        <h1>View Students</h1>
         <a href="registration.jsp" class="btn btn-primary mb-3">Add Student</a>
        
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
              <% 
                List<Students> studentsList = Crudoperation.getAllStudents();
                for (Students student : studentsList) {
                %>
                <tr>
                    <td><%= student.getName() %></td>
                    <td><%= student.getAge() %></td>
                    <td><%= student.getUsername() %></td>
                    <td><%= student.getMail_id() %></td>
                   
                    <td>
    <a href="editstudent.jsp?id=<%= student.getId() %>" class="btn btn-primary">Edit</a>
    <a href="DeleteStudentServlet?id=<%= student.getId() %>" class="btn btn-danger">Delete</a>
</td>

                        
                    
                </tr>
                <% 
                }
                %>
            </tbody>
        </table>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
