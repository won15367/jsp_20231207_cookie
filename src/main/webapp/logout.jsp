<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		for (int i=0;i<cookies.length;i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	
		

	%>
	<a href="cookieCheck.jsp">쿠키확인</a>
</body>
</html>