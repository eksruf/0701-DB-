<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키만들기 와 팝업창 닫기
<% 
	Cookie cook =new Cookie("key","newcookie"); 
	cook.setMaxAge(600);
	response.addCookie(cook);
	
%>


<script type="text/javascript">
window.close();
</script>
</body>
</html>