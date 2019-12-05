<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Users</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style type="text/css">
.item {
	width: 250px;
	background-color: #DCDDE6;
	text-align: center;
}

.img {
	margin-top: 10px;
	width: 100px;
	height: 100px;
}

.font-content {
	font-size: 25px;
	font-family: monospace;
}

.btn-format {
	width: 300px;
	height: 50px;
}
</style>

</head>
<body>
	<h1 align="center">Users</h1>

	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3">
			<form:form method="POST" action="/logout">
				<input class="btn btn-primary btn-format" type="submit"
					value="Logout" />
			</form:form>
		</div>
	</div>

	<br>
	<br>
	<br>

	<div align="center">
		<form:form action="/admin" method="GET">
			<div class="row">
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">Username</div>
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">Fullname</div>
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">City</div>
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">PhoneNumber</div>
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">Delete</div>
				<div class="col-sm-2 font-content"
					style="border-style: solid; border-color: gray;">Change Role</div>

				<c:forEach items="${users}" var="user">
					<div class="col-sm-2 font-content"
						style="background-color: #DDEBE0;">${user.username}</div>
					<div class="col-sm-2 font-content"
						style="background-color: #DDEBE0;">${user.fullname}</div>
					<div class="col-sm-2 font-content"
						style="background-color: #DDEBE0;">${user.city}</div>
					<div class="col-sm-2 font-content"
						style="background-color: #DDEBE0;">${user.phoneNumber}</div>
					<div class="col-sm-2 font-content" style="background-color: #DDEBE0;">
						<a
							href="/admin/user/delete?id=${user.id}&username=${user.username}&fullname=${user.fullname}&street=${user.street}&city=${user.city}&phoneNumber=${user.phoneNumber}">Delete</a>
					</div>
					<div class="col-sm-2 font-content"
						style="background-color: #DDEBE0;">
						<a href="/admin/user/update?id=${user.id}">Change role</a>
					</div>
				</c:forEach>
			</div>
			<br>
			<br>
			<br>
			<input class="btn btn-primary btn-format" type="submit" value="Back"
				style="margin-bottom: 10px">
		</form:form>
	</div>
</body>

</html>