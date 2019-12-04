<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<h1>Products</h1>
	<form:form method="POST" action="/logout">
		<input type="submit" value="Logout" />
	</form:form>

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
					<td><a href="/admin/edit?id=${product.id}">Edit</a></td>
					<td><a
						href="/admin/delete?id=${product.id}&code=${product.code}&description=${product.description}&price=${product.price}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<br>
		<input type="submit" value="Add Product">
	</form:form>

</body>

</html>