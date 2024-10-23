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
		<form action="LoginProcs.jsp" method="post">
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
			<button><a href="SignIn.jsp" style="text-decoration:none;color:black;">회원가입</a></button>
		</div>
	</form>
	<br />
	
		

	
</body>
</html>