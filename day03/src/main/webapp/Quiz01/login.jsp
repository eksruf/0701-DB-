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
if(session.getAttribute("id") ==null){
%>

<form action="check.jsp" method="post">
<h1 align="center">login</h1>

<input type="text" name="id"> <br>
<input type="text" name="pw"> 
<input type="submit" value="로그인">

<% }else{%>
<%=session.getAttribute("id") %>님은 로그인 중입니다.
<%} %>

<% boolean bool = true;
	Cookie[] cookArr = request.getCookies(); 
	if(cookArr != null){
	for(Cookie c : cookArr){
		if(c.getName().equals("key")){
			bool =false;
			}
		}
	}
%>

<%if(bool){ %>
<script type="text/javascript">
	open("popup.jsp","","width=300, height=300, top=100 right=100")
</script>
<%} %>
</form>

</body>
</html>