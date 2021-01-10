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
<th>Tender Number</th><th>Product Name</th><th>Supplier Name</th><th>Quoted_value</th><th>Details</th><th>Purchase Bid</th>
</tr>
<form:forEach items="${bids}" var='b'>
<tr>

<td>${b.t_no}</td>
<td>${b.prodname}</td>
<td>${b.username }</td>
<td>${b.Quoted_value}</td>
<td>${b.detail}</td>


</tr>
</form:forEach>
</table>
</center>
</body>
</html>