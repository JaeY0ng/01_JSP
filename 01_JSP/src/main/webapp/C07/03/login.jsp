<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%
	Cookie [] cookies = request.getCookies();
	String id = null;
	String idChkStatus = null;


	if(cookies!=null){
		for(Cookie c : cookies){
			
			if(c.getName().equals("idChkStatus")){
				idChkStatus = c.getValue();
				
			}
			if(c.getName().equals("id")){
				id = c.getValue();
				
			}
		}
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>

<!-- BS5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="wrapper">
		<header></header>
		<main style="
		width:100%;
		height:100vh;
		display:flex;
		justify-content:center;
		align-items:center;
		">
			<form action="./loginProc.jsp"
			method="post" 
			style="
			 width:300px;
			 padding:20px;
			 border:1px solid;
			 border-radius:10px;
			">
				<div>
					<h2>LOGIN</h2>
				</div>
				<div class="m-2">
					<label for=""></label> 
					<input type="text" class="form-control" name="username" placeholder="아이디" value=<%=id%> />
				</div>
				<div class="m-2">
					<label for=""></label> 
					<input type="password" class="form-control" name="password"placeholder="비밀번호"/>
				</div>
				<div class="m-2">
					<input type="checkbox" class="form-check-input" id="flexCheckIndeterminate" name="idchk" <%=(idChkStatus!=null)?"checked":"" %>/>
					<label for="" class="form-check-label">ID 저장</label>
				</div>
				<div class="m-2">
					<button class="btn btn-primary w-100">로그인</button>
				</div>
				<div class="m-2">
					<button class="btn btn-primary w-100">회원가입</button>
				</div>
				<div class="m-2" style="
					text-align:center;
					font-size:.8rem;
					color:orange;
				">
				${message} 
				</div>
				
			</form>
		</main>
		<footer></footer>
	</div>

</body>
</html>