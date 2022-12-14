<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index 메인페이지</title>
        <c:import url="/WEB-INF/views/layout/head.jsp" />
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/product.css' />">
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/slideShow.css' />">
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/Best.css' />">
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/button.css' />">
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp" />
			<section>
	            	<article  id="slideShow"> <!-- 슬라이드 쇼 -->   
	            		<!--  (1) prevNext 버튼 박스 -->
	            		<div id="prevNextButtonBox">
	            			<img id="prevButton" src="<c:url value='/image/prevButton.png'/>">
	            			<img id="nextButton" src="<c:url value='/image/nextButton.png'/>">
	            		</div>
	            		<!--  (2) 슬라이드 쇼 박스-->
	            		<div id="slideShowBox">
	            			<div id="slidePanel">
	            				<img src="<c:url value='/image/딸기.png'/>" class="slideImage">
	            				<img src="<c:url value='/image/사과.png'/>" class="slideImage">
	            				<img src="<c:url value='/image/참외1.png'/>" class="slideImage">
	            				
	            			</div> <!-- slidePanel 끝 --> 
	            		</div><!-- slideShowBox 끝 -->
	            		<!-- (3) 컨트롤 버튼 -->
	            		<div id="controlButtonBox">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	            		</div>
	                </article>
	                <article  id="content1"> <!-- 베스트 상품 -->    
	                	<div id="productBox" >
	                		<div class="product_text">

	                		<ul>
	                			<li>Best 상품 정보2</li>
	                          </ul>
			<c:forEach var="fru" items="${bestList }">
          <div class="products">
          <div class="product-list">
         <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}' />" class="product">
         <div class="imgbox"> <img src="<c:url value='/images/${fru.fruImg }'/>"></div></a>
           <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
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
			<article id="button"><!-- 버튼박스 -->
	                <div id="buttonBox">
	                      <button id="btn" align="left">오늘의 과일은??</button>
	                <div id="random">
	              			   <a href="#"><img src="<c:url value='/image/fruit01.jpg'/>"></a>
	                </div>
	                </div>
	                </article>
	               <!--  bottom -->         
	        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	    	</section>
	    </div>
    	<script src="<c:url value='/js/login.js' />"></script>
    	<script src="<c:url value='/js/slideShow.js' />"></script>
    	<script src="<c:url value='/js/button.js' />"></script>
	</body>
</html>