<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>회원가입 페이지</title>
      <c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/index.css'/>">
		 <link rel="stylesheet" type="text/css" href="<c:url value='/css/join.css'/>">
		 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
     	<script src="<c:url value='/js/join.js'/>"></script>
     	<script src="<c:url value='/js/searchZip.js'/>"></script>
		
		<style>			
			table { margin:0 auto; width: 600px;}
		</style>
    <body>
      		<c:import url="/WEB-INF/views/layout/top.jsp" />
	   <!--  top -->     
		<br><br><br>
		<div id="wrap">
	        	<br>
		        <h1 align="center" id="joinTitle">회원 정보 입력</h1>
		        <br>
		        <br>
		        <br>
		        <form id="newMemberForm" name="newMemberForm" method="post" action="<c:url value='/member/insert'/>">
		          <table id="joinTable">
		            <tr ><td> 성명</td><td colspan="2"><input class="input" type="text" id="memName" name="memName"></td></tr>
		            <tr><td> ID</td><td colspan="2"><input class="input" type="text" id="memId" name="memId"></td></tr>
		            <tr><td>비밀번호</td><td colspan="2"><input class="input" type="password" id="memPw" name="memPw"></td></tr>
		            <tr><td>휴대폰 번호</td><td colspan="2"	><input class="inputHP" type="text" id="memHp1" name="memHp1" size="3" class="joinInput"> 
		                    - <input class="inputHP" type="text" id="memHp2" name="memHp2" size="4" class="joinInput">
		                    - <input class="inputHP" type="text" id="memHp3" name="memHp3" size="4" class="joinInput"></td></tr> 
		                    
			        <tr><td>이메일</td><td colspan="2"><input class="input" type="email" id="memEmail" name="memEmail" class="joinInput"></td></tr>    
		            	 
					<tr><td rowspan="3">주소</td>
					<td><input class="input" type="text" id="memZipcode" name="memZipcode" size="10" readonly></td>
					<td><input class="button success joinFormBtn" type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기" class="joinBtn"></td></tr>
					<tr>
						<td colspan="2"><input class="input" type="text" id="memAddress1" name="memAddress1" placeholder="주소 입력" size="40" readonly></td>
					</tr>
					<tr>
						<td colspan="2"><input class="input" type="text" id="memAddress2" name="memAddress2" placeholder="상세 주소 입력" size="40"></td>
					</tr>	
					<tr> 
						<td></td>
					</tr>			
		             <tr>
		                <td colspan="2" class="join-buttons" align="center">
		                    <input class="button success joinFormBtn" type="submit" value="완료">
		                </td>
		                <td colspan="2">
		                    <input class="button cancle joinFormBtn" type="reset" value="취소" >
		                </td>
		            </tr>             
		          </table>
	      		</form>	
		        <br>
		        <br>
      	 </div>    
      	 	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </body>
</html>