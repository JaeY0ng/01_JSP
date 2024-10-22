<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00ERROR.jsp" %>
    
<%@page import="java.sql.*,C04.*" %>
<%

	UserDTO userDto = (UserDTO)request.getAttribute("userDto");
	String url="jdbc:mysql://localhost/bookDb?serverTimezone=UTC";
	String id="root";
	String pw="1234";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url,id,pw);
	String sql = "insert into tbl_user values(?,?,?,0)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,userDto.getUsername());
	pstmt.setString(2,userDto.getPassword());
	pstmt.setString(3,userDto.getRole());
	int result = pstmt.executeUpdate();
	request.setAttribute("isAdded", result>0);
	
	pstmt.close();
	conn.close();
	
	request.getRequestDispatcher("04End.jsp").forward(request,response);
%>

	<!--  
		DB : bookDB내의  tbl_user에 회원가입 요청 파라미터 넣기
		jdbc import  경로 : java.sql.*
		
		정상처리되면 forwarding 경로 04End.jsp
		sqlException발생시 00ERROR.jsp 이동(new Exception())
		
	-->
