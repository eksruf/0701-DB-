<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">main</h1>
<%=session.getAttribute("id") %>님 환영합니다 <br>
<a href="logout.jsp"> <input type="button" value="로그아웃"> </a>
<a href="login.jsp"> <input type="button" value="로그인"> </a>

</body>
</html>