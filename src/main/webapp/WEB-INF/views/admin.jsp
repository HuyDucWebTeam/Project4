<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>

<title>Admin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style type="text/css">
	.btn-format{
		width: 300px;
		height: 50px;
	}
</style>
</head>

<body class="container">
	<h1 align="center">Admin Page</h1>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-sm-12" align="center">
			<form:form method="GET" action = "/admin/product">
				<input class="btn btn-primary btn-format" type="submit" value = "View Products">
			</form:form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-sm-12" align="center">
			<form:form method="GET" action = "/admin/user">
				<input class="btn btn-success btn-format" type="submit" value = "View Users">
			</form:form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-sm-12" align="center">
			<form:form method="GET" action = "/logout">
				<input class="btn btn-danger btn-format" type="submit" value = "Logout">
			</form:form>
		</div>
	</div>
</body>

</html>