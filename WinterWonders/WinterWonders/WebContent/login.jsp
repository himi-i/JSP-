<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Login</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
        
        .login-title {
        	padding : 1%;
        	font-size: 50px; 
        	text-align : center;
            font-family: 'Playfair Display', serif;

        }
 		.form-control {           
 			border: none; /* 테두리 없애기 */
   	 		border-bottom: 1px solid #000; /* 밑줄 추가, 원하는 색상으로 변경 가능 */
   	 		background-color:#F6F6F5;
		}
		/* 부트스트랩의 폼 요소에 대한 포커스 테두리 스타일 제거 */
		.form-control:focus {
    		box-shadow: none;
    		border-color: #ced4da;
		}
		.btn.btn-square {
			width : 100%;
			border-radius: 0;
    		background-color: transparent;
    		border-color: black ;
    		color: black;
    		font-family: 'Playfair Display', serif;
}
        
</style>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<br><br>
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3 login-title">LOGIN</h3>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<!--  <h3 class="form-signin-heading"> LOGIN</h3> -->
			  <%
                String error = request.getParameter("error");
                if (error != null) {
                    out.println("<div class='alert alert-danger'>");
                    out.println("아이디와 비밀번호를 확인해 주세요");
                    out.println("</div>");
                }
            %>
			<form class="form-signin" action="j_security_check" method="post" >
				<div class="form-group">
					<input type="text" class="form-control" placeholder="id" name='j_username' required autofocus>
				</div>
				<br>
				<div class="form-group">
					 <input type="password" class="form-control" placeholder="passwd" name='j_password' required autofocus>
				</div>
				<br>
				 <button class="btn btn-lg btn-success btn-square" type="submit" name="action" value="signIn"> SIGN IN</button>
			</form>
			
			<!-- REGISTER 버튼 클릭 시 register.jsp로 이동
            <form action="register.jsp" method="post">
            	<button class="btn btn-lg btn-success btn-square" type="submit" name="action" value="register">REGISTER</button>
            </form>
             -->
		</div>
	</div>
</body>
</html>