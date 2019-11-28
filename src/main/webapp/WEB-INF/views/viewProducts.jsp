<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>

	<!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<h1>Products</h1>
	
	<form action='<c:url value="/product" />' method="POST">
    <table cellspacing="1" border="2">
        <thead>
        <td>Code</td>
        <td>Description</td>
        <td>Price</td>
        <td></td>
        <td></td>
        </thead>

        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.code}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td><a href="<c:url value="/editProductPage.jsp?code=${product.code}&description=${product.description}&price=${product.price}"/>">Edit</a></td>
                <td><a href="<c:url value="/deleteProductPage.jsp?code=${product.code}&description=${product.description}&price=${product.price}"/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    <input type="submit" value="Add Product">
</form>

</body>

</html>