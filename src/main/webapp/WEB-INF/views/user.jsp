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
	<form:form method="GET" action="/user/viewItems">
		<input type="submit" value="View items">
	</form:form>
	<form:form method="POST" action="/logout">
		<input type="submit" value="Logout" />
	</form:form>

</body>

</html>