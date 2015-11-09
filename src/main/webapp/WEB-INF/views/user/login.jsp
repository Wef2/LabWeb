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
		<div class="loginBox">
			<div class="loginBoxHeader">Login</div>
			<div class="loginBoxMain">
				<form method="post" action="userLogin">
					<p class="loginBoxText">ID</p>
					<input id="idInput" type="text" name="id"/>
					<p class="loginBoxText">Password</p>
					<input id="passwordInput" type="password" name="pw"/>		
					<input type="submit" id="loginButton" value="Login"/>
				</form>
			</div>
		</div>	
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>