<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<style>
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width:100%;
}
td,tr,th {
border:2px solid #dddddd;
text-align: center;
padding: 8px;
}
</style>
</head>
<body background="C:\Users\shravya\Desktop\shravya.jpg">
	<c:url var="addAction" value="editsupplier"></c:url>
	<form:form action="${addAction}" commandName="supplier">
Id:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Address:<form:input path="address" /><br>
		<input type="submit" value="add/edit" />
	</form:form>
			
				<div align="center">
		<table  style="width: 88%">
		<caption><center><h3>Suppliers</h3></center></caption>
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
<td><c:out value="${supplier.id }"></c:out>
<td><c:out value="${supplier.name }"></c:out>
<td><c:out value="${supplier.address }"></c:out>
<td><a href="addeditsupplier/${supplier.id}"><img alt="Edit" src="C:\Users\shravya\Desktop\edits.jpg"></a>
<td><a href="adddeletesupplier/${supplier.id}"><img alt="Delete" src="C:\Users\shravya\Desktop\deletes.jpg"></a>
</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
</body>
</html>