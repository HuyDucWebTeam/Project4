<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<title>Update User</title>
</head>
<body>
	<h1 style="font-weight: bold">Choose user's role:</h1>

	<form:form id="form" method="POST">
		<table cellspaceing="2" border="0">
			<input hidden="1" type="text" name="id" value="${param.id}">
			<tr>
				<td><input type="checkbox" name="roleName" value="USER"></td>
				<td><label>User</label></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="roleName" value="ADMIN"></td>
				<td><label>Admin</label></td>
			</tr>
			<tr>
				<td><input type="submit" value="Yes" onclick="yes()"></td>
				<td><input type="submit" value="No" onclick="no()"></td>
			</tr>
		</table>
	</form:form>

	<script>
		function yes() {
			document.getElementById('form').action = "/admin/user/update";
		}
		function no() {
			document.getElementById('form').action = "/admin/user";
			document.getElementById('form').method = "GET";
		}
	</script>
</body>

</html>