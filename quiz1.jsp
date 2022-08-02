<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=application.getContextPath()%>/quiz1Controller">
	<input type="text" name="id" placeholder="ID"
	value="<% if(id==null) { id="";} else {id=id;}%>" /><br />
	<input type="password" name="pw" placeholder="Password" /><br />
	<input type="radio" name="radio" id="radio" /><label for="radio">아이디 기억하기</label><br />
	<button>Login</button>
	
	</form>
</body>
</html>