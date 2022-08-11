<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setAttribute("kor", request.getParameter("kor"));
	request.setAttribute("eng", request.getParameter("eng"));
	request.setAttribute("math", request.getParameter("math"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요</h1>
	<h2>당신의 평균 점수는 ${(kor+eng+math)/3} 입니다</h2>
	
	<c:choose>
	<c:when test="${((kor+eng+math)/3) >= 90}">
		<h2>당신의 등급은 A 등급 입니다.</h2>
	</c:when>
	<c:when test="${((kor+eng+math)/3) < 90 && ((kor+eng+math)/3) >= 80}">
		<h2>당신의 등급은 B 등급 입니다.</h2>
	</c:when>
	<c:when test="${((kor+eng+math)/3) < 80 && ((kor+eng+math)/3) >= 70}">
		<h2>당신의 등급은 C 등급 입니다.</h2>
	</c:when>
	<c:when test="${((kor+eng+math)/3) < 70 && ((kor+eng+math)/3) >= 60}">
		<h2>당신의 등급은 D 등급 입니다.</h2>
	</c:when>
	<c:when test="${((kor+eng+math)/3) < 60}">
		<h2>당신의 등급은 F 등급 입니다.</h2>
	</c:when>
	
	</c:choose>
</body>
</html>