<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String Page02Value = (String)request.getAttribute("02PAGE");
		System.out.println("----------03PAGE-----------");
		System.out.println("username : " + username);
		System.out.println("password : " + password);
		System.out.println("Page02Value : " + Page02Value);
		System.out.println("---------------------------");
		
		//02PAGE 에서 03PAGE 로 전달할 속성 아무거나 추가
		request.setAttribute("02Page", "02VALUE");
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<h1>03PAGE</h1>
	USERNAME : <%=username %><br>
	PASSWORD : <%=password %><br>
	01
	
</body>
</html>