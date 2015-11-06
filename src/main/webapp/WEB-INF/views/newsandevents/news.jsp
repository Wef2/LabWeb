<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet"	type="text/css" />
<link href="/webpage/resources/css/newsandevents.css" rel="stylesheet"	type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<jsp:include page="/WEB-INF/views/common/submenu_newsandevent.jsp"></jsp:include>
		<div class="contentArea">
			<h3>News</h3>
			<c:forEach var="news" items="${list}" varStatus="status">
				<div class="newsArea">
				<a class="newsTitle" target="_blank" href="${news.link}">${news.title}</a>
				<div class="newsPublisher">${news.publisher}</div>
				<div class="newsDate">${news.date}</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>