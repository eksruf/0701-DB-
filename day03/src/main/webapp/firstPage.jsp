<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  //()안의 네임이라는 변수에 페이지라는 내용 저장
	pageContext.setAttribute("name", "page"); //현재 페이지만 변수유지 	
	request.setAttribute("name", "request"); 
	session.setAttribute("name", "session"); //현재 웹 브라우저가 유지되는 동안 살아있음(주로사용)
	application.setAttribute("name", "application"); //서버가 꺼지기 전까지 살아있음
%>

page= <%= pageContext.getAttribute("name")%><br>  
request= <%= request.getAttribute("name")%><br>
session= <%= session.getAttribute("name") %><br>
application= <%= application.getAttribute("name")%><br>


<%
	request.getRequestDispatcher("secondPage.jsp").forward(request,response);
	//위 의 내용을 사용해서 request 의 변수를 다음 페이지까지 유지
	//""안의 작성한 페이지로 이동하면서 변수를 가져감(유지)
%>

<hr>

<a href="secondPage.jsp"> secondPage.jsp</a> 


</body>
</html>




