<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap">

<style>
         body {
           background-color:#F6F6F5;
           font-family: 'Noto Sans KR', sans-serif;
        }
        
        .title-shipping-info {
           padding : 1%;
           font-size: 2rem;
        }

        /* Individual input fields */
        .delivery-info-field {
            margin-bottom: 15px;
        }

        /* Styling for labels */
        .delivery-info-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* Styling for input fields */
        .delivery-info-input {
            width: 50%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container img {
            max-width:40%;
            height: auto;
            margin-left: auto;
            display: block;
        }
        
</style>
<title>배송 정보</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   <hr>
   <div class = "jumbotron" >
      <div class = "container">
         <h1 class = "display-3 title-shipping-info">배송 정보</h1>
      </div>
   </div>
   <div class="container" >
      <form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
         <input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>" />
         <div class="delivery-info-field">
        <label for="name" class="delivery-info-label">성명</label>
        <input type="text" id="name" name="name" class="delivery-info-input" placeholder="성명을 입력하세요">
    </div>
         <div class="delivery-info-field">
        <label for="delivery-date" class="delivery-info-label">배송일 (yyyy/mm/dd)</label>
        <input type="text" id="delivery-date" name="shippingDate" class="delivery-info-input" placeholder="yyyy/mm/dd 형식으로 입력하세요">
    </div>
         <div class="delivery-info-field">
        <label for="country" class="delivery-info-label">국가명</label>
        <input type="text" id="country" name="country" class="delivery-info-input" placeholder="국가명을 입력하세요">
    </div>
         <div class="delivery-info-field">
        <label for="postal-code" class="delivery-info-label">우편번호</label>
        <input type="text" id="postal-code" name="zipCode" class="delivery-info-input" placeholder="우편번호를 입력하세요">
    </div>
         <div class="delivery-info-field">
        <label for="address" class="delivery-info-label">주소</label>
        <textarea id="address" name="addressName" class="delivery-info-input" placeholder="주소를 입력하세요"></textarea>
    </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>"
               class="btn btn-secondary" role="button">이전</a>
               <input type="submit" class="btn" style="background-color: black; color: white; value="등록" />
               <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a> 
            </div>
         </div>
     
      </form>
   </div>
</body>
</html>