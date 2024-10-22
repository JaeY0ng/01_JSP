<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00ERROR.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
	 
	        // 사용자 입력 데이터 받기
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String role = request.getParameter("role");
			String ValidChk = (String)request.getAttribute("02ValidationCheck");
			
	        System.out.println("username : " + username);
	        System.out.println("password : " + password);
	        System.out.println("role : " + role);
	        System.out.println("ValidChk : " + ValidChk);
	        
	        // 유효성 검사
	        if(username == null || username.isEmpty() || password == null || password.isEmpty() || role == null || role.isEmpty()) {
	            throw new Exception("빈칸이 있으면 안됩니다."); // 예외 발생
	        } else{

	        // 정상 처리 시
	        request.setAttribute("username", username);
	        request.setAttribute("password", password);
	        request.setAttribute("role", role);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("03InsertDB.jsp");
	        dispatcher.forward(request, response);
	        }
			
    %>
    
	<h1>VALIDATION CHECK PAGE</h1>
	
	USERNAME : <%=username %><br>
	PASSWORD : <%=password %><br>
	ROLE : <%=role %><br>
	<!--  
		가입 요청된 데이터의 유효성 체크
		username, password, role 이 올바르게 param 으로 전달되었는지 확인
		유효성 체크는 null체크("", isEmpty())만 기본으로 할 것
		유효성 체크 오류 발생시  new Exception() 으로 00Error.jsp 로 이동 처리할것
		
		정상처리라면 03InsertDB.jsp로 포워딩 할 것
	-->
	
</body>
</html>