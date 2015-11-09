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
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<div class="imageLogo computer"></div>
			</div>
			<div class="col-sm-8">
				<h2>Jeju National University</h2>
				<p class="font25px">College of Engineering, Department of Computer Engineering, Mobile Computing Laboratory. Our
					laboratory is located in Jeju National University, Jeju, Korea. You can find our location by clicking the button
					below.</p>
				<button id="goToMap" class="btn btn-primary btn-lg">Check the Map!</button>
			</div>
		</div>
	</div>

	<div class="container-fluid bg-grey">
		<div class="row">
			<div class="col-sm-8">
				<h2>About our laboratory</h2>
				<p class="font25px">Our laboratory researches computer embedded computing and mobile computing. Our laboratory
					also research technology for Internet of Things through various projects. Please click the button below for more
					information.</p>
				<a href="/webpage/about"><button class="btn btn-primary btn-lg">More Information</button></a>
			</div>
			<div class="col-sm-4">
				<div class="imageLogo document"></div>
			</div>
		</div>
	</div>

	<div class="container-fluid text-center">
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
						<a href="/webpage/research/iot"> IoT<br> <span>M2M, CoAP, Smart Convergence</span></a>
					</h4>
				</div>
				<div class="item">
					<h4>
						<a href="/webpage/research/mobilecomputing"> Mobile Computing<br> <span> Smartphone, Android</span></a>
					</h4>
				</div>
				<div class="item">
					<h4>
						<a href="/webpage/research/embedded">Embedded<br> <span>Galileo, Arduino,
								Raspberry Pi</span>
						</a>
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
	<div class="container-fluid text-center bg-grey" id="mapDiv">
		<h2>Our Location</h2>
		<div id="map" style="height: 600px; width: 100%;"></div>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=e6f5ebdaa58a495eb00c9a904fb8f425"></script>
	<script type="text/javascript" src="/webpage/resources/js/map.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/webpage/resources/js/homeapp.js"></script>
</body>
</html>
