<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span> 
	      </button>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li><a href="/webpage/about">ABOUT</a></li>
	        <li><a href="/webpage/research">RESEARCH</a></li>
	        <li><a href="/webpage/newsandevents">NEWS AND EVENTS</a></li>
	        <li><a href="/webpage/board">BOARD</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>

	<div class="jumbotron text-center">
		<h1>Jeju National University</h1>
		<p>Mobile Computing Lab</p>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<span class="icon computer"></span>
			</div>
			<div class="col-sm-8">
				<h2>Jeju National University</h2>
				<h4>Mobile Computing Laboratory</h4>
				<p> </p>
			</div>
		</div>
	</div>
	
	<div class ="container-fluid text-center bg-grey">
		<h2>Research</h2>
		<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
			
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h4>
						IoT<br> <span>M2M, CoAP, Smart Convergence</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						Mobile Computing<br> <span> Smartphone, Android</span>
					</h4>
				</div>
				<div class="item">
					<h4>
						Embedded Computing<br> <span>Galileo, Arduino, Raspberry Pi</span>
					</h4>
				</div>
			</div>
			
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class ="container-fluid text-center">
		<h2>Our Location</h2>
		<div id="map" style="height:400px;width:100%;"></div>
	</div>
	
	<footer class="container-fluid text-center bg-grey">
	  <p>Jeju National University Mobile Computing Lab</p> 
	</footer>

	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=e6f5ebdaa58a495eb00c9a904fb8f425"></script>
	<script type="text/javascript" src="/webpage/resources/js/map.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
