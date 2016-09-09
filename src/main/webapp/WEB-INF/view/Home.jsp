<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c" uri ="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>9
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
<title>Home Page</title>
</head>

<body background="C:\Users\KV Jagadeesh\Desktop\Codes\Images\bj.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopping Mall</a>
    </div>
    
    
${message}<br>

<class="align_right"><a href="Admin">Admin</a>
<a href="Login"> Login Here</a>
<a href="Registration"> Register Here</a></class>
<c:if test="${UserClickedRegisterHere} ==true">
<jsp:include page= "Registraction.jsp"></jsp:include>
</c:if>

<%--<c:if test="${UserClickedLoginHere} ==true">
<jsp:include page= "Login.jsp"></jsp:include>
</c:if>--%>
</html>
