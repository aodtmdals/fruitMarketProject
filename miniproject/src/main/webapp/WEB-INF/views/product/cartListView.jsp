<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	</head>
	<body>
			<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="wrap">
			
			   <div class ="SpBasket">
				<h2>장바구니</h2>
				
				<table class="list">
				<thead id="thead">
					<tr>
						<th id="id1">상품명</th>
						<th id="id2">옵션</th>
						<th id="id3">가격</th>
						<th id="id4">수량</th>
						<th id="id5">총금액</th>
						<th id="id6">삭제</th>
					</tr>
				</thead>
				
				<tbody id="tbody">
					<tr>
						<td colspan="6">장바구니가 비었습니다.</td>
					</tr>
				</tbody>
			</table>
				
				<div class="prd1">
						<div class="btn">
						<a href="#" ><img src="/image/btn1.png" id="btnimg1"></a>
						
						<a href="#" ><img src="/image/btn4.png" id="btnimg4"></a>
						
						</div>
						<div class="msg">
							<div id ="msg1"><img src="/image/Exclamation.png" id="Exclamation"> 안내사항</div><br>
							<div>- 상품 쿠폰 및 적립금 사용은 [주문서 작성/결제]에서 적용됩니다.</div>
							<div>- 장바구니는 회원에 한해 7일(168시간)동안 보관됩니다. 더 오래 보관 하시려면 관심상품에 담아주세요</div>
							<a href="#" title="Button border blue/green" class="button btnBorder btnBlueGreen">구매하기</a>
						</div>
					</div>
			  </div>
			
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
			<script src="<c:url value='/js/index.js' />"></script>
			<script src="<c:url value='/js/subMenu.js' />"></script>
		</div>
	</body>
</html>