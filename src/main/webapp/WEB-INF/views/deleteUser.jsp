<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<title>Delete User</title>
</head>
<body>

	<h1 style="font-weight: bold">Are you sure you want to delete this
		user?</h1>

	<form:form id="form" method="POST">
		<table cellspaceing="2" border="0">
			<input hidden="1" type="text" name="id" value="${param.id}">
			<input hidden="1" type="text" name="username" value="${param.username}">
			<input hidden="1" type="text" name="fullname" value="${param.fullname}">
			<input hidden="1" type="text" name="street" value="${param.street}">
			<input hidden="1" type="text" name="city" value="${param.city}">
			<input hidden="1" type="text" name="phoneNumber" value="${param.phoneNumber}">
			<tr>
				<td>Username:</td>
				<td>${param.username}</td>

			</tr>
			<tr>
				<td>Fullname:</td>
				<td>${param.fullname}</td>
			</tr>
			<tr>
				<td>Street:</td>
				<td>${param.street}</td>
			</tr>
			<tr>
				<td>City:</td>
				<td>${param.city}</td>
			</tr>
			<tr>
				<td>Phone number:</td>
				<td>${param.phoneNumber}</td>
			</tr>
			<tr>
				<td><input type="submit" value="Yes" onclick="yes()"></td>
				<td><input type="submit" value="No" onclick="no()"></td>
			</tr>
		</table>
	</form:form>

	<script>
		function yes() {
			document.getElementById('form').action = "/admin/user/delete";
		}
		function no() {
			document.getElementById('form').action = "/admin/user";
			document.getElementById('form').method = "GET";
		}
	</script>
</body>

</html>