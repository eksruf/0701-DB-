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
	String id= "1", pwd="1";  
	 //사용자가 아이디와 비밀번호를 입력한 값을 가져온다
	String uid = request.getParameter("id");
	String upwd = request.getParameter("pwd");
	
	//if문을 통해 일치하는 지 확인
	if(id.equals(uid) && pwd.equals(upwd)){ 
		session.setAttribute("id", "홍길동");
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
	}


%>



</body>
</html>



