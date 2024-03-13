<%@ page contentType="text/html; charset=utf-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap">
<style>
        body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
</style>
<html>
<head>
<title>상품 아이디 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<hr>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p> <%=request.getRequestURL()%>?<%=request.getQueryString() %>
		<p> <a href="shop.jsp" class="btn btn-secondary">상품 목록
		&raquo;</a>
	</div>
</body>
</html>