<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

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
				<p>Research on IoT platform, M2M, Smart Toys, Sensor nodes, Middleware, CoAP, Building energy optimization, Service Modeling, etc</p>
			</div>	
		</div>		
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
</body>
</html>