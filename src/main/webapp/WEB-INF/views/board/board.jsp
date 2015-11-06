<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<td id="board_number"><a class="blueColor" href="board/read?no=${board.rowNumber}">${board.rowNumber}</a></td>
					<td id="board_title"><a class="blueColor" href="board/read?no=${board.rowNumber}">${board.title}</a></td>
					<td id="board_id">${board.writer}</td>
					<td id="board_date">${board.date}</td>
					<td id="board_hits">${board.hits}</td>
				</tr>
			</c:forEach>
		</table>
		<div class = "pageArea">
			<c:forEach var="page" begin="${firstPage}" end="${lastPage}" step="1" >
			<c:choose>
			   <c:when test="${keyword != null}"><div class="pageNumber"><a href="board?page=${page}?keyword=${keyword}">${page}</a></div></c:when>
			   <c:otherwise><div class="pageNumber"><a href="board?page=${page}">${page}</a></div></c:otherwise>
			</c:choose>			
			</c:forEach>
		</div>
		
		<div class="searchArea">
			<select id="selectOptions">
				<option>Title</option>
				<option>ID</option>
			</select>
			<form method="get" action="board">
				<input id="searchInput" type="text" name="keyword" /> 
				<input type="submit" id="searchButton" value="Search" />
			</form>
			<a href="/webpage/board/write"><button id="writeButton">Write</button></a>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>