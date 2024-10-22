<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import ="java.io.*" %>
	<%
		/* Redirect */
		//response.sendRedirect("02Request.jsp");
		
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
	%>
</body>
</html>