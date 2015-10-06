<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Jeju National University Mobile Computing Lab</title>

<link href="/webpage/resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="/webpage/resources/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="mainArea">
		<div class="loginBox">
			<div class="loginBoxHeader">Register</div>
			<div class="loginBoxMain">
				<form method="post" action="userRegister">
					<p class="loginBoxText">ID</p>
					<input type="text" id="idInput" name="id"/>
					<p class="loginBoxText">E-Mail Address</p>
					<input type="text" id="idInput" name="email"/>	
					<p class="loginBoxText">Password</p>
					<input type="password" id="passwordInput" name="pw"/>	
					<p class="loginBoxText">Confirm your password</p>
					<input type="password" id="passwordInput" name="confirmPw"/>		
					<input type="submit" id="loginButton" value="Register"/>
				</form>
			</div>
		</div>	
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>