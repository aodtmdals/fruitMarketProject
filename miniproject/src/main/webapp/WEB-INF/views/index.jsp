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
	                			<li>Best 상품 정보</li>
	                          </ul>
	                           <a class="product">
	           <div class="imgbox" onClick=newdi()><img src="image/peach.jpg"></div>
	           <button type="submit" class="product-button" onClick=newdi()><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button  type="submit" class="product-button" onClick=newba()><i class="fa fa-shopping-basket"></i></button>
	           
	          <div class="product-brand" onClick=newdi()>새콤달콤상점</div>   
	           <div class=product-info onClick=newdi()> 새콤달콤상점 특당도 왕 복숭아</div>
	          <span class=product-origin-price onClick=newdi()>89,000원</span>&nbsp;
	          <span class="product-price" onClick=newdi()>49,000원</span>
	          <div class="product-subinfo" onClick=newdi()>콜라보다 달~달하고 보송보송한 특당도 왕 복숭아</div>
	        </a>
	           <a href="#" class="product">
	           <div class="imgbox"><img src="image/apple.jpg"></div>
	           <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">사과이야기</div>   
	           <div class=product-info>사과이야기 상큼 달달 꿀사과</div>
	          <span class=product-origin-price>40,000원</span>&nbsp;
	          <span class="product-price">29,900원</span>
	          <div class="product-subinfo">껍질까지 먹을 수 있는 신선하고 건강한 사과!</div>
	          
	        </a>
	          <a href="#" class="product">
	           <div class="imgbox"><img src="<c:url value='/image/banana.jpg'/>"></div>
	            <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">과일나라</div>   
	           <div class=product-info>과일나라 상점 고당도 프리미엄 바나나</div>
	         
	          <span class="product-price">19,000원</span>
	        </a>
	          
	        <a href="#" class="product">
	           <div class="imgbox"><img src="<c:url value='/image/blueberries.jpg'/>"></div>
	          <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">청년청과</div>   
	           <div class=product-info>새콤달콤상점 하루 필수 과일 생 블루베리</div>
	          <span class=product-origin-price>25,000원</span>&nbsp;
	          <span class="product-price">19,000원</span>
	        </a>		
	        </div>
	        </div>
	         </article>
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
	        </div>
    	<script src="<c:url value='/js/login.js' />"></script>
    	<script src="<c:url value='/js/slideShow.js' />"></script>
    	<script src="<c:url value='/js/button.js' />"></script>
	</body>
</html>