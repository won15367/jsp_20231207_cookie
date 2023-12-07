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
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		if (mid.equals("tiger") & mpw.equals("12345")) {
			Cookie cookie1 = new Cookie("cookieID", mid);
			Cookie cookie2 = new Cookie("cookiePW", mpw);
			
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			
			response.sendRedirect("loginSuccess.jsp");
			
		} else {
			response.sendRedirect("loginFail.jsp");
		}
	%>

</body>
</html>