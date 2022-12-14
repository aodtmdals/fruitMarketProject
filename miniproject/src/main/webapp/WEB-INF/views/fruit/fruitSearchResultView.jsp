<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 검색 결과</title>
	
	</head>
	<body>
		<div id="wrap">
		
			<hr>
			<h3>상품 검색 결과</h3>
					<c:choose>
						<c:when test="${empty fruList}">
							
						찾는는 상품이 없습니다
							
						</c:when>
						<c:otherwise>
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
			         </c:otherwise>
			   </c:choose>      
				
			</div>
	</body>
</html>








