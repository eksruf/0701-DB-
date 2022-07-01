<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키와 섹션은 비슷/ 쿠키는 사용자가 관리, 섹션(중요한 내용)은 서버가 관리 -->
cookie폴더 -> index.jsp <br>
	안녕하세요<br>
	<%
	boolean bool =true;
	
	Cookie[] cookieArr = request.getCookies();
	if( cookieArr != null){
		for(Cookie c : cookieArr){
			out.print("name: "+c.getName()+"<br>");
			out.print("value: "+c.getValue()+"<hr>");
			if(c.getName().equals("testCookie")){
				bool=false;
			}
		}
		/*
		for(int i=0; i<cookieArr.length;i++){
			cookieArr[i].getName();
		}*/
	}
	
		Cookie cook = new Cookie("testCookie", "myCookie");
	cook.setMaxAge(5); //유지시간설정
	response.addCookie(cook); //cook값을 전달
	%>

<%if(bool){ %>
<script>
	open("popup.jsp" , "","width=300, height=200, top=500, left=500");
	
</script>
<% }%>

</body>
</html>




