<%--
  Created by IntelliJ IDEA.
  User: SMEY
  Date: 1/24/2018
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<%--<table border="2" width="70%" cellpadding="2">--%>




<div class="container">
    <h1>Employees List</h1>

    <a href="empform" class="btn btn-success">Add New Employee</a>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
            <th>Designation</th>

        </tr>
        </thead>
        <tbody>

        <c:forEach var="emp" items="${list}">
            <tr>
                <td><a href="editemp/${emp.id}" class="btn btn-primary">Edit</a>
               <a href="deleteemp/${emp.id}" class="btn btn-danger">Delete</a></td>
                <td>${emp.name}</td>
                <td>${emp.salary}</td>
                <td>${emp.designation}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="/viewemp/1">1</a>
    <a href="/viewemp/2">2</a>
    <a href="/viewemp/3">3</a>
</div>
</body>
</html>
