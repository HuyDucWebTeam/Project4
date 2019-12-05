<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Products</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style type="text/css">
.item {
	width: 250px;
	background-color: #DCDDE6;
	text-align: center;
}

.img {
	margin-top: 10px;
	width: 100px;
	height: 100px;
}
</style>

</head>
<body class="containter">
	<h1 align="center">Products</h1>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3">
			<form:form method="POST" action="/logout">
				<input class="btn btn-primary" type="submit" value="Logout" />
			</form:form>
		</div>
	</div>

	<br>

	<div align="center">
		<form:form action="/admin/product" method="POST">
			<table cellspacing="1" border="2">
				<thead>
					<td>Code</td>
					<td>Description</td>
					<td>Price</td>
					<td></td>
					<td></td>
				</thead>

				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.code}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
						<td><a 
							href="/admin/edit?id=${product.id}">Edit</a></td>
						<td><a 
							href="/admin/delete?id=${product.id}&code=${product.code}&description=${product.description}&price=${product.price}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			<br>
			<br>
			<input class="btn btn-primary" type="submit" value="Add Product"
				style="margin-bottom: 10px">
		</form:form>
	</div>
</body>
</html>