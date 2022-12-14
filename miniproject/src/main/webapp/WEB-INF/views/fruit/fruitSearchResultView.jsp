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
			<br>
			<h3 id="result-title">상품 검색 결과</h3>
				<div id="products">
					<c:choose>
						<c:when test="${empty fruList}">
							찾는 상품이 없습니다
						</c:when>
						<c:otherwise>
							   <c:forEach var="fru" items="${fruList }">
								    <div class="product-list">
									     <div class="imgbox"> 
										     <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}' />" class="product">
										         <img src="<c:url value='/images/${fru.fruImg }'/>">
										     </a>
									     </div>
									     <div class="product-buttons">
											 <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}'/>"><button type="button" class="product-button"><i class="fa fa-search"></i></button></a>
											 <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
											 <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
										 </div>
										 <div class="product-title">
											 <div class="product-brand">${fru.fruCompany }</div> 
											 <div class=product-info>${fru.fruInfo }</div>
										 </div>
										 <div class="product-price"> 
											 <span class=product-origin-price>
											 <c:if test="${not empty fru.fruOriginPrice && 0 != fru.fruOriginPrice}" >${fru.fruOriginPrice }</c:if></span>
											 <span class="product-price">${fru.fruPrice }원</span>
										 </div>		               
										 <div class="product-subinfo">${fru.fruSubInfo }</div>
									</div>	
								</c:forEach> 
			         	</c:otherwise>
			   		</c:choose>  	
				</div>    
			</div>
	</body>
</html>








