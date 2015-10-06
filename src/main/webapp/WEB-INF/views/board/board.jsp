<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<table>
			<tr class="board_top">
				<td id="board_number">No</td>
				<td id="board_title">Title</td>
				<td id="board_id">ID</td>
				<td id="board_date">Date</td>
				<td id="board_hits">Hits</td>
			</tr>
			<c:forEach var="board" items="${list}" varStatus="status">
				<tr>
					<td id="board_number"><a class = "blueColor" href="board/read?no=${board.no}">${board.no}</a></td>
					<td id="board_title"><a class = "blueColor"href="board/read?no=${board.no}">${board.title}</a></td>
					<td id="board_id">${board.writer}</td>
					<td id="board_date">${board.date}</td>
					<td id="board_hits">${board.hits}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="searchArea">
			<select id="selectOptions">
				<option>Title</option>
				<option>ID</option>
			</select>
			<textarea id="searchInput"></textarea>
			<img id="searchButton" src="resources/images/search.png" /> <a
				href="/webpage/board/write"><button
					id="writeButton">Write</button></a>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>