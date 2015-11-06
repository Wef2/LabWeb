<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/submenu_about.jsp"></jsp:include>
	<div class="container-fluid text-center bg-grey" id="labDiv">
		<h2>About the Lab</h2>
		<img id="building" src="/webpage/resources/images/building.jpg"></img>
		<p>Picture of College of engineering 4th building</p>
		<p>Our laboratory researches computer embedded computing and mobile computing. Our laboratory also research
			technology for Internet of Things through various projects.</p>
		<a id="siteLink" href="http://ce.jejunu.ac.kr">Department of Computer Engineering's website</a>
	</div>
	<div class="container-fluid text-center" id="mapDiv">
		<h2>Contact</h2>
		<div class="row">
			<div class="col-sm-4">
				<h4>Location</h4>
				<p>Jeju National University, Ara-Dong, Jeju-si, Jeju, Korea</p>
			</div>
			<div class="col-sm-8" id="map" style="height: 400px;"></div>
		</div>
	</div>
	<div class="container-fluid text-center bg-grey" id="peopleDiv">
		<h2>People</h2>
		<c:forEach var="profile" items="${list}" varStatus="status">
			<div class="row">
				<img class="peoplePhoto" src="/webpage/resources/images/${profile.image}" />
				<div class="col-sm-8">${profile.type}
					<div class="peopleNameArea">
						<a class="textColorA" href="/webpage/about/profile?no=${profile.no}">${profile.name}</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=e6f5ebdaa58a495eb00c9a904fb8f425"></script>
	<script type="text/javascript" src="/webpage/resources/js/map.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/webpage/resources/js/aboutapp.js"></script>
</body>
</html>