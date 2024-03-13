<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
        body {
           background-color:#F6F6F5;
           font-family: 'Noto Sans KR', sans-serif;
        }
        
        .titlename {
           font-size: 2.5rem;
              font-weight: 500;
        }
        
        .inputbox {
           width : 50%;
         padding: 10px;
         box-sizing: border-box;
          border: 1px solid #ddd;
          border-radius: 5px;
          outline: none; /* 추가: 포커스 효과 제거 */
       
        }
        .inputbox:focus {
         border-color: black;
      }
        
         .mb-3{ 
           margin-bottom: 15px;
           display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .col-sm-2 {
              display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .text-end a {
           font-size : 20px;
           text-decoration : none;
        }
        .logout {
        
        widt : 10%;
        
        }
        
        .confirm{
           width : 10%;
         font-size : 20px;
          color:whtie;
        }
        

</style>
<script type="text/javascript" src="./resources/js/validation.js">
</script>
</head>
<body>
   <fmt:setLocale value='<%=request.getParameter("language") %>' />
   <fmt:bundle basename="bundle.message">
   <%@ include file="menu.jsp" %>
   <hr>
   <br>

      <div class="container">
         <h1 class="display-3 titlename"><fmt:message key="title" /> </h1>
      </div>

   <div class="container">
      <div class="text-end">
         <a href="?language=ko" >Korean</a> |  <a href="?language=en" >English </a> &nbsp;
      	 <a class = "btn btn-success" style = "background-color : #819aab; border : none;" href="./logout.jsp">LOGOUT</a>  
      </div>
      
      <form name="newProduct" action="./processAddProduct.jsp" 
      class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="productId" /></label>
               <input type="text" id="productId" name="productId" class="inputbox" placeholder="상품 코드를 입력하세요">
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="pname" /></label>
               <input type="text" id="name" name="name" class="inputbox" placeholder ="상품명을 입력하세요">
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="unitPrice" /></label>
               <input type="text" id="unitPrice" name="unitPrice" class="inputbox" placeholder ="상품가격을 입력하세요">
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="description" /></label>
               <textarea name="description" cols="50" rows="2" class="inputbox" placeholder ="제품에 대한 상세설명을 입력하세요"></textarea>
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="category"/></label>
               <select name="category" class="inputbox" >
                    <option value="Trees">Trees</option>
                    <option value="Wreath">Wreath</option>
                    <option value="Ornaments">Ornaments</option>
                    <option value="Orgels">Orgels</option>
                    <option value="Lights">Lights</option>
                </select>
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
               <input type="text" id="unitsInStock" name="unitsInStock" class="inputbox" placeholder ="재고 수를 입력하세요">
         </div>
         <div class="mb-3 row">
            <label class="col-sm-2"><fmt:message key="productImage" /></label>
               <input type="file" name="productImage" class="form-control inputbox">
         </div>
         <br>
         <div class = "mb-3 row">
            <div class = "col-sm-offset-2 col-sm-10">
               <input type = "button" class="btn btn-success confirm" value="<fmt:message key="button" />" onclick = "CheckAddProduct()">
            </div>
         </div>
      </form>
   </div>
   </fmt:bundle>
   <%@include file = "footer.jsp" %>
</body>
</html>