<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>

<!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<h1>Product</h1>

	<form id="form_add" method="POST">
		<table cellspacing="0" border="0">
			<tr>
				<td align="right">Product Code:</td>
				<td><input type="text" name="code" value="${code}"></td>
			</tr>
			
			<tr>
				<td align="right">Product Description:</td>
				<td><input type="text" name="description" value="${description}"></td>
			</tr>
			
			<tr>
				<td align="right">Product Price:</td>
				<td><input type="text" name="price" value="${price}"></td>
			</tr>
		</table>
		<br> <br> <input type="submit" value="Update Product"
			onclick="update()"> <input type="submit"
			value="View Products" onclick="view()">
	</form>

	<script>
		function update() {
			document.getElementById('form_add').action = "<c:url value="/add"/>";
		}
		function view() {
			document.getElementById('form_add').action = "<c:url value="/product"/>";
		}
	</script>

</body>

</html>