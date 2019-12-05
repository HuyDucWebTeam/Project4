<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View items</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style type="text/css">
	.item {
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
	<h3 align="center">LIST PRODUCTS</h3>
	<br>
	  
	<div class="row">
		<div class="col-sm-3">
			<a href="/user/cart" class="btn btn-primary">View cart</a>
		</div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3"></div>
		<div class="col-sm-3">
  			<!--<form:form action="" method="POST" id="formSearch">-->
  				<input type="text" id="textSearchItem" placeholder="type here">
				<input type="submit" value="Search" onclick="search()">
			<!--</form:form>-->
		</div>
	</div>
	
	<br>
	<div class="row">
  		<c:forEach items="${items}" var="item">
  			<div class="col-sm-3" style="margin-top: 20px; margin-bottom: 20px">
  				<div class="item">
  					<img src="${item.urlImg}" alt="img" class="img">
  					<br>
  					<p>Code: ${item.code}</p>
  					<p>Description: ${item.description}</p>
  					<p>Price: ${item.price}</p>
  					
  					<form:form action="/user/cart?code=${item.code}&description=${item.description}&urlImg=${item.urlImg}" method="POST">
  						<input type="submit" class="btn btn-primary" style="margin-bottom: 10px" value="Add to cart">
  					</form:form>
  					<!--
  					<a href="/user/cart?code=${item.code}" class="btn btn-primary" style="margin-bottom: 10px">Add to cart A</a>
  					-->
  					<br>
  				</div>
  			</div>
  		</c:forEach>
  	</div>
</body>

<script>
	function search(){
		nameItem = document.getElementById('textSearchItem').value;
		action = document.getElementById('formSearch').action;
		console.log(action);
		document.getElementById('formSearch').action = action + "?name=" + nameItem;
	}
</script>
</html>