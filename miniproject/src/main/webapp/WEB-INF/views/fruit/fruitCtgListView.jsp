<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>전체 화면</title>
      <link rel="stylesheet" type="text/css" href="<c:url value='/css/NewFile.css' />">
      		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
      		<script src="<c:url value='/js/button.js' />"></script>
      
        <c:import url="/WEB-INF/views/layout/head.jsp" />	   
   </head>
   <body>
  <div id="wrap">
   <!--  top -->         
      <c:import url="/WEB-INF/views/layout/top.jsp" />
    <div class="head2">전체상품</div>
    <div class="head3"><select id="selectoption">
          <option>상품정렬</option>
          <option>추천순</option>
          <option>상품명순</option>
          <option>신상품순</option>
          </select> </div>
         <c:forEach var="fru" items="${fruList }">
          <div class="products">
          <div class="product-list">
         <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}' />" class="product">
         <div class="imgbox"> <img src="<c:url value='/images/${fru.fruImg }'/>"></div></a>
           <button type="button" class="product-button" onClick=new_window()><i class="fa fa-search"></i></button>
           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
		 <div class="product-brand">${fru.fruCompany }</div> 
		  <div class=product-info>${fru.fruInfo }</div> 
		  <span class=product-origin-price>
		 <c:if test="${not empty fru.fruOriginPrice && 0 != fru.fruOriginPrice}" >${fru.fruOriginPrice }</c:if></span>
	      <span class="product-price">${fru.fruPrice }</span>		               
		  <div class="product-subinfo">${fru.fruSubInfo }</div>		
		</div>
		</div>
	
		</c:forEach> 
		
<footer>
<a href="<c:url value='/fruit/fruitAllList'/>">
<div>
  <button type="button" id="page-button">1</button>
  <button type="button" id="page-button">2</button>
  <button type="button" id="page-button">3</button>
</div>
</a>
</footer>

	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
     
</body>
</html>