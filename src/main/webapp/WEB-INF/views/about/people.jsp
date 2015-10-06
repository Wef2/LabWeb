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
			<h3>People</h3>
			<p>Professor</p>
			<p>Do-Hyeun Kim</p>
			<br>
			<p>Wenquen Jin</p>
			<p>Hyun-Jun Yang</p>
			<p>Do-Yeon Kim</p>
			<p>Bo-Kyung Kim</p>
			<p>...</p>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>
