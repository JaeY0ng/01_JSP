<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키확인하기</h1>
	<%
	 Cookie[] cookies =	request.getCookies();
	 if(cookies!=null){
		 for(Cookie cookie : cookies){
			 %>
			 	 <div>
				 	<%=cookie.getName() %> : <%=cookie.getValue() %>
				 	|
				 	<a href="./removeCookie.jsp?cookieName=<%= cookie.getName()%>">삭제하기</a>
				 </div>
			 <%
		 }
		 
	 }
	%>
</body>
</html>