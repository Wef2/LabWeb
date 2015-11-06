<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="mainArea">
		<jsp:include page="/WEB-INF/views/common/submenu_about.jsp"></jsp:include>
		<div class="contentArea">
			<h3>Contact</h3>
			<div id="map"></div>
			<p>제주대학교 공과대학 4호관 4층 컴퓨터공학과 모바일 컴퓨팅 연구실</p>
			<p>Mobile Computing Lab 423, Department of Computer Engineering, The 4th Floor, 4th College of Engineering
				Building Jeju National University, Jeju, South Korea</p>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=e6f5ebdaa58a495eb00c9a904fb8f425"></script>
	<script type="text/javascript" src="/webpage/resources/js/map.js"></script>

</body>
</html>