<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<title>상품 편집</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap">
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
<script type="text/javascript" src="./resources/js/validation.js">
</script>
<script type="text/javascript">
   function deleteConfirm(id) {
      if (confirm("해당 상품을 삭제합니다!!") == true)
         location.href = "./deleteProduct.jsp?id=" + id;
      else
         return;
   }
</script>
</head>
<%
   String edit = request.getParameter("edit");
%>
</head>
<body>
   <jsp:include page="menu.jsp" />
   <hr>
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">상품 편집
         	<a class = "btn btn-success" style = "background-color : #819aab; border : none;" href="./logout.jsp">LOGOUT</a>
         </h1>
         <br>
      </div>
   </div>
	
   <div class="container">
      <div class="row" align="center">
         <%@ include file="dbconn.jsp"%>
         <%
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            String sql = "select * from product";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
         %>
         <div class="col-md-4">
            <img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%">
            <h3 class="product-name"><%=rs.getString("p_name")%></h3>
            <p class="product-price"><p><%=rs.getString("p_description")%>
            <p class="product-des"><p><%=rs.getString("p_unitPrice")%>원
            <p>
               <%
                  if (edit.equals("update")) {
               %>
               <a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>"   class="btn btn-success" role="button"> 수정 &raquo;</a>
               <%
                  } else if (edit.equals("delete")) {
               %>
               <a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
               <%
                  }
               %>            
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
   <jsp:include page="footer.jsp" />
</body>
</html>