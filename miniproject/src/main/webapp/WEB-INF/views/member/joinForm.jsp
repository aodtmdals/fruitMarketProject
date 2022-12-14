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
	   <!--  top -->     
      <c:import url="/WEB-INF/views/layout/top.jsp" />
	<br><br><br>
		<div id="wrap">
	        <h1 align="center">회원 정보 입력</h1>
	        <h4 align="center">기본 정보 입력</h4>
	        <hr>
	        <form id="newMemberForm" name="newMemberForm" method="post" action="<c:url value='/member/insert'/>">
	          <table>
	            <tr><td> 성명</td><td><input class="input" type="text" id="memName" name="memName" ></td></tr>
	            <tr><td> ID</td><td colspan="2"><input class="input" type="text" id="memId" name="memId"></td></tr>
	            <tr><td>비밀번호</td><td colspan="2"><input class="input" type="password" id="memPw" name="memPw"></td></tr>
	            <tr><td>휴대폰 번호</td><td colspan="2"	><input type="text" id="memHp1" name="memHp1" size="3"> 
	                    - <input type="text" id="memHp2" name="memHp2" size="4">
	                    - <input type="text" id="memHp3" name="memHp3" size="4"></td></tr> 
	                    
		        <tr><td>이메일</td><td><input type="email" id="memEmail" name="memEmail"></td></tr>    
	            	 
								<tr><td rowspan="3">주소</td>
								<td><input type="text" id="memZipcode" name="memZipcode" size="10" readonly></td>
								<td><input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"></td></tr>
							<tr>
								<td><input type="text" id="memAddress1" name="memAddress1" placeholder="주소 입력" size="40" readonly></td>
							</tr>
							<tr>
								<td><input type="text" id="memAddress2" name="memAddress2" placeholder="상세 주소 입력" size="40"></td>
							</tr>
										
	             <tr>
	                <td colspan="3" class="join-buttons" align="center">
	                    <br><input type="submit" value="완료">
	                    <input type="reset" value="취소">
	                </td>
	            </tr>             
	          </table>
      		</form>	
      	 </div>    
      	 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </body>
</html>