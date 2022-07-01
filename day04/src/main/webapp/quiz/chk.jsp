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
String id="1",pw="1";

String uid = request.getParameter("id");
String upw = request.getParameter("pw");

if(id.equals(uid) && pw.equals(upw)){
	session.setAttribute("id", "호이");
	response.sendRedirect("main.jsp");
}else{%>
<script type="text/javascript">
alert('잘못입력');
window.location.href="login.jsp";
<%}%>
</script>

<!--
	out.print("<script>");
	out.print("alert('잘못입력');");
	out.print(" </script>");  -->


	 
<%--	response.sendRedirect("login.jsp");
	
}  --%>

</body>
</html>