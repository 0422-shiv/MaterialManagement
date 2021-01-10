<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
    <%@ page import="com.as.mm.model.Employee" %>
    
<!DOCTYPE html>
<script src="http://localhost:7070/JS/jquery-3.4.1.min.js"></script>
<script src="http://localhost:7070/JS/Employeeid.js"></script>
<script src="http://localhost:7070/JS/Product.js"></script>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Product</title>
</head>
<body>
<% Employee E=(Employee)session.getAttribute("EMPSESSION"); %>
	
<form:form action='/purchaseSubmit' modelAttribute='purchase' method='POST'>
<center>
<h4><b><i>Purchase a Product</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">

<tr><td>Employee ID :</td><td><form:input path="employeeid" class="form-control" value='<%=E.getEmployeeid() %>'/></td></tr>
<tr><td>Product Name :</td><td><form:select path="productid" id='pid' class="form-control"></form:select></td></tr>
<tr><td>Purchase from Employee :</td><td><form:select path="purchasefrom" id='eid' class="form-control"></form:select></td></tr>
<tr><td>Purchase Date :</td><td><form:input path="purchasedate" type='date' class="form-control"/></td></tr>
<tr><td>Quantity Purchased:</td><td><form:input path="qtypurchase" class="form-control"/></td></tr>
<tr><td>Remarks:</td><td><form:textarea path="remark" class="form-control" rows='4' cols='30'/></td></tr>
<tr><td><input type='Submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>


</table>

</form:form>
<br><br><br>
${message}
</center>
</body>
</html>