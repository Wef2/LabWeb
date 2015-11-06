<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/research.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<jsp:include page="/WEB-INF/views/common/submenu_research.jsp"></jsp:include>
		<div class="contentArea">
			<h3>IoT</h3>
			<img id="iotImage" src="/webpage/resources/images/iot.png" />
			<p>Internet of Things</p>
			<p>IoT platform, M2M, Smart Toys, Sensor nodes, Middleware, Service Modeling, etc</p>
			<p>IoT Convergence, CoAP, Building energy optimization</p>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>