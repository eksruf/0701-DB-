<%@page import="quiz.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	
	<% MemberDAO dao = new MemberDAO(); 
	ArrayList<MemberDTO>  list = dao.newst();%>
	<table border="1">
	<tr>
	<th>아이디</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th>
	</tr>
	<% for(MemberDTO dto : list){ %>
	
	<tr>
	<td><%=dto.getId() %></td>		
	<td><a href="quiz_id.jsp?id=<%=dto.getId()%>"> <%=dto.getName() %></a></td>
	<td><%=dto.getKor() %> </td>
	<td><%=dto.getEng() %> </td>
	<td><%=dto.getMath() %> </td>
	</tr>
	<%} %>
	
	</table>
	
</body>
</html>