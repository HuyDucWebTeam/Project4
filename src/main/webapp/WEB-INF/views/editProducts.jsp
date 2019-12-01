<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<title>Registration Form</title>
</head>
<body>

	<h1>Product</h1>

	<form:form id="form_add" method="POST">
		<table cellspacing="0" border="0">
			<input hidden="1" type="text" name="id" value="${param.id}">
			<tr>
				<td align="right">Product Code:</td>
				<td><input type="text" name="code"></td>
			</tr>

			<tr>
				<td align="right">Product Description:</td>
				<td><input type="text" name="description"></td>
			</tr>

			<tr>
				<td align="right">Product Price:</td>
				<td><input type="text" name="price"></td>
			</tr>
		</table>
		<br>
		<br>
		<input type="submit" value="Update Product" onclick="update()">
		<input type="submit" value="View Products" onclick="view()">
	</form:form>

	<script>
		function update() {
			document.getElementById('form_add').action = "/edit"/>";
		}
		function view() {
			document.getElementById('form_add').action = "/product"/>";
		}
	</script>
</body>

</html>