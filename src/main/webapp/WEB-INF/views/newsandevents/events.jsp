<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/newsandevents.css" rel="stylesheet"	type="text/css" />

</head>
<body>
		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
		<div class="mainArea">
			<jsp:include page="/WEB-INF/views/common/submenu_newsandevent.jsp"></jsp:include>
			<div class="contentArea">
			<h3>Events</h3>
			<c:forEach var="event" items="${list}" varStatus="status">
				<div class="newsArea">
				<a class="newsTitle" target="_blank" href="${event.link}">${event.title}</a>
				<div class="newsDate">${event.date}</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>