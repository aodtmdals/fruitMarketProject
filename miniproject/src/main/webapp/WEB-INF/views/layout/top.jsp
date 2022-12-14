<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	<script src="<c:url value='/js/header.js' />"></script>
        		
        <header>
            <div class="header-menu">
                <div>
                    <ul>
                        <a class="header-item" href="<c:url value='/fruit/fruitAllList'/>"><li>전체상품</li></a>
                        <a class="header-item" id="dropdown-btn"><li>제철과일 <i class="fa fa-chevron-down"></i></li></a>
                        <div id="subMenuBox">
                            <div class="subMenuItem hidden" id="subMenuItem1">
 						<div class="dropdown-item header-dropdown-item"><a href="#">봄</a></div>
                        <div class="dropdown-item header-dropdown-item"><a href="#">여름</a></div>
                        <div class="dropdown-item header-dropdown-item"><a href="#">가을</a></div>
                        <div class="dropdown-item header-dropdown-item"><a href="#">겨울</a></div>
                            </div>
                        </div>  
                    </ul>
                </div>
                <div class="logo">
                    <a href="#" class="header-item"><img src="/image/로고.PNG"></a>
                </div>
                <div>
                  <c:if test="${empty sessionScope.sid }">
                    <ul>
                          <a class="header-item focus" href="<c:url value='/chat'/>"><li><i class="fa fa-commenting"></i>챗봇</li></a>
                          <a class="header-item" href="<c:url value='/'/>"><li>장바구니</li></a>
                      <a class="header-item" href="<c:url value='/member/loginForm'/>"><li>로그인</li></a>
                      <a class="header-item" href="<c:url value='/member/joinForm'/>"><li>회원가입</li></a>
                    </ul>
                  </c:if>

                  <c:if test="${not empty sessionScope.sid }">
                          ${sessionScope.sid}님 환영합니다! 
                          <a class="header-item focus" href="<c:url value='/chat'/>"><li><i class="fa fa-commenting"></i>챗봇</li></a>
                          <a class="header-item" href="<c:url value='/fruit/cartList'/>"><li>장바구니</li></a>
                          <a class="header-item" href="<c:url value='/member/logout'/>"><li>로그아웃</li></a> 
                          <a class="header-item" href="<c:url value='/member/myPage'/>"><li>My Page</li></a>
                        </c:if>	            	
                </div>
            </div>
        </header>
     
      
        