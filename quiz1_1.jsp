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
	<form action="./quiz1_1_result.jsp">
	<label for="">이름 : </label><input type="text" name="name"/> <br />
	<label for="">남자 : </label><input type="radio" name="gender" id="gender" value="남자"/><br />
	<label for="">여자 : </label><input type="radio" name="gender" id="gender" value="여자"/><br />
	<button>전송</button>
	</form>
</body>
</html>