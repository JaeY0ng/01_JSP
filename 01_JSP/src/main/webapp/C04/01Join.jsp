<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		String JoinValue = (String)request.getAttribute("01Join");
		System.out.println("----------JoinPage-----------");
		System.out.println("username : " + username);
		System.out.println("password : " + password);
		System.out.println("JoinValue : " + JoinValue);
		System.out.println("---------------------------");
		
		//02PAGE 에서 03PAGE 로 전달할 속성 아무거나 추가
		request.setAttribute("JoinValue", "01Join");
		//Forward 처리
		request.getRequestDispatcher("02ValidationCheck.jsp").forward(request, response);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JOIN PAGE</h1>
	
	USERNAME : <%=username %><br>
	PASSWORD : <%=password %><br>
	ROLE : <%=role %><br>
	<!-- 
		02ValidationCheck.jsp 로 forwarding
	 -->
</body>
</html>