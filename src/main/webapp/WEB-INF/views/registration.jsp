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
	<h1>Register</h1>
	
	<form method="POST" action="<c:url value="/register" />" id="registerForm">

		<label for="username">Username: </label>
		<input type="text" name="username"/><br/>
		
		<label for="password">Password: </label>
		<input type="password" name="password"/><br/>
		
		<label for="confirm">Confirm password: </label>
		<input type="password" name="confirm"/><br/>
		
		<label for="fullname">Full name: </label>
		<input type="text" name="fullname"/><br/>
		
		<label for="street">Street: </label>
		<input type="text" name="street"/><br/>
		
		<label for="city">City: </label>
		<input type="text" name="city"/><br/>
		
		<label for="phone">Phone: </label>
		<input type="text" name="phone"/><br/>
		
		<input type="submit" value="Register"/>
	</form>

</body>

</html>