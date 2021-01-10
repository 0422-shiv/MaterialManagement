<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<script src="http://localhost:7070/JS/jquery-3.4.1.min.js"></script>
<script src="http://localhost:7070/JS/state.js"></script>
<script src="http://localhost:7070/JS/City.js"></script>

<html>
<head>

<meta charset="ISO-8859-1">
<title>Employee Register</title>
</head>
<body>
<form:form action="/submit" method='POST' enctype="multipart/form-data" modelAttribute="emp">
<form:hidden path="employeeid"/>
<table>
<caption>Employee Register</caption>
<tr>
<td><b><i>Employee Name</i></b></td>
<td><form:input path="employeename"  pattern='[a-z A-Z]+' required="required" /></td></tr>

<tr><td><b><i>Gender</i></b></td>
<td><form:radiobutton path="gender" value='Male'/>Male <form:radiobutton path="gender" value='Female'/>Female</td></tr>

<tr><td><b><i>Birth Date</i></b></td>
<td><form:input path="dob" type='date' required="required"/></td></tr>

<tr><td><b><i>Email</i></b></td>
<td><form:input path="emailid" required="required"/></td></tr>

<tr><td><b><i>Mobile</i></b></td>
<td><form:input path="mobileno" pattern='[0-9]{10}' required="required"/></td></tr>


<tr><td><b><i>Address</i></b></td>
<td><form:input path="address" required="required"/></td></tr>

<tr><td><b><i>State</i></b></td>
<td><form:select path="state" id='state' ></form:select></td></tr>

<tr><td><b><i>City</i></b></td>
<td><form:select path="city" id='city' required="required"></form:select></td></tr>

<tr><td><b><i>Department</i></b></td>
<td><form:input path="department" required="required"/></td></tr>

<tr><td><b><i>Designation</i></b></td>
<td><form:input path="designation" required="required"/></td></tr>

<tr><td><b><i>Status</i></b></td>
<td><form:input path="status"/></td></tr>

<tr><td><b><i>Password</i></b></td>
<td><form:password  path="password" required="required"/></td></tr>

<tr><td><b><i>Picture</i></b></td>
<td><input type="file" name="pic" required="required"></td></tr>


</table>
<input type='submit'>

</form:form>
<br><br><br>
${message}
</body>
</html>