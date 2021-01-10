<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
     		
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Updation</title>
<link href="admin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/main/css/style.css" rel="stylesheet">
</head>
<body>
<table class="table table-bordered"><tr><td>
<form:form action="/updateEdit" method='POST' modelAttribute="product">
<form:hidden path="productid"/>
<center>
<h4><b><i>Product Updation</i></b></h4>
<table class="table table-bordred" style="width:80%; font-size:12px;">
<tr><td>Employee ID</td><td><input type="text" class="form-control" name='employeeid' value='${product.employeeid}' readonly></td></tr>
<tr><td>Product Name :</td><td><form:input class="form-control" path="productname"/></td></tr>
<tr><td>Product Rate :</td><td><form:input class="form-control" path="productrate"/></td></tr>
<tr><td>Product Batch no. :</td><td><form:input class="form-control" path="productbatchno"/></td></tr>
<tr><td>Product Stock :</td><td><form:input class="form-control" path="productstock"/></td></tr>
<tr><td><input type='submit' value='EDIT' name='btn' class="btn btn-info btn-xs"></td><td><input type='submit' class="btn btn-danger btn-xs" name='btn' value='DELETE'></td></tr>

</table>

</form:form>
</td>
<td>
<img src="/ProductImages/EMP${product.employeeid}_PRODUCT${product.productid}.jpeg" class="img-thumbnail" width='150' height='200'>
<form:form action="/UpdateImage" method='POST' enctype="multipart/form-data" modelAttribute='product'>
<form:hidden path="productid"/>
<br><input type='file' name='pic' class="form-control">
<br>
<input type='submit'value='Update Image' class="btn btn-info btn-xs">
</form:form>
</td>
</tr>
</table>
</center>
</body>
</html>