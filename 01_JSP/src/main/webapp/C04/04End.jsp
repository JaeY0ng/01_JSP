<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.*" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String role = request.getParameter("role");
    
    response.sendRedirect("02Page.jsp?username="+URLEncoder.encode(username,"UTF-8")+"&password="+URLEncoder.encode(password,"UTF-8")+"&01PAGE=01VALUE");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원가입이 완료 되었습니다</h1>
	<a href="00Main.jsp">메인페이지로</a>
	<!--  
		회원가입이 완료되었습니다 라는 메세지를 화면에 표시
		
		a태그 만들어서 클릭하면 00Main.jsp 페이지로 리다이렉팅 하기
	-->
	USERNAME : <%=username %><br>
	PASSWORD : <%=password %><br>
	ROLE : <%=role %><br>
</body>
</html>