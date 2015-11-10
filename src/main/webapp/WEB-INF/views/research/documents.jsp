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
	<jsp:include page="/WEB-INF/views/common/submenu_research.jsp"></jsp:include>
	<div class="container-fluid bg-grey">
		<h2>Documents</h2>
		<c:forEach var="download" items="${list}" varStatus="status">
			<div class="row downloadForm">
				<div class="col-sm-8">
					<div class="titleFont">
						<a href="/webpage/resources/files/${download.link}" target="_blank">${download.title}</a>
					</div>
					<div class="informFont">${download.writer}</div>
					<div class="informFont">${download.date}</div>
				</div>
				<div class="col-sm-4">
					<a href="/webpage/download.do?&fileName=${download.link}"><img src="/webpage/resources/images/download.png"
						id="downloadIcon" /></a>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>