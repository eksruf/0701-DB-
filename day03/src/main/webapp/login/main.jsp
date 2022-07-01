<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("id")==null){//session이 없다면
		response.sendRedirect("loginForm.jsp"); //로그인폼으로 바로 이동한다.
	}

%>


	로그인 성공한 사용자만 접근 가능합니다. <br>
	<%=session.getAttribute("id") %>님 환영합니다. <br>
	<a href="logout.jsp">로그아웃</a>
	<a href="loginForm.jsp">로그인 이동</a>
</body>
</html>





