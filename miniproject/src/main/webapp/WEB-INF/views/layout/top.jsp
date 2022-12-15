<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	<script src="<c:url value='/js/header.js' />"></script>
        <header>
            <div class="header-menu">
                <div>
                    <ul>
                        <a class="header-item" href="<c:url value='/fruit/fruitAllList'/>"><li>전체상품</li></a>
                        <!-- 나중에 고치세요 -->
                        <a class="header-item" href="<c:url value='/'/>"><li>가격비교</li></a>
						<a class="header-item" href="<c:url value='/chat'/>"><li><i class="fa fa-commenting"></i>챗봇</li></a>
                    </ul>
                </div>
                <div class="logo">
                    <a href="<c:url value='/' />" class="header-item"><img src="/image/logo.png"></a>
                </div>
                
                <div>

					<c:if test="${empty sessionScope.sid }">
						<ul>
							<a class="header-item" href="<c:url value='/'/>"><li>장바구니</li></a>
							<a class="header-item" href="<c:url value='/member/loginForm'/>"><li>로그인</li></a>
							<a class="header-item" href="<c:url value='/member/joinForm'/>"><li>회원가입</li></a>
							<a href="<c:url value='/fruit/fruitSearchForm'/>"> <button type="submit" class=" header-item "><i class="fa fa-search"></i></button></a>
						</ul>
					</c:if>
			
					<c:if test="${not empty sessionScope.sid }">
						${sessionScope.sid}님 
						<a class="header-item" href="<c:url value='/fruit/cartList'/>"><li>장바구니</li></a>
						<a class="header-item" href="<c:url value='/member/logout'/>"><li>로그아웃</li></a> 
						<a class="header-item" href="<c:url value='/member/myPage'/>"><li>My Page</li></a>
						<a href="<c:url value='/fruit/fruitSearchForm'/>"> <button type="submit" class=" header-item "><i class="fa fa-search"></i></button></a>
					</c:if>	            	
				</div>
            </div>
        </header>
        
       <div id="upBtnBox">
       		<a href="#">
       			<button id="upBtn"><i class="fa fa-chevron-up"></i></button>
       		</a>
       </div>