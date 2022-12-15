<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문 페이지</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<script src="<c:url value='/js/cartListView.js' />"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/order.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/menu.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
			
	</head>
	<body>
        	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="wrap">
        	<section>
        		<br>
        		<form method="post" action="<c:url value='/'/>">	        		
     
       		<!-- (1) 주문자 정보 -->
       		<h1>Recipient Info</h1><h4>수령인 정보</h4>
       		<table border="1"  class="Recipient Info">
       			<tr><th>수령인</th>
					<td width="200">${memVo.memName}
					<input type="hidden" name="memId" value="${memVo.memId}"></td>
					</tr><tr>
					<th>연락처</th>
     				<td>${hp1}-${hp2}-${hp3}  
     				 <input type="hidden" name="hp1" value="${hp1}">
     				 <input type="hidden" name="hp2" value="${hp2}">
     				 <input type="hidden" name="hp3" value="${hp3}">
     				 </td></tr>
     				<tr>
					<th>배송지 주소</th>
     				<td><input type="text" id="ordRcvAddress" name="ordRcvZipcode" size="5" value="${memVo.memZipcode}" >
	            		<input type="button" id="btnBorder"  name="searchZipBtn" value="우편번호 찾기"><br>
	            		<input type="text" id="ordRcvAddress" name="ordRcvAddress1" placeholder="주소 입력" size="70" value="${memVo.memAddress1}" readonly> <br>
	            		<input type="text" id="ordRcvAddress" name="ordRcvAddress2" placeholder="상세 주소 입력" size="70" value="${memVo.memAddress2}" >
	            		</td></tr>     
	            		<tr>
					<th>배송메세지</th>
     				<td><select name="ordRcvMsg">
  		  		 		<option value="배송전 전화주세요">배송전 전화주세요</option>
  		  		 		<option value="부재중 전화주세요">부재중 전화주세요</option>
  		  		 		<option value="부재중 문얖에 놓고 가세요">부재중 문얖에 놓고 가세요</option>	        		  		 		
   		  		 		</select></td></tr>
	            		   		
       		</table><br><br>
       		
       		<h1>Product Info</h1><h4>상품 정보</h4>
       	<table border="1" class="productinfo">
       	<tr>
       	<th colspan="2" id="proname">상품명</th>
       <th>상품번호</th>
       	<th>가격</th>
       	<th>주문수량</th>
       	<th>주문금액</th></tr>
       	
       	<c:forEach var="fru" items="${cartList }">
       	<tr class="text">
       	<td id="imgtext"><img src="<c:url value='/images/${fru.fruImg}' />" width="150" height="100" > </td>
       	<td><span id="info"> ${fru.fruInfo}</span></td>
       	
         <td align="center">${fru.fruNo}</td>
           <td align="right"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" /> 원</td>
           <td>${fru.cartQty }</td>
           <td align="right">
	               	<span class="amount">
	          			<c:set var="amount" value="${fru.fruPrice * fru.cartQty }"/>
	          			<c:set var="sum" value="${sum + amount}"/>
		               	<fmt:formatNumber value="${amount}" pattern="#,###" /> 
	               	</span> 원
	            </td></tr>
	            
       	</c:forEach>
       	<tr><td colspan="5">총구매예정금액</td>
	         		<td align="right"><fmt:formatNumber value="${sum}" pattern="#,###" /> 원</td>
	         </tr>
       	</table><br><br>
       		
       		<!-- (4) 결제 정보 (결제 방법 선택) -->
       		<h1>Pay Info</h1><h4>결제 정보</h4>
       		<table border="1">
       			<tr><th>결제 방법</th>
       					<td><input id="ordPay" type="radio" name="ordPay" value="account">계좌이체
       						<input id="ordPay" type="radio" name="ordPay" value="checkcard">신용/체크카드 
       						<input id="ordPay" type="radio" name="ordPay" value="card">법인카드 
       						<input id="ordPay" type="radio" name="ordPay" value="phone">휴대폰
       						<input id="ordPay" type="radio" name="ordPay" value="deposit">무통장입금</td></tr>
       		</table><br>
       	
       		<a href="<c:url value='/index' />" ><input type="submit" class="button btnBorder" id="complete" value="주문 완료"></a>
      		</form><br>
        	</section>
        	
        	 <!--  bottom -->         
        
        	
			<script src="<c:url value='/js/index.js' />"></script>
			<script src="<c:url value='/js/subMenu.js' />"></script>
      </div>
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		
	</body>
</html>