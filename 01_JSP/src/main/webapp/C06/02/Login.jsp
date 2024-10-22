<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String userIdMsg = (request.getAttribute("userid_msg")!=null)
    						? (String) request.getAttribute("userid_msg")
    						:"";		
    	String passwordMsg = (request.getAttribute("password_msg")!=null)
    						? (String) request.getAttribute("password_msg")
    						:"";		
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="LoginProc.jsp" method="post">
		<div>
			<label><%=userIdMsg %></label><br>
			<input name="userid" />
		</div>
		<div>
			<label><%=passwordMsg %></label><br>
			<input type="password" name="password" />
		</div>
		<br />
		<div>
			<button>로그인</button>
			<button><a href="" text-style="none">회원가입</a></button>
		</div>
	</form>
	
</body>
</html>