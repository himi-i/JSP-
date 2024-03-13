<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
         body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
        
        .title-cancel {
        	padding : 1%;
        }
</style>

<title>주문 취소</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron" >
		<div class = "container">
			<h1 class = "display-3 title-cancel">주문 취소</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
	</div>
	<div class="container">
		<p><a href="./shop.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
	</div>
</body>
</html>