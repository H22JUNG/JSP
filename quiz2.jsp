<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>평균 구하기</h1>
	<form action="./quiz2_result.jsp">
	<ul>
		<li><label for="">국어 </label><input type="text" name="kor" id="kor" /></li>
		<li><label for="">영어 </label><input type="text" name="eng" id="eng" /></li>
		<li><label for="">수학 </label><input type="text" name="math" id="math" /></li>
		<li><button>전송</button></li>
	</ul>
	</form>
</body>
</html>