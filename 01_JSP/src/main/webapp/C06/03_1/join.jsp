<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/C06/03/proc/joinProc.jsp" method="post">	
		<div>
			<label>${msg_userid}</label><br>
			<input type="text" name="userid" />
		</div>	
		<div>
			<label>${msg_password}</label><br>
			<input type="text" name="password" />
		</div>	
		<div>
			<input type="submit" value="회원가입" />
		</div>	
	</form>
	<div>
		${msg_db}
	</div>
</body>
</html>