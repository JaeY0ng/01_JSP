<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.net.*" %> <!-- 한글 인코딩 할 때 import... -->
    <%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("----------01Page-----------");
		System.out.println("username : " + username);
		System.out.println("password : " + password);
		System.out.println("---------------------------");
		
		/* //request 속성 추가
		request.setAttribute("01PAGE", "01VALUE"); */
		
		//Redirect 처리
		response.sendRedirect("02Page.jsp?username="+URLEncoder.encode(username,"UTF-8")+"&password="+URLEncoder.encode(password,"UTF-8")+"&01PAGE=01VALUE");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	

	<h1>01Page</h1>
	USERNAME : <%=username %><br>
	PASSWORD : <%=password %><br>
	
	
</body>
</html>