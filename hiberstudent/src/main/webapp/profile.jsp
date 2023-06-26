<%@page import="model.Students"%>
<%@page import="service.Crudoperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-image: url("https://images.hdqwalls.com/download/mac-os-x-rancho-cucamonga-no-tree-vj-1536x864.jpg");
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Your Profile</h1>
        
        <% 
        int userId = Integer.parseInt(session.getAttribute("userId").toString());
        Crudoperation crudoperation = new Crudoperation();
        Students user = crudoperation.getUserInfo(userId);
        %>
        
        <table class="table table-striped mt-4">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">:</th>
                    <th scope="col"><%= user.getId() %></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Name</th>
                    <th scope="col">:</th>
                    <td><%= user.getName() %></td>
                </tr>
                <tr>
                    <th scope="row">Age</th>
                    <th scope="col">:</th>
                    <td><%= user.getAge() %></td>
                </tr>
                <tr>
                    <th scope="row">Username</th>
                    <th scope="col">:</th>
                    <td><%= user.getUsername() %></td>
                </tr>
                <tr>
                    <th scope="row">Email</th>
                    <th scope="col">:</th>
                    <td><%= user.getMail_id() %></td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
