<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
 
</head>
<body>
<h2>Login page</h2>
<form class="form-horizontal" role="form" action="Loginservlet" method="post"> 

Enter UserName:<input type="text"><br>
Enter Password:<input type="password"><br>
<input type="submit" value="Login"><br>
</form>
</body>
</html>