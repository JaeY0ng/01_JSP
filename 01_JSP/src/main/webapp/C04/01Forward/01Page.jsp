<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("----------01Page-----------");
		System.out.println("username : " + username);
		System.out.println("password : " + password);
		System.out.println("---------------------------");
		
		//request 속성 추가
		request.setAttribute("01PAGE", "01VALUE");
		
		//Forward 처리
		request.getRequestDispatcher("02Page.jsp").forward(request, response);
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