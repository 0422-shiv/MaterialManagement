<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page import="com.as.mm.model.Employee" %>
<!DOCTYPE html>
<script src="http://localhost:7070/JS/jquery-3.4.1.min.js"></script>
<script src="http://localhost:7070/JS/Employeeid.js"></script>
<script src="http://localhost:7070/JS/Product.js"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Registration</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<% Employee E=(Employee)session.getAttribute("EMPSESSION"); %>
	
<form:form action="/productSubmit" method='POST' enctype="multipart/form-data" modelAttribute="product">
<center>
<h4><b><i>Product Registration</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">

<tr><td>Employee ID</td><td><form:input path="employeeid" class="form-control" value='<%=E.getEmployeeid() %>'/></td></tr>
<tr><td>Product Name :</td><td><form:input path="productname" class="form-control" /></td></tr>
<tr><td>Product Rate :</td><td><form:input path="productrate" class="form-control"/></td></tr>
<tr><td>Product Batch no. :</td><td><form:input path="productbatchno" class="form-control"/></td></tr>
<tr><td>Product Stock :</td><td><form:input path="productstock" class="form-control"/></td></tr>
<tr><td>Picture :</td><td><input type="file" name='pic' class="form-control"></td></tr>
<tr><td><input type='submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>

</table>

</form:form>
<br><br><br>
${message}
</center>
</body>
</html>