<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00ERROR.jsp" %>

	<!--  
		가입 요청된 데이터의 유효성 체크
		username,password,role 이 올바르게 param으로 전달되었는지 확인
		유효성 체크는 null 체크("", isEmpty())만 기본으로 할 것
			유효성 체크 오류 발생시  new Exception() 으로 00Error.jsp 로 이동 처리할것
			
			정상처리라면 03InsertDB.jsp로 포워딩 할것
			
			
		ROLE = ROLE_USER, ROLE_MEMBER,ROLE_ADMIN 으로 문자열	
	-->
	
	<%@page import="C04.*" %>
	<%
		UserDTO userDto = (UserDTO)request.getAttribute("userDto");
		if(userDto==null)
			throw new Exception("userDto가 NULL입니다");
		if(userDto.getUsername().trim().isEmpty())
			throw new Exception("Username를 입력하세요");
		if(userDto.getPassword().trim().isEmpty())
			throw new Exception("Password를 입력하세요");
		if(userDto.getRole().trim().isEmpty())
			throw new Exception("Role을 입력하세요");
		
		request.getRequestDispatcher("03InsertDB.jsp").forward(request,response);
		
	%>