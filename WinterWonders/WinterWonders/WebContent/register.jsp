<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
    <title>REGISTER</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
        
        .btn.btn-square {
			width : 100%;
			border-radius: 0;
    		background-color: transparent;
    		border-color: black ;
    		color: black;
    		font-family: 'Playfair Display', serif;
}

		.title-register {
          padding : 1%;
        	font-size: 50px; 
        	text-align : center;
            font-family: 'Playfair Display', serif;
        }
                
        .register-field{
        	 margin-bottom: 15px;
        }
        
        .register-label{
        	display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .register-input{
         	width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
                
</style>

<body>
    <jsp:include page="menu.jsp" />
    
    <hr>
    <div class="jumbotron">
		<div class="container">
			<h1 class="display-3 product-info title-register">REGISTER</h1>
		</div>
	</div>
    <div class="container" align="center">
        <div class="col-md-4 col-md-offset-4">
            
            <form class="form-register" method="post" action="register_process.jsp">
                <!-- ID 입력란 -->
                <div class="form-group register-field">
                    <label for="inputUserName register-label" class="sr-only" style="text-align:left; width:100%;">아이디</label>
                    <input type="text" class="form-control register-input" placeholder="ID" name="id" required autofocus>
                </div>

                <!-- 비밀번호 입력란 -->
                <div class="form-group form-group register-field">
                    <label for="inputPassword register-label" class="sr-only" style="text-align:left; width:100%;">비밀번호</label>
                    <input type="password" class="form-control register-input" placeholder="Password" name="passwd" required autofocus>
                </div>
                
                
                
                <!-- 이름 입력란 -->
                <div class="form-group form-group register-field">
                    <label for="inputname register-label" class="sr-only" style="text-align:left; width:100%;">이름</label>
                    <input type="text" class="form-control register-input" placeholder="Name" name="name" required autofocus>
                </div>
                
                <!-- 전화번호 입력란 -->
                <div class="form-group form-group register-field">
                    <label for="inputPhone register-label" class="sr-only" style="text-align:left; width:100%;">전화 번호</label>
                    <input type="tel" class="form-control register-input" placeholder="Phone Number" name="phone" required autofocus>
                </div>
                
                <!-- 이메일 입력란 -->
                <div class="form-group form-group register-field">
                    <label for="inputEmail" class="sr-only" style="text-align:left; width:100%;">이메일</label>
                    <input type="email" class="form-control register-input" placeholder="Email" name="email" required autofocus>
                </div>

				<br>
                <!-- 회원가입 버튼 -->
                <button class="btn btn-lg btn-success btn-square" type="submit" name="action" value="register">REGISTER</button>
            </form>

        </div>
    </div>
    <br>
    <jsp:include page="footer.jsp" />
</body>
</html>
