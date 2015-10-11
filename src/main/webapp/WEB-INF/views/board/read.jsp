<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet"	type="text/css" />
<link href="/webpage/resources/css/board.css" rel="stylesheet"	type="text/css" />

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<div class="readArea">		
			<div class="titleBox">${title}</div>	
			<div class="dateBox">${date}</div>		
			<div class="hitsBox">Hits : ${hits}</div>				
			<div class="writerBox">Writer : ${writer}</div>
			<div class="textBox">${text}</div>
			<form class="modifyForm" method="post" action="modify">
				<input type="hidden" name="no" value='${rowNumber}'/>
				<input class="boardButton" type="submit" value="Modify"/>
			</form>
			<form class="deleteForm" method="post" action="delete">
				<input type="hidden" name="no" value='${rowNumber}'/>
				<input class="boardButton" type="submit" value="Delete"/>
			</form>
			<a href="/webpage/board"><button class="boardButton">Board</button></a>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>