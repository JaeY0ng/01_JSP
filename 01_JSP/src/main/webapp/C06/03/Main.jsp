<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MAIN PAGE</h1>
	ID :<%=session.getAttribute("id")%><br> 
	ROLE : <%=session.getAttribute("role")%><br> 
	TIMEOUT :<%=session.getMaxInactiveInterval()%>


	<hr />

	<%
	Boolean isLogined = (Boolean) session.getAttribute("isLogined");
	if (!isLogined) {
	%>
	<a href="Login.jsp">로그인</a>
	<%
	} else {
	%>
	<a href="Logout.jsp">로그아웃</a>
	<%
	}
	%>




</body>
</html>