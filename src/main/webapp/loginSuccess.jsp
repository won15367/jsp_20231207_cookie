<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	로그인 성공<br>
	<%
		// 클라이언트 컴퓨터에 있는 쿠키들을 서버로 가져오기
		Cookie[] cookies = request.getCookies(); // 쿠키들이 들어있는 배열
		String loginID = "";
		
		if (cookies != null) {		
		
		for (int i=0;i<cookies.length;i++) {
			out.println(cookies[i].getName()+": ");
			out.println(cookies[i].getValue()+"<br>");
		}
		
		for (int i=0;i<cookies.length;i++) {
			if (cookies[i].getName().equals("cookieID")) {
				loginID = cookies[i].getValue();
			}				
		}		
		}
	%>
	
	<h1><%= loginID %>님 로그인을 환영합니다!</h1>
	<a href="logout.jsp">로그아웃</a>
	
</body>
</html>