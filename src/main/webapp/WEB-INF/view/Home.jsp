<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
h1 {
	text-align: "center";
	font-style: "italic";
	font-size: "50px";
	text-decoration: "underline";
	colour: "blue";
	height: 100px;
	width: 100%;
	background-color: #c3c3c3;
	text-align: center;
	padding-top: 20px;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<style>
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu .dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -1px;
}
</style>
<style>
body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}

.container {
	padding: 80px ;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 200%; /* Set width to 100% */
	margin: auto;
}
 
.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
} */

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

</style>
</head>

<body background="C:\Users\KV Jagadeesh\Desktop\Codes\Images\htu.jpg">
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="shop for"><span
					class="glyphicon glyphicon-th" align="right"></span>Shop For</a>
				<ul class="dropdown-menu">
					<li><c:forEach items="${categoryList}" var="category">
							<a href="#"><c:out value="${category.name}" /><span
								class="glyphicon glyphicon-menu-right"></span></a>
							<br>
						</c:forEach></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
				
			<li><a href="Cart"> <span
					class="glyphicon glyphicon-shopping-cart"></span>Cart
			</a></li>
	         <sec:authorize access="isAuthenticated()">

				<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
				<li><a href="">Welcome<sec:authentication
							property="principal.username" /></a></li>
			</sec:authorize>
			<sec:authorize access="!isAuthenticated()">
				<li><a href="Registration"><span
						class="glyphicon glyphicon-user"></span>Register</a></li>
				<li><a href="Login"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>

			</sec:authorize>
		</ul>

		<!-- <div class="col-sm-4 col-sm-offset-0">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div> -->
	</nav>
<div class="container">
  <div class="btn-group btn-group-justified">
    <button type="button" class="btn btn-primary">LAPTOPS</button>
    <button type="button" class="btn btn-primary">MOBILES</button>
     <button type="button" class="btn btn-primary">WATCHES</button>
      <button type="button" class="btn btn-primary">CLOTHING</button>
       <button type="button" class="btn btn-primary">FOOTWEAR</button>
   
  </div>
  </div>  



	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				
			</ol>

			<!--   Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\retu.jpg" alt="SHOP HAPPY"
						width="600" height="500">
				</div>

				<div class="item">
					<img src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\rew.jpg"
						alt="FEEL THE LUXURY" width="460" height="345">
				</div>

				<div class="item">
					<img src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\ytuop.jpg"
						alt="BEAUTY" width="460" height="345">
				</div>

				<div class="item">
					<img src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\ewer.jpg"
						alt="BEAUTY" width="460" height="345">
				</div>
				

			<!-- Left and Right Controllers -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-4">
			<p class="text-center">
				<strong>LAPTOPS</strong>
			</p>
			<br> <a href="#demo" data-toggle="collapse"> <img
				src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\ggh.jpg" class="img-square person" alt="Random Name"
				width="100" height="100">
			</a>>
			</div>
			 <button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">View</button>  
			
		</div>
		
		<div class="col-sm-4">
			<p class="text-center">
				<strong>MOBILES</strong>
			</p>
			 <a href="#demo2" data-toggle="collapse"> <img
				src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\hp-slates.jpg" class="img-square person" alt="Random Name"
				width="100" height="100">
			</a>
			
		</div> 
		<button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">View</button> <br>
		<!-- <div class="col-sm-4">
			<p class="text-center">
				<strong>WATCHES</strong>
			</p>
			<br> <a href="#demo3" data-toggle="collapse"> <img
				src="C:\Users\KV Jagadeesh\Desktop\Codes\Images\hgh.jpg" class="img-square person" alt="Random Name"
				width="100" height="100">
			</a>
			 <button type="button" class="btn btn-info">Buy now</button>
         <button type="button" class="btn btn-warning">View</button> 
		</div> -->


	<%-- <table>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td><c:out value="${product.name}" /></td>

				<td><div class="thumbnail">

						<a href="ShowProduct/${product.id}"> <img height="200px"
							width="200px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
					</div></td>

				<td><c:url var="action" value="addtocart/${product.id}"></c:url>
					<form:form action="${action}" modelAttribute="cart">
						<input type="submit" class="btn btn-primary" value="Add To Cart" />
					</form:form></td>
			</tr>
		</c:forEach>
	</table --%>
	<div ng-view></div>


	<%-- <c:if test="${UserClickedLogin}">
<jsp:include page="login.jsp"></jsp:include>
</c:if> --%>
	<c:choose>
		<c:when test="${UserClickedadmin}">
			<c:import url="/WEB-INF/view/Admin.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedlogin}">
			<c:import url="/WEB-INF/view/Login.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickeduser}">
			<c:import url="/WEB-INF/view/Registration.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/view/Cart.jsp"></c:import>
		</c:when>
	</c:choose>
</body>
</html>