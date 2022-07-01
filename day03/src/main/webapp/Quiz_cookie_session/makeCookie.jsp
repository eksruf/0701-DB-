<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키만들기 및 창닫기
내용은 보여지지 않음
<% 

Cookie cook = new Cookie("test","new");
cook.setMaxAge(5); //5초동안 쿠키 유지 = 5초동안 팝업을 안볼 수 있음
response.addCookie(cook);
%>


<script type="text/javascript">
 window.close(); //체크박스 말고 x를 누르면 쿠키생성이 안됨
 //location.href="close.jsp" 닫기파일 만들어서 파일로 바뀌면서 창닫기
</script>

</body>
</html>