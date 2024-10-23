<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String usernameMsg = (request.getAttribute("username_Msg")!=null)
    						 ? (String) request.getAttribute("username_Msg")
    						 :"";		 
    	String pwdMsg = (request.getAttribute("pwd_Msg")!=null)
    						 ? (String) request.getAttribute("pwd_Msg")
    						 :"";		 
    	String pwdChkMsg = (request.getAttribute("pwdChk_Msg")!=null)
	    					 ?(String) request.getAttribute("pwdChk_Msg")
	    					 :"";
		    	 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="SignInProc.jsp" method="post">
		<div>
			<div>회원 ID</div>
			<label><%=usernameMsg %></label><br>
			<input name="username" />
		</div>
		<div>
			<div>Password</div>
			<label><%=pwdMsg %></label><br>
			<input type="password" name="pwd" />
		</div>
		<div>
			<div>Password 체크</div>
			<label><%=pwdChkMsg %></label><br>
			<input type="password" name="pwdChk" />
		</div>
		<br />
		<div>
			<div>약관동의<input type="checkbox" /></div>
			
		</div>
		<br />
		<div>
			<button style="font-size:larger;">회원가입</button>
		</div>
</body>
</html>