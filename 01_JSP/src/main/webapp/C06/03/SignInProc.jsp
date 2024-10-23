<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String username = request.getParameter("username");
    	String pwd = request.getParameter("pwd");
    	String pwdChk = request.getParameter("pwdChk");
    	
    	
    	if(username.isEmpty()){
    		request.setAttribute("username_Msg", "ID 입력은 필수 입니다.");
    		request.getRequestDispatcher("./SignIn.jsp").forward(request,response);
    		return;
    	}
    	if(pwd.isEmpty()){
    		request.setAttribute("pwd_Msg", "Password 입력은 필수 입니다.");
    		request.getRequestDispatcher("./SignIn.jsp").forward(request,response);
    		return;
    	}
    	if(!pwdChk.equals(pwd)){
    		request.setAttribute("pwdChk_Msg", "Password가 일치 하지 않습니다.");
    		request.getRequestDispatcher("./SignIn.jsp").forward(request,response);
    		return;
    	}
    	
    	
    	session.setAttribute("id",username);
    	session.setAttribute("isSignIn",true);
    	session.setAttribute("role","ROLE_USER");
    	
    	out.println("<script>alert('회원가입 성공! MainPage에서 로그인 해주세요 !');location.href='Login.jsp'</script>");
    %>
