<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="container-fluid">
		<img id="icon" src="/webpage/resources/images/jnuIcon.jpg"></img>
		<p id="introText">Hello  ${userID}<p>
		<p id="introText">안녕하세요 ${userID}님</p>
		<p id="introText">Welcome to Mobile Computing Laboratory Website<p>
		<p id="introText">모바일 컴퓨팅 웹사이트에 접속하신 것을 환영합니다.</p>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>