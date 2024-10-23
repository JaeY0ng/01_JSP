<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath}/C06/03/proc/loginProc.jsp" method="post">	
		<div>
			<label>${msg_userid}</label><br>
			<input type="text" name="userid" />
		</div>	
		<div>
			<label>${msg_password}</label><br>
			<input type="text" name="password" />
		</div>	
		<div>
			<input type="submit" value="로그인" />
		</div>	
	</form>
	<div>
		${msg_db}
	</div>
	
</body>
</html>