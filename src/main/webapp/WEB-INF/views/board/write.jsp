<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet"
	type="text/css" />
<link href="/webpage/resources/css/board.css" rel="stylesheet"
	type="text/css" />

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<form method="POST" action="writeText">
			Title : <input id="titleInput" type="text" name="title"></input> 
			<br>
			<textarea id="textInput" name="text"></textarea>
			<input id="submitButton" type="submit" value="Submit"/>
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>