<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

header {
	width: 100vw;
	height: 15vh;
	background-color: orange;
}

.container {
	display: flex;
	width: 100%;
}

aside {
	width: 10vw;
	height: 70vh;
	background-color: aquamarine;
}

main {
	width: calc(100% - 10vw);
	height: 70vh;
}

footer {
	width: 100vw;
	height: 15vh;
	background-color: yellowgreen;
}

h3 {
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<% String page1 = "quiz2_main1.jsp"; //첫번재 화면
	String page2 = request.getParameter("page1"); //밑에 a태그 클릭했을때 변수page1에 메인2페이지의 값이 담기면
	if (page2 != null) {
		page1 = page2; //초기값에서 2번째 값으로 바꾸기
	}
    %>
	<header>
		<jsp:include page="quiz2_header.jsp"></jsp:include>
		<a href="?page1=quiz2_main2.jsp">이동</a> <!-- 이동할 변수 지정 -->
	</header>

	<div class="container">
		<aside>
			<jsp:include page="quiz2_aside.jsp"></jsp:include>
		</aside>
		<main>
			<jsp:include page="<%=page1%>"></jsp:include>
		</main>
	</div>
	<footer>
		<jsp:include page="quiz2_footer.jsp"></jsp:include>
	</footer>
</body>
</html>