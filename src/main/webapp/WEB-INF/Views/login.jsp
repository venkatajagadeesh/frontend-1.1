<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta charset="ISO-8859-1">
<title>Login Here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<style>
p{
border : 1px solid powderblue;
margin : 
}
</style>
</head>
<body>
<h1 align="center">Login</h1>
<div align="center">
<form class="form-horizontol" role="form" action="Loginservlet" method="post">
<table>
<tr>
<td><label for="email">Email:</label></td>
<td><p><input type="text" name="userid"id="email" placeholder="Enter Email"></p></td>
</tr>
<tr>
<td><label for="pwd">Password:</label></td>
<td><p><input type="password" name="pwd" id="pwd" placeholder="Enter Password"></p></td>
</tr>
</table>
<div align="center">
<button type="submit" class="btn btn-primary">Login</button>
 </div> 
New User? <a href=registration.html>Register Here</a>
</form>
</div>
  <script src="bootstrap/js/bootstrap.min.js"></script>  
</body>
</html>