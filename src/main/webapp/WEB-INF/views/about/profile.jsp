<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
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
				<img class="profilePhoto" src="/webpage/resources/images/${image}" />
				<div class="nameArea">${name}</div>
				<div class="typeArea">${type}</div>
				<div class="universityArea">Jeju National University Mobile Computing Lab</div>
			</div>
			<div class="informationArea">
				<div class="informTitleArea">Phone</div>
				<div class="informContentArea">${phone}</div>
				<div class="informTitleArea">E-Mail</div>
				<div class="informContentArea">${email}</div>
				<div class="informTitleArea">SNS</div>
				<div class="informContentArea">${sns}</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>
