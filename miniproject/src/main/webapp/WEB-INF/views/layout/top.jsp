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
                    <a href="#" class="header-item"><img src="/image/logo.png"></a>
                </div>
                <div>
                    <ul>
                        <a class="header-item focus"><li><i class="fa fa-commenting"></i>챗봇</li></a>
                        <a class="header-item" href="<c:url value='/cart'/>"><li>장바구니</li></a>
                        <a class="header-item" href="<c:url value='/login'/>"><li>로그인</li></a>
                        <a class="header-item" href="<c:url value='/join'/>"><li>회원가입</li></a>
                    </ul>
                </div>
            </div>
        </header>
        <nav>
            <div class="nev-menu">
                <form class="search-form">
                    <input type="text" class="input-search-word" placeholder="검색어 입력">
                    <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </nav>