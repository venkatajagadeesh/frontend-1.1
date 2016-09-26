<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<body>

<h1 align="center">Login</h1>

<div class="container">

<form class="form-horizontol" action="perform_login"  method="post">
<table class="table table-hover">
<tr>
<td><label for="email">Name:</label></td>
<td><p><input type="text"  name="username"placeholder="Enter Name" /></p></td>
</tr>
<tr>
<td><label for="pwd">Password:</label></td>
<td><p><input type="password" name="password" placeholder="Enter Password" /></p></td>
</tr>
<tr>
<td>
New User? <a href=Registration>Register Here</a>
</td>
</tr>
</table>
<div align="center">
<button type="submit" class="btn btn-primary">Login</button>
 </div> 
 </form>
</div>
<script src="bootstrap/js/bootstrap.min.js"></script>  
</body>
</html>