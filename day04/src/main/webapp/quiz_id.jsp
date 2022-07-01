<%@page import="quiz.MemberDTO"%>
<%@page import="quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>인 적 사 항</h3>
id: <%=request.getParameter("id") %>
<%
	MemberDAO dao = new MemberDAO();
	MemberDTO d = dao.getUser(request.getParameter("id"));
%>
<hr>
아이디: <%=d.getId() %> <br>
이름: <%=d.getName() %> <br>
국어: <%=d.getKor() %> <br>
영어: <%=d.getEng()%> <br>
수학: <%=d.getMath() %> <br>
</body>
</html>