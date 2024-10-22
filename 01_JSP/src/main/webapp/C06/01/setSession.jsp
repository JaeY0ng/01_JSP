<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setAttribute("ID1","USER1");
    request.setAttribute("PW1","1234");
    
    session.setAttribute("ID2","USER2");
    session.setAttribute("PW2","5678");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="./getSession.jsp">속성확인</a>
</body>
</html>