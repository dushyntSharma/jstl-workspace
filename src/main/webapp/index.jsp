<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<style>
.btn btn-primary {
	text-color: black;
}

img {
	height: 500px;
}
</style>
</head>

<body>
	<center>
		<h1>JSTL Demo</h1>
		<button type="button" class="btn btn-outline-success">
			<a href='<c:url value="/insert.jsp"/>'>Insert Data </a>
		</button>
		<button type="button" class="btn btn-outline-success">
			<a href='<c:url value="/displaydata.jsp"/>'>View Details</a>
		</button>
	</center>


	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="1500">
				<img src="./img/img1.jpg" class="d-block w-100" alt="img1">
				<div class="carousel-caption d-none d-md-block">
					<h5>London</h5>
					<p>Great place to enjoy your time!</p>
				</div>
			</div>
			<div class="carousel-item" data-interval="1500">
				<img src="./img/img2.jpg" class="d-block w-100" alt="img2">
				<div class="carousel-caption d-none d-md-block">
					<h5>India</h5>
					<p>Feels Like home</p>
				</div>
			</div>
			<div class="carousel-item" data-interval="1500">
				<img src="./img/img3.jpg" class="d-block w-100" alt="img3">
				<div class="carousel-caption d-none d-md-block">
					<h5>United States</h5>
					<p>Great place to enjoy your time!</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>



	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>

</body>
</html>