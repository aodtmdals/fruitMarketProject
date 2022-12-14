<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
    	<title>장바구니</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/SpBasket.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/menu.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
		<script src="<c:url value='/js/header.js' />"></script>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<script src="<c:url value='/js/cartListView.js' />"></script>
			<script type="text/javascript">
			 $(document).ready(function(){
			  var qty = 0;			
			  var sum = 0;
			 
				// 배열로 가져오기
			  var cartQty = $('.cartQty').get(); // 주문수량
			  var amount = $('.amount').get();  // 총금액
			  var prdPrice = $('.prdPrice').get(); // 상품가격
			  
			  // - 버튼 클릭했을  1 감소
			  $('.btnM').each(function(index) {
				 	$(this).on('click', function(){
				 		qty = Number(cartQty[index].value);
				 		qty = qty - 1;
				 		if(qty < 1) qty = 1;
				 		calculate(index);
				 	}); 	
				 	
			 	}); 
			  
			  // + 버튼 클릭했을 때 1 증가
			  $('.btnP').each(function(index) {
				 	$(this).on('click', function(){
				 		qty = Number(cartQty[index].value);
				 		qty = qty + 1;
				 		if(qty < 1) qty = 1;
				 		calculate(index);
				 	}); 	
				 	
			 	}); 
			  
			  // 각 요소를 배열로 가져와서 인덱스에 해당되는 작업 처리
				function calculate(index){
					
					cartQty[index].value = qty;  // 주문수량 입력란 값 변경
					var num = Number(prdPrice[index].innerHTML.replace(/,/g,""));  //가격 읽어와서(쉼표 제거해서 숫자로 변환)
					amount[index].innerHTML = (cartQty[index].value * num).toLocaleString(); // 총금액 계산해서 (천단위 구분해서 출력)
					
					// 총구매예정금액 계산
					amount.forEach( function(item){
						sum += Number(item.innerHTML.replace(/,/g,""));
					} );
					$('#sum').text(sum.toLocaleString());
					sum = 0;	 
				}
				
			}); 
			
		</script>	
	</head>
	<body>
		<div id="wrap">
			   <div class ="SpBasket">
				<h2>장바구니</h2>
				
				<table class="list">
				<thead id="thead">
					<tr>
						<th id="id1">상품명</th>
						<th id="id2">상품번호</th>
						<th id="id3">가격</th>
						<th id="id4">수량</th>
						<th id="id5">총금액</th>
						<th id="id6"><input type="checkbox" id="allCheck" name="allCheck" class="allCheck"><input type="button" id="deleteCartBtn" class="button btnBorder btnBlueGreen" value="삭제"></th>
					</tr>
				</thead>
					
				<tbody id="tbody">
				<c:forEach var="fru" items="${cartList}">
					 <tr>
			               <td><img  src="<c:url value='/image/${fru.fruImg}'/>" width="100" height="70">${fru.fruInfo }</td>
			               <td>${fru.fruNo}</td>
			               <td align="right"><span class="prdPrice"><fmt:formatNumber  value="${fru.fruPrice}" pattern="#,###" /></span> 원
			                <input type="hidden" id="fruPrice"  value="${fru.fruPrice}">
			               </td>
			               
			               <td>
			               <input type="button" value=" - " class="btnM" >
							<input type="text" class="cartQty" name="cartQty" value="${fru.cartQty}"  size="1" readonly>
							<input type="button" value=" + "  class="btnP" >
			               
			               	   <input type="hidden" name="cartNo" value="${fru.cartNo}"> 
			               	   <input type="hidden" name="memId" value="${fru.memId}">
			               </td>
			               <td align="right">
			               <span class="amount">
			               <c:set var="amount" value="${fru.fruPrice * fru.cartQty}"/>
			               <c:set var="sum" value="${sum + amount}"/>
			               <fmt:formatNumber value="${ amount}" pattern="#,###" />
			               </span>
			               원
			               </td>
			               <td><input type="checkbox" class="chkDelete" data-cartNo="${fru.cartNo}"><!-- value 사용해도 됨 --></td>
			            	               
			            </tr>
			             </c:forEach>
			             <tr id="allcart">
			             
			         <td colspan="5"> 총구매예정금액</td>
			        
			         <td align="right"> 
			         <span id="sum">
			         <fmt:formatNumber value="${sum}" pattern="#,###" />
			          </span>원</td>    
			         
			         </tr>
			  
				</tbody>
				
			</table>
				
				<div class="prd1">
						<div class="btn">
					
						<a href="<c:url value='/fruit/fruitCtgListView' />" ><img src="<c:url value='/image/btn1.png'/>" id="btnimg1"></a>
						
						<a href="<c:url value='/fruit/deleteAllCart' />"  ><img src="<c:url value='/image/btn4.png'/>"  id="btnimg4" ></a>
						
						</div>
						<div class="msg">
							<div id ="msg1"><img src="/image/Exclamation.png" id="Exclamation"> 안내사항</div><br>
							<div>- 상품 쿠폰 및 적립금 사용은 [주문서 작성/결제]에서 적용됩니다.</div>
							<div>- 장바구니는 회원에 한해 7일(168시간)동안 보관됩니다. 더 오래 보관 하시려면 관심상품에 담아주세요</div>
							<a href="<c:url value='/구매링크' />" title="Button border blue/green" class="button btnBorder btnBlueGreen" type="submit">구매하기</a>
						</div>
					</div>
			  </div>
			
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
			<script src="<c:url value='/js/index.js' />"></script>
			<script src="<c:url value='/js/subMenu.js' />"></script>
		</div>
	</body>
</html>