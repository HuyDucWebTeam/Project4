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
	<h1>Login</h1>
	
	<p>New here? Click <a href="/register">here</a> to register.</p>

	<form method="POST" action='<c:url value = "/login"/>' id="loginForm">
		<label for="username">Username: </label>
		<input type="text" name="username" id="username" /><br/>
		
		<label for="password">Password: </label>
		<input type="password" name="password" id="password" /><br/>
		
		<input type="submit" value="Login"/>
	</form>

</body>

</html>