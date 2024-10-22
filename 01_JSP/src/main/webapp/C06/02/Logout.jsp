<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	out.println("<script> alert('로그아웃 성공!..로그인페이지로 이동합니다');location.href='./Login.jsp'</script>");
	
%>