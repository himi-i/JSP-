<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<style>
	ul {
	  	list-style-type: none;
        font-size: 45px; 
        font-family: 'Playfair Display', serif;
        justify-content : center;  align-items : center;
	}
	
	.logo {
		font-style: italic;
        font-weight: 800;
        font-size: 50px;
        posotion : absolute;
	}
	
	.shop {
		font-size: 25px; 
		font-weight: 700;
	}
		
	.user_name{
		font-family: 'Noto Sans KR', sans-serif;
		font-size : 15px;
		font-weight : 700;
	}
	
	.login {
		font-size: 25px; 
		font-weight : 700;
		padding-right : 1%;
	}
	
</style>
	<ul class="d-flex justify-content-between">
  		<li class="nav-item shop">
    		<a class = "navbar-brand w-25 p-3" href = "./shop.jsp">SHOP</a>
  		</li>
  		<li class="nav-item logo">
    		<a class = "navbar-brand w-25 p-3" href="./welcome.jsp" id = "logo">Winter Wonders</a>
  		</li>
  		<li class="nav-item login">
  		 <a class = "navbar-brand w-25 p-3" href="./addProduct.jsp">LOGIN</a>
  		</li>
	</ul>