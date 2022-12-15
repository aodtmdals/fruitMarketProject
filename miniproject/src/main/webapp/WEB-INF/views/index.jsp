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
	 	<link rel="stylesheet" type="text/css" href="<c:url value='/css/button.css' />">
      	<link rel="stylesheet" type="text/css" href="<c:url value='/css/NewFile.css' />">
		<script src="<c:url value='/js/Product_Click.js'/>"></script>
	</head>
	<body>
			<c:import url="/WEB-INF/views/layout/top.jsp" />
			<div id="left-banner">
				<div class="wrapper-li">
					<div class="banner-img">
						<a href="<c:url value='/chat'/>"><img src="image/챗봇.jpg" alt="이미지" width="250" height="400"></a>
					</div>
					<div class="banner-img">
						<a href="<c:url value='/fruit/detailViewFruit/${1027}'/>">
						<img src="image/경북사과.jpg" alt="이미지" class="wrapperImg" width="250" height="400"></a>
					</div>
				</div>
			</div>
		<div id="wrap">
				<section id="main">
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
	            				<img src="<c:url value='/image/슬라이드1.PNG'/>" class="slideImage">
	            				<img src="<c:url value='/image/슬라이드2.PNG'/>" class="slideImage">
	            				<img src="<c:url value='/image/슬라이드3.PNG'/>" class="slideImage">
	            			</div> <!-- slidePanel 끝 --> 
	            		</div>
	            		<!-- slideShowBox 끝 -->
	            		<!-- (3) 컨트롤 버튼 -->
	            		<div id="controlButtonBox">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	            			<img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
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
							</div>
							<div id="products" class="index">
								   <c:forEach var="fru" items="${bestList }">
									    <div class="product-list">
										     <div class="imgbox"> 
											     <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}' />" class="product">
											         <img src="<c:url value='/images/${fru.fruImg }'/>">
											     </a>
										     </div>
											     <div class="product-buttons">
													 <a href="<c:url value='/fruit/detailViewFruit/${fru.fruNo}'/>"><button type="button" class="product-button"><i class="fa fa-search"></i></button></a>
													 <a class="productBtn" href="<c:url value='/'/>"><button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button></a>
													<form class="cartInsert" id="cartDB" method="post" action="<c:url value='/fruit/insertCart/${fru.fruNo}'/>">
													 	<button id='Btns_td' type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
													</form>
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
							</div> 
						</div>
					</article> 
					<article  id="content2"> <!-- 베스트 상품 -->    
	                	<div id="productBox1" >
	                		<div class="product_text1">
		                		<ul>
		                			<li>겨울 과일</li>
		                        </ul>
							</div>
							<div id="products" class="index">
							   <c:forEach var="fru" items="${alwaysList }">
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
										 <div class="product-title1">
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
	    		</section>
	        <!--  bottom -->         
	    	</div>
	    	<div id="right-banner">
				<div class="wrapper-li">
					<div class="banner-img">
						<a href="<c:url value='/'/>" onclick=""><img src="image/크리스마스.jpg" alt="이미지" class="wrapperImg" width="250" height="500"></a>
					</div>
				</div>
			</div>
	        <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    	<script src="<c:url value='/js/login.js' />"></script>
    	<script src="<c:url value='/js/slideShow.js' />"></script>
    	<script src="<c:url value='/js/button.js' />"></script>
	</body>
</html>