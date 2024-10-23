<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.invalidate();

%>
<script>
	alert("로그아웃 성공!\n로그인페이지로 이동합니다.")
	location.href='${pageContext.request.contextPath}/C07/03/login.jsp'
</script>