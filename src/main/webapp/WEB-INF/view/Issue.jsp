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
<title>Issue</title>
<% Employee E=(Employee)session.getAttribute("EMPSESSION"); %>
</head>
<body>
<form:form action='/issueSubmit' modelAttribute='issue' method='POST'>
<center>
<h4><b><i>Issue Product</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">


<tr><td>Employee ID :</td><td><form:input path="employeeid" class="form-control" value='<%=E.getEmployeeid() %>'/></td></tr>
<tr><td>Product Name :</td><td><form:select path="productid" class="form-control" id='pid'></form:select></td></tr>
<tr><td>Issue to Employee :</td><td><form:select path="issueto" class="form-control" id='eid'></form:select></td></tr>
<tr><td>Issue Date :</td><td><form:input path="issuedate" class="form-control" type='date'/></td></tr>
<tr><td>Quantity Issue:</td><td><form:input path="qtyissue" class="form-control"/><span id='stockinfo'> </span></td></tr>
<tr><td>Remarks:</td><td><form:textarea path="remark" class="form-control" rows='4' cols='30'/></td></tr>
<tr><td><input type='Submit' class="btn btn-info btn-xs"></td><td><input type='reset' class="btn btn-danger btn-xs"></td></tr>


</table>

</form:form>
<br><br><br>
${message}
</center>
</body>
</html>