<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 파라미터 받기
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String idchk = request.getParameter("idchk");

    // 유효성 체크 (생략 - )

    // 인증 처리
    if(!"user1".equals(username)){
        request.setAttribute("message","ID가 일치하지 않습니다");
        request.getRequestDispatcher("./login.jsp").forward(request, response);
        return; // 여기서는 코드를 종료하지 않고 forward가 실행되면 자동으로 종료됨
    }

    if(!"1234".equals(password)){ // 비밀번호 확인 로직 수정
        request.setAttribute("message","PASSWORD가 일치하지 않습니다");
        request.getRequestDispatcher("./login.jsp").forward(request, response);
        return;
    }

    // 인증 후 처리 (Session)
    session.setAttribute("id", username);
    session.setAttribute("role", "ROLE_USER");

    // idchk 여부확인 (Cookie)
    System.out.println("idchk : " + idchk);
    Cookie idChkStatus = null;
    Cookie idCookie = null;
    if(idchk != null){
        idChkStatus = new Cookie("idChkStatus", "true");
        idCookie = new Cookie("id", username);
    } else {
        idChkStatus = new Cookie("idChkStatus", null); 
        idCookie = new Cookie("id", null);
        idChkStatus.setMaxAge(0); // 쿠키 삭제
        idCookie.setMaxAge(0); // 쿠키 삭제
       	idChkStatus.setPath("/"); // 경로 설정
        idCookie.setPath("/"); // 경로 설정
    }
    response.addCookie(idChkStatus);
    response.addCookie(idCookie);
%>

<script>
    alert("로그인 성공!\n메인페이지로 이동합니다.");
    location.href="./main.jsp";
</script>




