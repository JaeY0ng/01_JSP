<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  
		UserDto객체에 전달받은 파라미터(username,password,role)를 저장(UserDto는 C04패키지생성후에 UserDto Class 생성)
		request에  setAttribute로 userDto 저장("userDto",userDto);
		02ValidationCheck.jsp 로 forwarding
-->

<%@page import="C04.*" %>
<%
	String username= request.getParameter("username");
	String password = request.getParameter("password");
	String role = request.getParameter("role");
	
	UserDTO userDto = new UserDTO(username,password,role);
	request.setAttribute("userDto", userDto);
	
	request.getRequestDispatcher("02ValidationCheck.jsp").forward(request,response);

%>