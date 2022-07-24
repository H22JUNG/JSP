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
	<ul>
		<form action="quiz2_result.jsp" method="post">
			<li>파일추가 <input type="file" name="file" /></li> <br />
			<button type="button" id="add">추가</button>
			<button type="submit">전송</button>
		</form>
	</ul>
	<script>
		document.getElementById("add").addEventListener("click", function() {
			var newli = document.createElement("li");
			newli.innerText = "파일추가 ";
			var newinput = document.createElement("input");
			newinput.setAttribute("type", "file");
			newinput.setAttribute("name", "file");
			newli.append(newinput);
			document.querySelector("li").append(newli);
		});
	</script>
</body>
</html>