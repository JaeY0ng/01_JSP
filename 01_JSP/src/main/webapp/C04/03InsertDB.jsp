<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00ERROR.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>INSERT DB</h1>
	<!--  
		DB : bookDB내의 tbl_user에 회원가입 요청 파라미터 넣기
		jdbc import 경로 : java.sql.*
		tbl_user에 회원가입 요청 파라미터 넣기
		
		정상처리되면 forwarding 경로 04End.jsp
		sqlException발생 시 00ERROR.jsp 이동(new Exception())
	-->
	<%@page import="java.sql.*" %>
	<%
    // HTML 폼에서 전달된 데이터 가져오기
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String role = request.getParameter("role");

    // JDBC 설정
    String url = "jdbc:mysql://localhost:3306/bookdb";  // 데이터베이스 URL
    String user = "root";  // DB 사용자 이름
    String dbpassword = "1234";  // DB 비밀번호
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // JDBC 드라이버 로드
        Class.forName("com.mysql.cj.jdbc.Driver");

        // DB 연결 생성
        conn = DriverManager.getConnection("url","user","dbpassword" );

        // SQL 쿼리 준비 (INSERT 쿼리)
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";

        // PreparedStatement 생성 및 파라미터 설정
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);          // 첫 번째 ? 에 아이디 입력
        pstmt.setString(2, password);    // 두 번째 ? 에 비밀번호 입력
        pstmt.setString(3, role);       // 세 번째 ? 에 등급 입력

        // SQL 실행 (DB에 데이터 삽입)
        int result = pstmt.executeUpdate();

        // 결과 처리
        if(result > 0) {
            out.println("<h2>회원가입 성공!</h2>");
        } else {
            out.println("<h2>회원가입 실패!</h2>");
        }

    } catch (Exception e) {
        e.printStackTrace();
        throw new Exception("오류 발생");
    } 
%>
	
</body>
</html>