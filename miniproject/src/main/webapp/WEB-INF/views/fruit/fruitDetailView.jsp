<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>달콤상점 상세페이지</title>
     	<link rel="stylesheet" type="text/css" href="<c:url value='/css/Product_Detail.css'/>">
     	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/Product_Click.js'/>"></script>
		<script src="<c:url value='/js/index.js'/>"></script>
		<script src="<c:url value='/js/insertReview.js'/>"></script>
       	<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
    <body>
        	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
      <div id="wrap">
    <article id="content1">
		<div id="prdtb">
		<form id="cartDB" method="post" action="<c:url value='/fruit/insertCart'/>">
			<table>
				<thead>
				
					<tr><td rowspan="7" id="prdImgtd"><img src="<c:url value='/images/${fru.fruImg}'/>" id="prdimg"></td>
					<td colspan="2" style="height:10px"><a id="fruitTitle">${fru.fruInfo }</a></td></tr>
					<tr><td>정가</td><td style="text-decoration: line-through"><c:if test="${not empty fru.fruOriginPrice && 0 != fru.fruOriginPrice}">			
					<fmt:formatNumber value="${fru.fruOriginPrice }" pattern="#,###" /></c:if> 원</td></tr>
					<tr><td>판매가</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" /> 원</td></tr>
						<tr>
							<td>수량</td>
							<td>
							<input type="hidden" id="fruNo" name="fruNo" value="${fru.fruNo}">
								<select id="cartQty" name="cartQty">
								<option value="1"selected>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option></select>
							</td>
						</tr>
						<tr><td></td><td><span id="amount"><fmt:formatNumber value="${fru.fruPrice}" pattern="#,###" /> 원</span></td></tr>
					 <input type="hidden" id="fruPrice" value="${fru.fruPrice}"></input>
					<tr><td colspan="2">
						<c:if test="${empty sessionScope.sid }">
							<button class="dontBtn" type='button'>장바구니</button>
							<button class="dontBtn" type='button'>주문하기</button>
						</c:if>
						<!-- 로그인 한 경우에는 [장바구니] [주문하기] 버튼 출력  -->
						<c:if test="${not empty sessionScope.sid }">
							<input id="cart" type="submit" value="장바구니">
							<button id="deilivery" type='button'>주문하기</button>
						</c:if>
					</td></tr>
				</thead>
			</table>
			</form>
		</div>
	</article>
	<article id="content2">
		<div id="tabMenu">
				<a class='tabtab'>상세 설명</a>
				<a class='tabtab'>상품평</a>
				<a class='tabtab'>상품 문의</a>
		</div>
	</article>
	<article id="content3">
	<hr>
		<div id="tabContent">
			<div id='a1'><img src="<c:url value='/images/${fru.fruNo}-1.jpg'/>"></div>
				
				<div id='a2'>
				<form id="reviewDB">
				 <div id='reviewList'>
				 <c:forEach var="rew" items="${rew}">
						<table id='reviewtable1'>
							<tr>
								<td id='memId'>${rew.memId }</td>
								<td id='review'>${rew.review }</td>
							</tr>
						</table>
					</c:forEach>
				 <input type="text" placeholder="상품평을 입력하세요" id="prdreview1" name="review">
					<button type="submit" id='reviewbtn1'>등록</button>
					 
				 </div>
					</form>
				</div>
				
			</div>
		</article>
		<hr>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>