<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>전체 화면</title>
		<link rel="stylesheet" href="<c:url value='css/NewFile.css'/>">
        <c:import url="/WEB-INF/views/layout/head.jsp" />
		
	   
   </head>
   <body>
   <!--  top -->
   	<div id="wrap">         
       <c:import url="/WEB-INF/views/layout/top.jsp" />
		   <div class="products">
		      <div class="product-list">
			       <div class="head3">
			       		<select>
				          <option>상품정렬</option>
				          <option>추천순</option>
				          <option>상품명순</option>
				          <option>신상품순</option>
			          	</select>
		  </div> 
		  <a class="product">
		           <div class="imgbox" onClick=newdi()><img src="image/peach.jpg"></div>
		           <button type="submit" class="product-button" onClick=newdi()><i class="fa fa-search"></i></button>
		           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
		           <button  type="submit" class="product-button" onClick=newba()><i class="fa fa-shopping-basket"></i></button>
		           
		           <div class="product-brand" onClick=newdi()>새콤달콤상점</div>   
		           <div class=product-info onClick=newdi()>새콤달콤상점 특당도 왕 복숭아</div>
		          <span class=product-origin-price onClick=newdi()>89,000원</span>&nbsp;
		          <span class="product-price" onClick=newdi()>49,000원</span>
		          <div class="product-subinfo" onClick=newdi()>콜라보다 달~달하고 보송보송한 특당도 왕 복숭아</div>
		  </a>
       
       
	    	<a href="#" class="product">
		           <div class="imgbox"><img src="image/banana.jpg"></div>
		            <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
		           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
		           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
		          <div class="product-brand">과일나라</div>   
		           <div class=product-info>과일나라 상점 고당도 프리미엄 바나나</div>
		         
		          <span class="product-price">19,000원</span>
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
	           <div class="imgbox"><img src="image/blueberries.jpg"></div>
	          <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">청년청과</div>   
	           <div class=product-info>새콤달콤상점 하루 필수 과일 생 블루베리</div>
	          <span class=product-origin-price>25,000원</span>&nbsp;
	          <span class="product-price">19,000원</span>
	        </a>
	   
	   		<a href="#" class="product">
	           <div class="imgbox"><img src="image/cherries.jpg"></div>
	           <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">청년청과</div>   
	           <div class="product-info">청년청과 프리미엄 고당도 체리</div>
	          <span class=product-origin-price>45,000원</span>&nbsp;
	          <span class="product-price">33,900원</span>
	        </a>
	
	     	<a href="#" class="product">
	           <div class="imgbox"><img src="image/grape.jpg"></div>
	           <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">새콤달콤상점</div>   
	           <div class="product-info">새콤달콤상점 때깔찬 고당도 포도</div>
	          <span class="product-price">12,000원</span>
	        </a>
	     	<a href="#" class="product">
	           <div class="imgbox"><img src="image/grapefruit.jpg"></div>
	           <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">과일나라</div>   
	           <div class=product-info>과일나라 프리미엄 레드자몽</div>
	          <span class=product-origin-price>29,000원</span>&nbsp;
	          <span class="product-price">19,800원</span>
	        </a>
	     	<a href="#" class="product">
	           <div class="imgbox"><img src="image/watermelon.jpg"></div>
	         <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">과일팜</div>   
	           <div class=product-info>과일팜 최상급 고당도 수박</div>
	          <span class="product-price">25,000원</span>
	           <div class="product-subinfo">여름에만 먹을 수 있다? NO! 급이 다른 최상급 수박</div>
	          
	        </a>
	      	<a href="#" class="product">
	           <div class="imgbox"><img src="image/mango.jpg"></div>
	           <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">청년청과</div>   
	           <div class=product-info>청년청과 항공직송 프리미엄 망고</div>
	          <span class=product-origin-price>99,000원</span>&nbsp;
	          <span class="product-price">29,000원</span>
	           <div class="product-subinfo">베트남에서 먹었던 그맛 달달한 과즙이 폭발!</div>
	          
	        </a>
	      	<a href="#" class="product">
	           <div class="imgbox"><img src="image/strawberry.jpg"></div>
	           <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn()><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">새콤달콤상점</div>   
	           <div class=product-info>새콤달콤상점 산지직송 새콤달콤 딸기</div>
	          <span class="product-price">15,000원</span>
	        </a>
	     	<a href="#" class="product">
	           <div class="imgbox"><img src="image/pineapple.jpg"></div>
	          <button type="submit" class="product-button"><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button"><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">과일팜</div>   
	           <div class=product-info>과일팜 고당도 골드파인애플 모음</div>
	          <span class=product-origin-price>35,000원</span>&nbsp;
	          <span class="product-price">26,900원</span>
	        </a>
	        <a href="#" class="product">
	           <div class="imgbox"><img src="image/pomegranate.jpg"></div>
	         <button type="submit" class="product-button" ><i class="fa fa-search"></i></button>
	           <button type="submit" class="product-button" onClick=btn();><i class="fa fa-heart-o"></i></button>
	           <button type="submit" class="product-button" ><i class="fa fa-shopping-basket"></i></button>
	          <div class="product-brand">과일나라</div>   
	           <div class=product-info>과일나라 붉은보석 프리미엄 석류 생과</div>
	          <span class="product-price">28,900원</span>
	        </a>
	  	</div>
	</div>
	<a href="NewFile.html">
		<div>
		  <button type="button" id="page-button">1</button>
		  <button type="button" id="page-button">2</button>
		  <button type="button" id="page-button">3</button>
		</div>
	</a>
</div>

 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>