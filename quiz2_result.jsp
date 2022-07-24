<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	String[] files = request.getParameterValues("file");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내가 올린 파일</h1>
	<ul>
		<% for(int i = 0; i < files.length; i++) { 
			if(files[i] != null && files[i] != ""){%>
			<li><%out.println(files[i]);}}%></li>
	</ul>
</body>
</html>