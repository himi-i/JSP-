<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        body {
        	background-color:#F6F6F5;
        	font-family: 'Noto Sans KR', sans-serif;
        }
        
        .category-name{
        	padding : 1%;
        }
        
        .product-name{
        	padding : 2%;
        }
        
        .product-des{
        	font-weight : 300;
        }
        
        .product-price{
        	font-weight : 400;
        }
        
        .product-img{
        	margin-bottom : 1%;
        }
</style>
<meta charset="UTF-8">
<title>Winter Wonders</title>
</head>
<body>
	<%@include file = "menu.jsp" %>
	<%@include file = "category.jsp" %>
		<div class = "container">
			<h1 class = "display-3 category-name"> Ornaments </h1>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
		<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from product where p_category='Ornaments'";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
				<div class="col-md-4">
					<a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn product-btn" role="button">
						<img class="product-img" src = "./resources/images/<%=rs.getString("p_fileName")%>" style = "width:100%" >
						<h3 class="product-name"><%=rs.getString("p_name")%></h3>
					</a>
					<p class="product-des"><%=rs.getString("p_description")%>
					<p class="product-price"><%=rs.getString("p_UnitPrice")%>원
					
				</div>
			<%
				}
				
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
		</div>
	</div>
	
	<%@include file = "footer.jsp" %>
</body>
</html>