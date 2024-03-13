<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
        
        .product-info{
        	padding : 1%;
        }
        
        .product-name{
        	font-size : 30px;
        	margin-bottom : 3%;
        }
        
        .btn.btn-square {
			width : 100%;
			border-radius: 0;
    		background-color: transparent;
    		border-color: black ;
    		color: black;
    		font-family: 'Noto Sans KR', sans-serif;
    		margin-bottom : 2%;
}
        .btn-list {
        	background-color : #e0d8cd;
        }
</style>
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if (confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@include file = "category.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3 product-info">상품 정보</h1>
		</div>
	</div>
	<%@include file="../dbconn.jsp" %> 
	<%
		String productId = request.getParameter("id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from product where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if(rs.next()){
	%>
	<div class = "container">
		<div class = "row">
			<div class = "col-md-5">
				<img src = "./resources/images/<%=rs.getString("p_fileName")%>" style = "width:100%" >
			</div>
			<div class = "col-md-6">
				<h3 class = "product-name"><%= rs.getString("p_name") %></h3>
				<p><%= rs.getString("p_description") %>
				<hr>
				
				<p><b>상품 코드 : </b><span class="badge text-bg-dark"><%= rs.getString("p_id") %></span>
				<p><b>분류</b> : <%=rs.getString("p_category")%>
				<p><b>재고 수</b> : <%= rs.getString("p_unitsInStock")  %>
				<h4><%=rs.getString("p_unitPrice")%>원</h4>
				
				<p>
				<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<button href="#" onclick="addToCart()" class="btn btn-lg btn-square" type="submit"> 상품 주문 </button>
					<button onclick="location.href='./cart.jsp'" class="btn btn-lg btn-square" type="button">장바구니로 이동</button>
					
    				<a href="./shop.jsp"  class="btn btn-list">상품 목록 &raquo;</a>
					
				</form>
			</div>
			<% 
				}
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>