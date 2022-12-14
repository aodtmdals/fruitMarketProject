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
       	<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
    <body>
      <div id="wrap">
        	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
    <article id="content1">
		<div id="prdtb">
		<form id="cartDB" method="post" action="<c:url value=''/>">
			<table>
				<thead>
					<tr><td rowspan="7" id="prdImgtd"><img src="<c:url value='/images/${fru.fruImg}'/>" id="prdimg"></td>
					<td colspan="2"><a id="fruitTitle">${fru.fruInfo }</a></td></tr>
					<tr><td>정가</td><td><fmt:formatNumber value="${fru.fruOriginPrice }" pattern="#,###" /> 원</td></tr>
					<tr><td>판매가</td><td id="price"><fmt:formatNumber value="${fru.fruPrice }" pattern="#,###" /> 원</td></tr>
						<tr>
							<td>수량</td>
							<td>
								<select id="ordnum" name="cartQty">
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
						<tr><td>배송비</td><td>3,000</td></tr>
						<tr><td colspan="2" id="total"><fmt:formatNumber value="${fru.fruPrice}" pattern="#,###" /> 원</td></tr>
					<tr><td colspan="2" id='Btns_td'><input type="submit" value="장바구니">
					<button id="orderBtn" type='button'>주문하기</button></td></tr>
				</thead>
			</table>
			</form>
		</div>
	</article>
	<article id="content2">
		<div id="tabMenu">
			<ul id="tab">
				<li class='tabtab'>상세 설명</li>
				<li class='tabtab'>상품평</li>
				<li class='tabtab'>상품 문의</li>
			</ul>
		</div>
	</article>
	<article id="content3">
	<hr>
		<div id="tabContent">
			<div id='a1'><img src="<c:url value='/images/${fru.fruNo}-1.jpg'/>"></div>
				<div id='a2'>
					<table id='reviewtable1'>
						<tr>
							<th>이름</th><th>상품평</th>
						</tr>
						<tr>
							<td>박**</td>
							<td>아이가잘먹어요 한번에딱좋아요</td>
						</tr>
						<tr>
							<td>이**</td>
							<td>진짜 맛있네요!! 재주문의사완전있음</td>
						</tr>
						<tr>
							<td>김**</td>
							<td>진짜 고당도인거같아요! 너무 맛있어요ㅠㅠ</td>
						</tr>
					</table>
					<input type="text" placeholder="상품평 입력" id="prdreview1">
					<button type="submit" id='reviewbtn1'>등록</button>
				</div>
				<div id='a3'>
					<h4> 상품문의 </h4>
					<table id='reviewtable2'>
						<tr>
							<td>비밀댓글입니다.</td>
						</tr>
						<tr>
							<td>비밀댓글입니다.</td>
						</tr>
						<tr>
							<td>김**</td>
							<td>상품 언제 발송 되나요??</td>
						</tr>
					</table><br>
					<div>
						<input type="text" placeholder="문의 글 남기기" id="prdreview2">
						<button type="submit" id='reviewbtn2'>문의하기</button>
					</div>
				</div>
			</div>
		
		</article>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
</body>
</html>