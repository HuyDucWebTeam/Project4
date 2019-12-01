<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
	<title>Registration Form</title>
</head>
<body>
	<h1>Register</h1>
	
	<form:form id="registerForm" action="/register" method="POST">

		<label for="username">Username: </label>
		<input type="text" name="username" id="username"/><br/>
		
		<label for="password">Password: </label>
		<input type="password" name="password" id="password"/><br/>
		
		<label for="confirm">Confirm password: </label>
		<input type="password" name="confirm" id="confirm"/><br/>
		
		<label for="fullname">Full name: </label>
		<input type="text" name="fullname" id="fullname"/><br/>
		
		<label for="street">Street: </label>
		<input type="text" name="street" id="street"/><br/>
		
		<label for="city">City: </label>
		<input type="text" name="city" id="city"/><br/>
		
		<label for="phoneNumber">Phone: </label>
		<input type="text" name="phoneNumber" id="phoneNumber"/><br/>
		
		<input type="submit" value="Register"/>
	</form:form>

</body>

</html>