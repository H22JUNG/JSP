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
<style>
        div {
            width: 350px;
            background-color: #eee;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        h4 {
            font-weight: 400;
            margin: 0;
        }
        p {
            background-color:yellowgreen;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            color: white;
            text-align: center;
            display: inline-block;
            margin-right: 10px;
        }
        input[type=text], input[type=email], input[type=password], select{
            border: none;
            background-color: #ddd;
            width: 340px;
            height: 35px;
            margin-bottom: 25px;
        }
        input[type=radio] {
            margin-top: 8px;
        }
        textarea {
            border: none;
            background-color: #ddd;
            width: 340px;
            height: 60px;
            margin-bottom: 25px;
        }
        button {
            width: 340px;
            height: 60px;
            background-color:yellowgreen;
            border: none;
            color: white;
            font-size: medium;
        }
    </style>
</head>

<body>
<form action="<%=application.getContextPath()%>/Quiz2Controller" method="get">
 <div>
    <h1>회원가입</h1>
    <h4><p>1</p>기본 정보</h4>
    <label for="name">이름: </label><br>
    <input type="text" name="name" id="name"><br>
    <label for="email">Email: </label><br>
    <input type="email" name="email" id="email"><br>
    <label for="pw">비밀번호: </label><br>
    <input type="password" name="pw" id="pw"><br>
    <span>나이: </span><br>
    <input type="radio" name="age" id="age" value="top_13"><label for="age">13살 이상</label><br>
    <input type="radio" name="age" id="age" value="under_13"><label for="age">13살 이하</label><br>
    <br>
    <h4><p>2</p>추가 정보</h4>
    <label for="work">주요업무: </label><br>
    <textarea name="work" id="work"></textarea><br>
    <label for="job">주요 직업: </label><br>
    <select name="job" id="job">
        <option value="front">Front-End Developer</option>
        <option value="back">Back-End Developer</option>
    </select>
    <label for="inter">관심 분야: </label><br>
    <input type="checkbox" name="inter" value="Development"><label for="inter">Development</label><br>
    <input type="checkbox" name="inter" value="Design"><label for="inter">Design</label><br>
    <input type="checkbox" name="inter" value="Business"><label for="inter">Business</label><br>
    <br><br>
    <button>가입하기</button>
 </div>
 </form>
</body>
</html>