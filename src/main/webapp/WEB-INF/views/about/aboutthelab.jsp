<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet"	type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<jsp:include page="/WEB-INF/views/common/submenu_about.jsp"></jsp:include>
		<div class="contentArea">
			<h3>About the Lab</h3>
			<img id="building" src="/webpage/resources/images/building.jpg"></img>
			<p>Picture of College of engineering 4th building</p>
			<p>Research on IoT, Mobile Computing, Embedded, E-Coaching, etc.</p>
			<a id="siteLink" href="http://ce.jejunu.ac.kr">Department of Computer Engineering's website</a>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>