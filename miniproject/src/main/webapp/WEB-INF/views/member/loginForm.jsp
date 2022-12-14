<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
    	<title>로그인 페이지</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
    	<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css' />">
    	<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css' />">
     	<script src="<c:url value='/js/login.js' />"></script>
	</head>
	<body>
		<div id="wrap">
			<c:import url="/WEB-INF/views/layout/top.jsp" />
			<form id="newMemberForm" name="newMemberForm">
				<div class="loginpage">
				    <h2> 새콤달콤상점</h2> 
				    <div class ="login">
				        <label>아이디 <input type ="text" id="id" maxlength="10"></label><br>
				        <label>패스워드<input type = "password"id="pwd"size="10"></label><br>
				        <input type="checkbox" > 로그인 상태유지<br>
				        <input type="submit" value="로그인">
				    </div>
				</div>
			</form>  
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
		</div>
	</body>
</html>