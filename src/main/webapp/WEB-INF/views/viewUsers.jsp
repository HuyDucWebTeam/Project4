<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>

<title>User</title>

</head>
<body>
	<h1>Users</h1>

	<form:form action="/admin" method="GET">
		<table cellspacing="1" border="2">
			<thead>
				<td>Username</td>
				<td>Fullname</td>
				<td>Street</td>
				<td>City</td>
				<td>Phone number</td>
				<td>Delete</td>
				<td>Change role</td>
			</thead>

			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.username}</td>
					<td>${user.fullname}</td>
					<td>${user.street}</td>
					<td>${user.city}</td>
					<td>${user.phoneNumber}</td>
					<td><a
						href="/admin/user/delete?id=${user.id}&username=${user.username}&fullname=${user.fullname}&street=${user.street}&city=${user.city}&phoneNumber=${user.phoneNumber}">Delete</a></td>
					<td><a href="/admin/user/update?id=${user.id}">Change role</a></td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Back">
	</form:form>
</body>

</html>