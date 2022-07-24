<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String[] cks  = request.getParameterValues("ck");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>나의 취미는?</h2>
	<ul>
	<%	for(int i = 0; i < cks.length; i++) {%>
		<li><%=cks[i]%></li>
	<% }%>
	</ul>
</body>
</html>