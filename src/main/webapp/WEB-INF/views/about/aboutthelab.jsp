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
	<div class="container-fluid text-center bg-grey">
		<h2>About the Lab</h2>
		<img id="building" src="/webpage/resources/images/building.jpg"></img>
		<p>Picture of College of engineering 4th building</p>
		<p>Research on IoT, Mobile Computing, Embedded, E-Coaching, etc.</p>
		<a id="siteLink" href="http://ce.jejunu.ac.kr">Department of Computer Engineering's website</a>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>