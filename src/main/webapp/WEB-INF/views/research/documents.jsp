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
			<h3>Documents</h3>
			<c:forEach var="download" items="${list}" varStatus="status">
				<div class="documentArea">
				<a href="/webpage/resources/files/${download.link}" class="documentTitle" target="_blank">${download.title}</a>
				<div class="documentWriter">${download.writer}</div>
				<div class="documentDate">${download.date}</div>
				<a href="/webpage/download.do?&fileName=${download.link}"><img src="/webpage/resources/images/download.png" id="downloadIcon" /></a>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>