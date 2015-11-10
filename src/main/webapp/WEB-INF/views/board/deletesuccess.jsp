<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/board.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container-fluid">
		<h1>Delete Success!</h1>
		<a href="http://localhost:8080/webpage/board" id="toBoardButton">Board</a>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>