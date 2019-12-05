<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style type="text/css">
	.cart {
		width: 250px; 
		background-color: #DCDDE6; 
		text-align: center;
	}
	.img {
		margin-top: 10px;
		margin-bottom: 10px;
		width:100px;
		height:100px;
	}
</style>
</head>
<body class="container">
	<h3 align="center">CART</h3>
	<div class="row">
  		<c:forEach items="${carts}" var="cart">
  			<div class="col-sm-3" style="margin-top: 20px; margin-bottom: 20px">
  				<div class="cart">
  					<img src="${cart.urlImg}" alt="img" class="img">
  					<p>Code: ${cart.idProduct}</p>
  					<p>Description: ${cart.description}</p>
  					<p>Price: ${cart.price}</p>
  					<span for="qu">Quantity: </span><input id = "qu" type="text" placeholder="Enter quantity">
  					<form:form action="/user/cart/delele?cartId=${cart.id}" method="POST" style="margin-top:10px">
  						<input type="submit" class="btn btn-primary" style="margin-bottom: 10px" value="Delete this item">
  					</form:form>
  				</div>
  			</div>
  		</c:forEach>
  	</div>
  	<br>
  	<br>
  	<br>
  	<div class="row">
  		<div class="col-sm-3">
  			<a href="" class="btn btn-primary">Check out</a>
  		</div>
  		<div class="col-sm-3"></div>
  		<div class="col-sm-3"></div>
  		<div class="col-sm-3">	
  			<a href="/user/viewItems" class="btn btn-primary">Continue shopping</a>
  		</div>
  	</div>
</body>
</html>