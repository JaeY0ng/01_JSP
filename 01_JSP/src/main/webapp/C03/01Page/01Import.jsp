<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import="java.util.Scanner,C03.*" %>
    <%
    	Scanner sc = new Scanner(System.in);
    	SimpleDTO dto = new SimpleDTO("홍길동",55,"대구");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=dto.getName() %><br>
	<%=dto.getAge() %><br>
	<%=dto.getAddr() %><br>
</body>
</html>