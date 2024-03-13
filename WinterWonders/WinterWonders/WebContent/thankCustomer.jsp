<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap">
<title>주문 완료</title>
</head>
<style>
        body {
           background-color:#F6F6F5;
           font-family: 'Noto Sans KR', sans-serif;
        }
        .jumbotron {
            background-color: #7a8660;
            color: white;
            padding: 2rem;
            margin-bottom: 2rem;
            border-radius: 0.3rem;
        }

        .container {
            margin-top: 2rem;
            margin-bottom: 2rem;
        }

        .btn-secondary {
            color: #fff;
            background-color: #6c757d; /* Bootstrap secondary button color */
            border-color: #6c757d;
            margin-bottom: 2rem;
        }
        .confirmation-image {
            max-width: 100%; /* Ensure the image doesn't exceed its container */
            margin-top: 1rem; /* Add some top margin for spacing */
            margin-bottom: 2rem;
        }
        
         .btn-list {
        	background-color : #e0d8cd;
        }

</style>
<body>
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName="";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	 <div class = "jumbotron" >
      <div class = "container">
         <h1 class = "display-3">주문 완료</h1>
         <h2 class="aler alert-danger">주문해주셔서 감사합니다.</h2>
      </div>
   </div>

   <div class ="container">
   <img src="resources/images/welcome2.jpg" alt="주문 완료 이미지" class="confirmation-image">
      <p><a href="./shop.jsp"  class="btn btn-list">상품 목록 &raquo;</a>
   </div>
</body>
</html>

<%
	session.invalidate();

	for(int i=0; i<cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>