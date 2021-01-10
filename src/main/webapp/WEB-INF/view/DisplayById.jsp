<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<script src="http://localhost:7070/JS/jquery-3.4.1.min.js"></script>
<script src="http://localhost:7070/JS/state.js"></script>
<script src="http://localhost:7070/JS/City.js"></script>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
<html>
<head>

<meta charset="ISO-8859-1">
<title>Updation</title>
</head>
<body>
<center>
<h4><b><i>Purchase a Product</i></b></h4>
<table class="table table-bordred" ><tr><td>
<form:form action="/UpdateDelete" method='POST'  modelAttribute="emp">

<form:hidden path="employeeid"/>

<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr>
<td><b><i>Employee Name</i></b></td>
<td><form:input path="employeename" class="form-control"/></td></tr>

<tr><td><b><i>Gender</i></b></td>
<td><form:radiobutton path="gender" value='Male'/>Male <form:radiobutton path="gender" value='Female'/>Female</td></tr>

<tr><td><b><i>Birth Date</i></b></td>
<td><form:input path="dob" class="form-control" type='date'/></td></tr>

<tr><td><b><i>Email</i></b></td>
<td><form:input path="emailid" class="form-control"/></td></tr>

<tr><td><b><i>Mobile</i></b></td>
<td><form:input path="mobileno" class="form-control"/></td></tr>


<tr><td><b><i>Address</i></b></td>
<td><form:input path="address" class="form-control"/></td></tr>

<tr><td><b><i>State</i></b></td>
<td><form:select path="state" id='state' class="form-control"></form:select></td></tr>

<tr><td><b><i>City</i></b></td>
<td><form:select path="city" id='city' class="form-control"></form:select></td></tr>

<tr><td><b><i>Department</i></b></td>
<td><form:input path="department" class="form-control"/></td></tr>

<tr><td><b><i>Designation</i></b></td>
<td><form:input path="designation" class="form-control"/></td></tr>

<tr><td><b><i>Status</i></b></td>
<td><form:input path="status" class="form-control"/></td></tr>
<tr>
<td><input type='submit' class="btn btn-info btn-xs" value="Edit" name='btn'></td>
<td><input type='submit' class="btn btn-danger btn-xs" value="Delete" name='btn'></td>
</tr>

</table>
</form:form>
</td>
<td>
<img src='/Pictures/${emp.employeename}_${emp.employeeid}.jpeg' width ='150' height='200'>
<form:form action="/updateimg" class="img-thumbnail" method="POST" enctype='multipart/form-data' modelAttribute='emp'>


<form:hidden path="employeeid"/>
<br>
<input type="file" name='pic' class="form-control">
<input type="submit" class="btn btn-info btn-xs" value="Update Image">
</form:form>
</td></tr></table>
</center>
</body>
</html>