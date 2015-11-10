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
		<form method="post" action="update">
			<input type="hidden" name="no" value='${no}' /> Title : <input id="titleInput" type="text" name="title"
				value='${title}'></input> <br> Text
			<textarea id="textInput" name="text">${text}</textarea>
			<input id="submitButton" type="submit" value="Modify" />
		</form>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>