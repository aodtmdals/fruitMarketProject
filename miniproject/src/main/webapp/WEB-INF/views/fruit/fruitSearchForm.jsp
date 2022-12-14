<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        		
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 등록</title>    
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/productSearch2.js'/>"></script>
		  <link rel="stylesheet" type="text/css" href="<c:url value='/css/NewFile.css' />">
		   <link rel="stylesheet" type="text/css" href="<c:url value='/css/form.css' />">
		 <c:import url="/WEB-INF/views/layout/head.jsp" />	   
	</head>
	<body>
		<body>
		<div id="wrap">
		  <c:import url="/WEB-INF/views/layout/top.jsp" />
				<h3>상품 검색</h3>
				<form id="fruSearchFrm">
					<select id="type" name="type">
						<option value="fruInfo">상품명</option>
						<option value="fruCompany">제조회사</option>
					</select>
					 <input type="text" name="keyword" class="input-search-word" placeholder="검색어 입력">
		            <button type="submit" class="header-item"><i class="fa fa-search"></i></button>
				</form>
		
				<!-- 검색 결과 출력  -->
				<div id="searchResultBox"></div>

		  	<c:import url="/WEB-INF/views/layout/bottom"src/main/resources/static/image/logo.png".jsp" />
		</div>
	</body>
	
</html>
