<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Cookie[] cookies = request.getCookies();
	String val = "";
	
	for(Cookie cookie : cookies) {
		if(cookie.getName().equals("userId")) {
			val = cookie.getValue();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	background: url(https://i.imgur.com/MQB99sg.jpg) #a9b89e;
	font-family: Arial;
	font-size: 12px;
	color: #C4BCB0;
}

input[type="text"], input[type="password"] {
	background: #EAE6E1;
	border: 0;
	font-weight: bold;
	padding: 10px;
	border-radius: 3px;
	width: 100%;
	margin: 5px 0;
	outline: medium none;
	color: #838383;
}
</style>
</head>
<body>
	<form action="<%=application.getContextPath()%>/quiz1Controller" method="post">
	<input type="text" name="id" placeholder="ID" value="<%=val%>" /><br />
	<input type="password" name="pw" placeholder="Password" /><br />
	<input type="checkbox" name="radio" id="radio"  value="y"/><label for="radio">아이디 기억하기</label><br />
	<button>Login</button>
	
	</form>
</body>
</html>