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
			<h3>People</h3>
			<c:forEach var="profile" items="${list}" varStatus="status">
				<div class ="peopleArea">
					<img class="peoplePhoto" src="/webpage/resources/images/${profile.image}" />
					<div class="peopleTypeArea">${profile.type}</div>
					<div class="peopleNameArea"><a class="textColorA" href="/webpage/about/profile?no=${profile.no}">${profile.name}</a></div>					
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>
