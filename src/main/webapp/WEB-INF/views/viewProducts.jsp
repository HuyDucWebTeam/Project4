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
	.font-content {
		font-size: 25px;
		font-family: monospace;
	}
	.btn-format{
		width: 300px;
		height: 50px;
	}
</style>

</head>
<body>
	<h1 align="center">Products</h1>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3">
			<form:form method="POST" action="/logout">
				<input class="btn btn-primary btn-format" type="submit" value="Logout" />
			</form:form>
		</div>
	</div>

	<br>
	<br>
	<br>

	<div align="center">
		<form:form action="/admin/product" method="POST">
			<div class="row">
				<div class="col-sm-2">
				</div>
				<div class="col-sm-2 font-content" style="border-style: solid; border-color: gray;">
				Code
				</div>
				<div class="col-sm-2 font-content" style=" border-style: solid;border-color: gray;">
				Description
				</div>
				<div class="col-sm-2 font-content" style=" border-style: solid;border-color: gray;">
				Price
				</div>
				<div class="col-sm-2 font-content" style="border-style: solid; border-color: gray; width: 150px">
				---
				</div>
				<div class="col-sm-2 font-content" style="border-style: solid;border-color: gray; width: 150px">
				---
				</div>
				<c:forEach items="${products}" var="product">
					<div class="col-sm-2">
					</div>
					<div class="col-sm-2 font-content" style="background-color: #DDEBE0;">
						${product.code}
					</div>
					<div class="col-sm-2 font-content">
						${product.description}
					</div>
					<div class="col-sm-2 font-content" style="background-color: #DDEBE0;">	
						${product.price}
					</div>
					<div class="col-sm-2 font-content" style="width: 150px">
						<a href="/admin/edit?id=${product.id}">Edit</a>
					</div>
					<div class="col-sm-2 font-content" style="background-color: #DDEBE0;width: 150px;">	
						<a href="/admin/delete?id=${product.id}&code=${product.code}&description=${product.description}&price=${product.price}">Delete</a>
					</div>
				</c:forEach>
			</div>
			<br>
			<br>
			<br>
			<input class="btn btn-primary btn-format" type="submit" value="Add Product"
				style="margin-bottom: 10px">
		</form:form>
	</div>
</body>
</html>