<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<center>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr>
<th>Employee ID</th><th>Product ID</th><th>Product Name</th><th>Rate</th><th>Batch Number</th><th>Stock</th><th>Picture</th><th>Update/Delete</th>
</tr>
<form:forEach items="${pro}" var='P'>
<tr>
<td>${P.employeeid}</td>
<td>${P.productid}</td>
<td>${P.productname}</td>
<td>${P.productrate}</td>
<td>${P.productbatchno}</td>
<td>${P.productstock}</td>
<td><img src="/ProductImages/EMP${P.employeeid}_PRODUCT${P.productid}.jpeg" class="img-thumbnail" width='30' height='50'></td>
<td><a href="/updateProduct?pid=${P.productid}" class="btn btn-info btn-xs">Update/Delete</a></td>
</tr>
</form:forEach>
</table>
</center>
</body>
</html>