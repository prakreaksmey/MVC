<%--
  Created by IntelliJ IDEA.
  User: SMEY
  Date: 1/24/2018
  Time: 11:10 AM
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








<form class="form-horizontal" method="post" action="/save">

<div class="form-group">
    <h1 style="text-align: center">Add New Employee</h1>
    <label class="control-label col-sm-2" for="name">Name</label>
    <div class="col-sm-10">
        <input type="text" name="name" class="form-control" id="name" placeholder="Enter name">
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="salary">Salary</label>
    <div class="col-sm-10">
        <input type="text" name="salary" class="form-control" id="salary" placeholder="Enter salary">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="designation">Designation</label>
    <div class="col-sm-10">
        <input type="text" name="designation" class="form-control" id="designation" placeholder="Enter designation">
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
</form>

</body>
</html>
