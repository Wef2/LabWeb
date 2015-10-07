<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/about.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<jsp:include page="/WEB-INF/views/common/submenu_about.jsp"></jsp:include>
		<div class="contentArea">
			<h3>Profile</h3>
			<div class="profileArea">
				<img class="profilePhoto" src="/webpage/resources/images/profile.jpg" />
				<div class="nameArea">Mobile Kim</div>
				<div class="typeArea">Student</div>
				<div class="universityArea">Jeju National University Mobile Computing Lab</div>
			</div>
			<div class="informationArea">
				<div class="informTitleArea">Contact</div>
				<div class="informContentArea">None</div>
				<div class="informTitleArea">E-Mail</div>
				<div class="informContentArea">None</div>
				<div class="informTitleArea">SNS</div>
				<div class="informContentArea">None</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>
