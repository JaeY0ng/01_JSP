<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 
<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
%>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
USERID 		: <%=userid %><br>
PASSWORD 	: <%=password %><br> 
--%>

	<%
	pageContext.setAttribute("P_ATTR", "P_ATTR_VALUE");
	request.setAttribute("R_ATTR", "R_ATTR_VALUE");
	session.setAttribute("S_ATTR", "S_ATTR_VALUE");
	application.setAttribute("A_ATTR", "A_ATTR_VALUE");

	//pageContext.setAttribute("DUP", "PAGECONTEXT_VALUE");
	request.setAttribute("DUP", "REQUEST_VALUE");
	session.setAttribute("DUP", "SESSION_VALUE");
	application.setAttribute("DUP", "APPLICATION_VALUE");
	%>
	<!-- EL PARAM -->
	USERID : ${param.userid }
	<br> PASSWORD : ${param.password}
	<br>

	<!-- EL ATTR -->
	PAGECONTEXT_ATTR : ${pageContextScope.P_ATTR}
	<br> PAGECONTEXT_ATTR : ${P_ATTR}
	<br> REQUEST_ATTR : ${requestScope.R_ATTR}
	<br> REQUEST_ATTR : ${R_ATTR}
	<br> SESSION_ATTR : ${sessionScope.S_ATTR}
	<br> SESSION_ATTR : ${S_ATTR}
	<br> APPLICATION_ATTR : ${applicationScope.A_ATTR}
	<br> APPLICATION_ATTR : ${A_ATTR}
	<br>

	<!-- ATTR 중첩 -->
	DUP_VALUE : ${DUP}
	<br>

	<!-- OBJECT접근 -->
	<%@page import="C08.*"%>
	<%
	SimpleDTO dto = new SimpleDTO("홍길동", 11);
	request.setAttribute("dto", dto);
	%>
	<%=dto.getName()%>
	<%=dto.getAge()%>
	${dto.name}<br> 
	${dto.age}<br>


	<!-- 연산처리 -->
	<%=1 + "1"%><br> 
	${1+"1" }<br>
	
	<!-- NULL CHECK -->
	<hr />
	NULL : ${null }<br>
	empty null : ${empty null }<br>
	<%
		request.setAttribute("TEST", "A");
	%>
	empty null : ${empty TEST }<br>
	empty null : ${!empty TEST }<br>
	
</body>
</html>


