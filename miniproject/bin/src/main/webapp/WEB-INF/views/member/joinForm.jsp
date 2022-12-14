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
     	<script src="<c:url value='/js/join.js'/>"></script>
		
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
	        <form id="newMemberForm" name="newMemberForm" method="post" action="../index.html">
	          <table>
	            <tr><td> ID</td><td colspan="2"><input class="input" type="text" id="id" name="id"></td></tr>
	            <tr><td>비밀번호</td><td colspan="2"><input class="input" type="password" id="pwd" name="pwd"></td></tr>
	            <tr><td>휴대폰 번호</td><td colspan="2"	><input type="text" id="hp1" size="3"> 
	                    - <input type="text" id="hp2" size="4">
	                    - <input type="text" id="hp3" size="4"></td></tr> 
	                    <tr>
								<td rowspan="2">생년월일</td>
								<td colspan="2"><label><input type="text" id="birth" size="3">년</label> <select
									name="month">
										<option value="01" selected>1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
								</select>월 <select name="day">
										<option value="01" selected>1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
								</select>일 </td>
							</tr>
							<tr><td><label><input type="checkbox" name="sunmoon" value="1"
								>양력</label> <label><input type="checkbox"
								name="sunmoon" value="2">음력</label></td></tr>
							<tr><td>성별</td><td><label><input type="checkbox" name="sunmoon" value="1"
										>남</label> <label><input type="checkbox"
										name="sunmoon" value="2">여</label></td></tr>
										<tr>
								<td rowspan="3">주소</td>
								<td><label><input class="input" type="text" size="15"readonly></label></td>
								<td><input type="button" value="우편번호찾기"></td>
							</tr>
							<tr>
								<td><label><input class="input" type="text" size="40" readonly></label></td>
							</tr>
							<tr>
								<td class="detail-address"><label><input class="input" type="text" size="40" required></label>
								</td>
								<td>상세 주소 입력</td>
							</tr>
							<tr><td>이벤트 정보 수신</td><td><label><input type="checkbox" name="sunmoon" value="1"
										>SNS 이벤트 수신</label><label><input type="checkbox"
										name="sunmoon" value="2">이메일 정보 동의</label></td></tr>
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