<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>

<title>Admin</title>

</head>
<body>
	<h1>Admin Page</h1>
	<form:form method="GET" action = "/admin/product">
		<input type="submit" value = "View Products">
	</form:form>
	
	<form:form method="GET" action = "/admin/user">
		<input type="submit" value = "View Users">
	</form:form>
	
	<form:form method="POST" action="/logout">
		<input type="submit" value="Logout" />
	</form:form>

</body>

</html>