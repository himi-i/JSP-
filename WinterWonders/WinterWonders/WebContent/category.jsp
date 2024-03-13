<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	ul {
	  	list-style-type: none;
        font-size: 25px; 
        font-family: 'Playfair Display', serif;
	}

	a {
  		color : black !important;
	}
	</style>
<hr>
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link category" aria-current="page" href = "./shop.jsp">ALL</a>
  </li>
  <li class="nav-item">
    <a class="nav-link category" href="./trees.jsp">Trees</a>
  </li>
  <li class="nav-item">
    <a class="nav-link category" href="./wreath.jsp">Wreath</a>
  </li>
  <li class="nav-item">
     <a class="nav-link category" href="./ornaments.jsp">Ornaments</a>
  </li>
   <li class="nav-item">
    <a class="nav-link category" href="./orgels.jsp">Orgels</a>
  </li>
  <li class="nav-item">
    <a class="nav-link category" href="./lights.jsp">Lights</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link category" href="./addProduct.jsp">🔒ADD</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link category" href="./editProduct.jsp?edit=update">🔒EDIT</a>
  </li>
  
   <li class="nav-item">
    <a class="nav-link category" href="./editProduct.jsp?edit=delete">🔒DELETE</a>
  </li>
</ul>