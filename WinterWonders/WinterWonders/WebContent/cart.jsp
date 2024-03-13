<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap">
<style>
        body {
           background-color:#F6F6F5;
           font-family: 'Noto Sans KR', sans-serif;
        }
        
        .title-cart {
           padding : 1%;
           font-size: 2rem;
        }
</style>
<%
   String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   <hr>
   <div class = "jumbotron" >
      <div class = "container">
         <h1 class = "display-3 title-cart"></h1>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <table width="100%">
            <tr>
   <td style="text-align: right;">
        <a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn" style="background-color: #e0d8cd; color: black; margin-bottom: 10px; border: 0px solid grey; padding: 10px;">전체삭제</a>
        <a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn" style="font-weight: 700; background-color: #e0d8cd; color: black; margin-bottom: 10px; border: 0px solid grey; padding: 10px;">바로구매</a>
    </div>
</td>
   
</tr>
            
         </table>
      </div>
      <div style="padding-top: 50px">
         <table class="table table-hover">
            <tr>
               <th>상품</th>
               <th>가격</th>
               <th>수량</th>
               <th>소계</th>
               <th>비고</th>
            </tr>
            
            <%
               int sum = 0;
               ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
               if(cartList == null)
                  cartList = new ArrayList<Product>();
               
               for(int i=0; i<cartList.size(); i++) { // 상품리스트 하나씩 출력
                  Product product = cartList.get(i);
                  int total = product.getUnitPrice() * product.getQuantity();
                  sum = sum + total;
            %>
            <tr>
               <td><%=product.getProductId() %> - <%=product.getPname() %></td>
               <td><%=product.getUnitPrice() %></td>
               <td><%=product.getQuantity() %></td>
               <td><%=total %></td>
               <td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="btn" style="background-color: #7f7e7c; color: white;" >삭제</a></td>
            </tr>
            <%
               }
            %>   
            <tr>
               <th></th>
               <th></th>
               <th>총액</th>
               <th><%=sum %></th>
               <th></th>
            </tr>
         </table>
         <a href="./shop.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
      </div>
   </div>
   <jsp:include page="footer.jsp"/>
</body>
</html>