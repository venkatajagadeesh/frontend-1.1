<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<style>
ul{
list-style-type: none;
margin: 10;
padding: 0;
overflow: hidden;
background-colour #06DEEC:
}
li{
float: Left;
}
li a {
display: inline-black;
colour: red;
text-align: centre;
padding: 4px 16px;
text-decoration: none
}

li a:hover{
background-colour: black;
}
</style>
</head>
<body>

<div class="container">
      <span class="glyphicon glyphicon-home"></span>
</div>
<center><h3>Shopping Mall</h3></center>
${message}<br>
<hr color="blue">
<div>
<ul>
<li><a href="Supplier">Supplier</a></li>
<li><a href="Category">Category</a></li>
 <li><a href="Product">Product</a></li>
 </ul>
 </div>
${msg}
${msg1}
<script>

var app= angular.module("my app", [ngRoute]);
app.config(function($routeProvider) {
	$routeProvider
	.when("/", {
	   templateUrl :"Home"	
	})
	.when("Product", {
		 templateUrl :"Product"	
    })
	.when("Supplier", {
		 templateUrl :"Supplier"	
	})
	.when("Category", {
		 templateUrl :"Category"	
	});
});
</script>
 <c:choose>
<c:when test="${UserClickedsupplier}">
<c:import url="/WEB-INF/view/Supplier.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedproduct}">
<c:import url="/WEB-INF/view/Product.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedcategory}">
<c:import url="/WEB-INF/view/Category.jsp"></c:import>
</c:when>
</c:choose>
</body>
</html>