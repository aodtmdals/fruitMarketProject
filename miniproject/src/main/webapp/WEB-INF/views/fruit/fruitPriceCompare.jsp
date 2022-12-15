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
     	<link rel="stylesheet" type="text/css" href="<c:url value='/css/compare.css'/>">
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
    <article>
    	<h2 id="compareTitle">가격비교</h2>
		<div class="compareTable">
		<!-- 
		<form id="cartDB" method="post" action="<c:url value='/fruit/insertCart'/>"> -->
			<table>
				<thead>
					<tr>
						<th></th>
						<th>상품명</th>
						<th>판매처</th>
						<th>가격</th>
						<th ></th>
					</tr>
				</thead>
				<tbody>
					<tr><td rowspan="7" id="prdImgtd"><img src="<c:url value='/images/1028.jpg'/>" class="compareImg"></td>
					<td colspan="2" style="height:10px"><a id="fruitTitle">${fru.fruInfo }</a></td></tr>
					<tr><td>사과이야기</td><td>경북 황금사과</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />19900원</td><td><a href="/fruit/detailViewFruit/1027"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>새콤달콤상점<td>청송 꿀사과</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />22900원</td><td><a href="/fruit/detailViewFruit/1021"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>청년청과</td><td>양구 펀치볼사과</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />23900원</td><td><a href="/fruit/detailViewFruit/1028"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>새콤달콤상점</td><td>상큼 달달 꿀사과</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />29900원</td><td><a href="/fruit/detailViewFruit/1003"><button class="goInfo">사러가기</button></a></td></tr>
				</tbody>
			</table>
			<!-- </form>  -->
		</div>
		<div class="compareTable">
		<!-- 
		<form id="cartDB" method="post" action="<c:url value='/fruit/insertCart'/>"> -->
			<table>
				<thead>
					<tr>
						<th></th>
						<th>상품명</th>
						<th>판매처</th>
						<th>가격</th>
						<th ></th>
					</tr>
				</thead>
				<tbody>
					<tr><td rowspan="7" id="prdImgtd"><img src="<c:url value='/images/1029.jpg'/>" class="compareImg"></td>
					<td colspan="2" style="height:10px"><a id="fruitTitle">${fru.fruInfo }</a></td></tr>
					<tr><td>새콤달콤상점<td>산청 설향 딸기</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />9900원</td><td><a href="/fruit/detailViewFruit/1024"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>새콤달콤상점</td><td>산지직송 새콤달콤 딸기</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />15000원</td><td><a href="/fruit/detailViewFruit/1010"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>청년청과</td><td>정성담은 킹스베리 딸기</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />26800원</td><td><a href="/fruit/detailViewFruit/1029"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>딸기나라</td><td>프룻프룻해 금실 딸기</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />29700원</td><td><a href="/fruit/detailViewFruit/1030"><button class="goInfo">사러가기</button></a></td></tr>
				</tbody>
			</table>
			<!-- </form>  -->
		</div>
		<div class="compareTable">
		<!-- 
		<form id="cartDB" method="post" action="<c:url value='/fruit/insertCart'/>"> -->
			<table>
				<thead>
					<tr>
						<th></th>
						<th>상품명</th>
						<th>판매처</th>
						<th>가격</th>
						<th ></th>
					</tr>
				</thead>
				<tbody>
					<tr><td rowspan="7" id="prdImgtd"><img src="<c:url value='/images/1025.jpg'/>" class="compareImg"></td>
					<td colspan="2" style="height:10px"><a id="fruitTitle">${fru.fruInfo }</a></td></tr>
					<tr><td>새콤달콤상점</td><td>고당도 제주 감귤</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />9900원</td><td><a href="/fruit/detailViewFruit/1026"><button class="goInfo">사러가기</button></a></td></tr>
					<tr><td>새콤달콤상점<td>제주 감귤 황금향</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" />22000원</td><td><a href="/fruit/detailViewFruit/1025"><button class="goInfo">사러가기</button></a></td></tr>
				</tbody>
			</table>
			<!-- </form>  -->
		</div>
	</article>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>