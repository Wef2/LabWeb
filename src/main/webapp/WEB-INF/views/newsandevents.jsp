<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/newsandevents.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="container-fluid text-center">
		<div class="row">
			<div class="col-sm-6" id="newsImageDiv">
				<h2>News</h2>
				<div class="imageLogo news"></div>
			</div>
			<div class="col-sm-6" id="eventsImageDiv">
				<h2>Events</h2>
				<div class="imageLogo events"></div>
			</div>
		</div>
	</div>
	<div class="container-fluid text-center">
		<div id="newsDiv">
			<h2>News</h2>
			<c:forEach var="news" items="${list1}" varStatus="status">
				<div class="newsArea">
					<a class="newsTitle" target="_blank" href="${news.link}">${news.title}</a>
					<div class="newsPublisher">${news.publisher}</div>
					<div class="newsDate">${news.date}</div>
				</div>
			</c:forEach>
		</div>
		<div id="eventsDiv">
			<h2>Events</h2>
			<c:forEach var="event" items="${list2}" varStatus="status">
				<div class="newsArea">
					<a class="newsTitle" target="_blank" href="${event.link}">${event.title}</a>
					<div class="newsDate">${event.date}</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/webpage/resources/js/newsandeventsapp.js"></script>
</body>
</html>