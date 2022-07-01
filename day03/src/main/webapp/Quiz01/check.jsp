<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인체크
<%
String id="1" , pw="1";
	String uid = request.getParameter("id");
	String upw = request.getParameter("pw");
	
	if(id.equals(uid) && pw.equals(upw)){
		session.setAttribute("id", "홍길동");
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}

 %>
</body>
</html>