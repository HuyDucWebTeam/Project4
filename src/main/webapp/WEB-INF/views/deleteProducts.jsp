<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<title>Registration Form</title>
</head>
<body>

	<h1 style="font-weight: bold">Are you sure you want to delete this
		product?</h1>

	<form:form id="form_delete" method="POST">
		<table cellspaceing="2" border="0">
			<input hidden="1" type="text" name="id" value="${param.id}">
			<input hidden="1" type="text" name="code" value="${param.code}">
			<input hidden="1" type="text" name="description" value="${param.description}">
			<input hidden="1" type="text" name="price" value="${param.price}">
			<tr>
				<td>Product Code:</td>
				<td>${param.code}</td>

			</tr>
			<tr>
				<td>Product Description:</td>
				<td>${param.description}</td>
			</tr>
			<tr>
				<td>Product Price:</td>
				<td>${param.price}</td>
			</tr>
			<tr>
				<td><input type="submit" value="Yes" onclick="yes()"></td>
				<td><input type="submit" value="No" onclick="no()"></td>
			</tr>
		</table>
	</form:form>

	<script>
		function yes() {
			document.getElementById('form_delete').action = "/delete";
		}
		function no() {
			document.getElementById('form_delete').action = "/product";
		}
	</script>
</body>

</html>