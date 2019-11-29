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
	<h1>Login</h1>
	
	<p>New here? Click <a href="/register">here</a> to register.</p>

	<form:form method="POST" action="/login" id="loginForm">
		<label for="username">Username: </label>
		<input type="text" name="username" id="username" /><br/>
		
		<label for="password">Password: </label>
		<input type="password" name="password" id="password" /><br/>
		
		<input type="submit" value="Login"/>
	</form:form>

</body>

</html>