<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<center>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr><th>Employee Id</th><th>Employee Name</th><th>Address</th><th>Contact</th><th>Designation</th><th>Picture</th>|<th>Update</th></tr>
<form:forEach  items="${employees}"  var='E'>
<tr>
<td>${E.employeeid}</td>
<td>${E.employeename}<br>${E.gender}<br>${E.dob}</td>
<td>${E.address}<br>${E.city}<br>${E.state}</td>
<td>${E.mobileno}<br>${E.emailid}</td>
<td>${E.department}<br>${E.designation}<br>${E.status}</td>
<td><img src='/Pictures/${E.employeename}_${E.employeeid}.jpeg' class="img-thumbnail" width='50' height='80'></td>
<td><a href="/update?id=${E.employeeid}" class="btn btn-info btn-xs">Update/Delete</a></td>
</tr>
</form:forEach>
</table>
</center>
</body>
</html>