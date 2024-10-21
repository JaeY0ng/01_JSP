<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
/* 	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String bgColor = request.getParameter("bg");
	System.out.printf("%s , %s , %s \n",username,password,bgColor); */
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%-- 
<body bgColor=<%= bgColor.equals("") ? "gray" : bgColor  %> >
	<h1>요청 결과 확인</h1>
	USERNAME=<%=username %><br>
	PASSWORD=<%=password %><br>	
</body>
 --%>
 
<body bgColor="${param.bg}">
	EL_USERNAME = ${param.username}<br>
	EL_USERNAME = ${param.password}<br>
</body>

</html>