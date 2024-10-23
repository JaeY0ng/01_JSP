<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//파라미터 받기
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	//유효성 체크
	if(!isValid(userid,password,request)){
		//유효성 체크 오류 발생한 경우
		request.getRequestDispatcher("../join.jsp").forward(request,response);
		return ;
	}
	//DB내의 USER 검색(tbl_user안에서 동일한 userid 검색해서 가져오기)
	UserDto dbUser =  select(userid);
	if(dbUser==null){
		//조회된 User가 없음 -> Insert 처리
		UserDto dto = new UserDto();
		dto.setUserid(userid);
		dto.setPassword(password);
		int result = insert(dto);
		if(result>0)
			out.print("<script>alert('회원가입 성공!');location.href='/01_JSP/C06/03/login.jsp';</script>");
		else
			out.print("<script>alert('회원가입 실패!');location.href='/01_JSP/C06/03/join.jsp';</script>");
		
	}else{
		//조회된 User가 있음 -> 
		request.setAttribute("msg_db", "가입된 회원정보가 있습니다");
		request.getRequestDispatcher("../join.jsp").forward(request,response);
		return ;
	}
	
%>

<%@page import="java.sql.*,C06.*" %>
<%!
	private String url = "jdbc:mysql://localhost/bookDB?serverTimezone=UTC";
	private String id = "root";
	private String pw = "1234";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private boolean isValid(String id, String pw,HttpServletRequest request){
		if(id.trim().isEmpty()){
			request.setAttribute("msg_userid","ID를 입력하세요");
			return false;
		}
		if(pw.trim().isEmpty()){
			request.setAttribute("msg_password","PW를 입력하세요");
			return false;			
		}
		return true;
	}
	
	private UserDto select(String userid){
		UserDto userDto = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,id,pw);
			pstmt = conn.prepareStatement("select * from tbl_user where username=?");
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
			
			if(rs!=null && rs.next()){
				String username = rs.getString("username");
				String password = rs.getString("password");
				String role = rs.getString("role");
				
				userDto = new UserDto(username,password,role);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{	rs.close(); 	}catch(Exception e1){}
			try{	pstmt.close(); 	}catch(Exception e2){}
			try{	conn.close();	}catch(Exception e3){}
		}
		
		return userDto;
	}
	private int insert(UserDto userDto){
		int result=0;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,id,pw);
			pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?)");
			pstmt.setString(1,userDto.getUserid());
			pstmt.setString(2,userDto.getPassword());
			pstmt.setString(3,"ROLE_USER");
			pstmt.setInt(4,0);
			result = pstmt.executeUpdate();
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{	pstmt.close(); 	}catch(Exception e2){}
			try{	conn.close();	}catch(Exception e3){}
		}
		
		return result;
	}
%>