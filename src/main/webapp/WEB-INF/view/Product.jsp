<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<style>
table {
font-family:arial, sans-serif;
border-collapse:collapse;
width:100%;
}
td,tr,th {
border:2px solid #dddddd;
text-align: center;
padding: 8px;
}
</style>
</head>
<body>

	<c:url var="addaction" value="editproduct"></c:url>
	<form:form action="${addaction}" modelAttribute="product1">
	
ID:<form:input path="id" /><br>
Name:<form:input path="name" /><br>
Description:<form:input path="description" /><br>
Price:<form:input path="price" /><br>
 <td>Category:</td>
<td><form:select path="CategoryId" required="true">
<c:forEach items="${categoryList}" var="category">
<form:option class="input1" value= "${category.id}">${category.name}
</form:option>
</c:forEach>
</form:select>
</td>

<td>Supplier:</td>
<td><form:select path="SupplierId" required="true">
<c:forEach items="${supplierList}" var="supplier">
<form:option class="input1" value= "${supplier.id}">${supplier.name}
</form:option>
</c:forEach>
</form:select>
</td>


<td>Image</td>
<td><form:input type="file"
class="btn btn-default btn-block form control" path="image" 
required="true"/></td>
<input type="submit" value="add/edit">
 </form:form> 

		
		<div align="center">
		<table style="width:88%">
	<caption><center><h3>Product</h3></center></caption>
		<thead>
		<tr>
		
	
		<th>Id</th>
		<th>Name</th>
		<th>Description</th>
		<th>Price</th>
		<th>Category Id</th>
		<th>Supplier Id</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		</thead>
		<tbody>
			
<c:forEach items="${productList }" var="product">
<tr>
<td><c:out value="${product.id }"></c:out>
<td><c:out value="${product.name }"></c:out>
<td><c:out value="${product.description }"></c:out>
<td><c:out value="${product.price }"></c:out>
<td><c:out value="${product.CategoryId }"></c:out>
<td><c:out value="${product.SupplierId }"></c:out>

<td><a href="addeditproduct/${product.id}"><img alt="Edit" src=""></a>
<td><a href="adddeleteproduct/${product.id}"><img alt="Delete" src=""></a>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>
