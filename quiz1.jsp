<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>취미</legend>
			<form action="quiz1_result.jsp">
				<label for="ck">리본 공예</label><input type="checkbox" name="ck" value="리본 공예"/><br />
				<label for="ck">와이어 공예</label><input type="checkbox" name="ck" value="와이어 공예"/><br />
				<label for="ck">비즈 공예</label><input type="checkbox" name="ck" value="비즈 공예"/><br />
				<label for="ck">점토 공예</label><input type="checkbox" name="ck" value="점토 공예"/><br />
				<label for="ck">종이 공예</label><input type="checkbox" name="ck" value="종이 공예"/><br />
				<label for="ck">도자기 공예</label><input type="checkbox" name="ck" value="도자기 공예"/><br />
				<label for="ck">양초 만들기</label><input type="checkbox" name="ck" value="양초 만들기"/><br />
				<label for="ck">스템프 공예</label><input type="checkbox" name="ck" value="스템프 공예"/><br />
				<label for="ck">가죽 공예</label><input type="checkbox" name="ck" value="가죽 공예"/><br />
				<label for="ck">인형옷 만들기</label><input type="checkbox" name="ck" value="인형옷 만들기"/><br />
	</fieldset>
		<button type="submit">전송</button>
	</form>
</body>
</html>