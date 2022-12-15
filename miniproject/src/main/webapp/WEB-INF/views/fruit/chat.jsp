<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
    	<title>새콤달콤상점 - 챗봇</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chat.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chat-index.css' />">
	</head>
	<body>
	
	<c:import url="/WEB-INF/views/layout/top.jsp" />
    <div id="wrap">
        <!--채팅 섹션-->
        <div class="body">
            <article class="main">
                <!--채팅 종류-->
                <div class="chat-menu-bar">
                    <div class="main-items">
                        <nav>
                            <a class="chat-menu" title="홈으로" href="<c:url value='/' />"><i class="fa fa-home"></i></a>
                            <a class="chat-menu" title="전체 상품페이지로" href="<c:url value='/fruit/fruitAllList' />"><i class="fa fa-shopping-cart"></i></a>
                        </nav>
                    </div>
                    <div class="etc-items">
                        <a class="chat-menu" title="로그아웃"><i class="fa fa-sign-out"></i></a>
                    </div>
                </div>
                <div class="chat-list-area">
                    <nav>
                        <div class="nickname-area">
                            <div class="profile-img">
                                <img src="/image/홍길동.png" />
                            </div>
                            <div>홍길동</div>
                        </div>
                        <div class="none-message">
                            <label>
                                안읽은 메세지만 보기
                                <input type="checkbox" value="yes" id="not-confirm-message" onchange="ischecked()">
                            </label> 
                        </div>
                        <div>
                        <ul class="my-chat-list">
                            <li class="chat-list">
                                <a class="selected" href="#">
                                    <div class="profile-img">
                                        <img src="/image/새콤달콤.png" />
                                    </div>
                                    <div class="chat-information">
                                        <div id="chat-title">
                                            <span class="username">새콤달콤 상점</span>
                                            <span class="chat-time">오전 08:32</span>
                                            <span></span>
                                        </div>
                                        <span class="chat-preview">홍길동님, 반갑습니다! 도와드릴게...</span>
                                    </div>
                                </a>
                            </li>
                            <li class="chat-list">
                                <a href="#">
                                    <div class="profile-img">
                                        <img src="/image/인간2.png" />
                                    </div>
                                    <div class="chat-information">
                                        <div id="chat-title">
                                            <span class="username">맛있는 바나나</span>
                                            <span class="chat-time">오후 07:54</span>
                                            <span class="not-read"><i class="fa fa-exclamation-circle"></i></span>
                                        </div>
                                        <span class="chat-preview">반품은 어려울 것 같습니다. 불편...</span>
                                    </div>
                                </a>
                            </li>
                            <li class="chat-list">
                                <a href="#">
                                    <div class="profile-img">
                                        <img src="/image/토마토.png" />
                                    </div>
                                    <div class="chat-information">
                                        <div id="chat-title">
                                            <span class="username">멋쟁이 토마토</span>
                                            <span class="chat-time">오후 06:28</span>
                                            <span class="not-read"><i class="fa fa-exclamation-circle"></i></span>
                                        </div>
                                        <span class="chat-preview">주문하신 상품이 오늘 배송 예정...</span>
                                    </div>
                                </a>
                            </li>
                            <li class="chat-list">
                                <a href="#">
                                    <div class="profile-img">
                                        <img src="/image/딸기프로필.png" />
                                    </div>
                                    <div class="chat-information">
                                        <div id="chat-title">
                                            <span class="username">유명한 딸기</span>
                                            <span class="chat-time">오전 03:42</span>
                                        </div>
                                        <span class="chat-preview">죄송합니다. 주문하신 상품이 매...</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <section class="chat-area">
                    <div class="chat-room">
                        <!--프로필-->
                        <nav>
                            <div class="profile">
                                <div class="profile-img">
                                    <img src="/image/새콤달콤.png" />   
                                </div>
                                <span class="nickname-area">새콤달콤 상점</span> 
                                <div>
                                    <button id="more-btn" href="#"><i id="more" class="fa fa-ellipsis-v"></i></button>
                                    <div id="more-dropdown" class="hidden">
                                        <div class="dropdown-item"><a href="#">차단하기</a></div>
                                        <div class="dropdown-item"><a href="#">알림 끄기</a></div>
                                        <div class="dropdown-item"><a href="#">채팅방 나가기</a></div>
                                    </div>
                                </div>
                            </div>
                            <!--메세지(스크롤링으로 볼 수 있게 함)-->
                            <div class="message-area">
                                <div class="message-time">
                                    2022년 11월 16일
                                </div>
                                <div class="recive-msg-box">
                                    <span class="profile-img"><img src="/image/새콤달콤.png"/></span>
                                    <div class="recive-msg">
                                        <span>
                                            홍길동님 반갑습니다!<br>
                                            질문할 게 있다면 언제든 질문해주세요!
                                        </span>
                                    </div>
                                    <div class="msg-time">오후 05:37</div>
                                </div>
                                <div class="send-msg-box">
                                    <div class="msg-time">오후 05:38</div>
                                    <div class="send-msg">
                                        <span>
                                            상품 배송은 며칠 정도 걸리나요?
                                        </span>
                                    </div>
                                    <span class="profile-img"><img src="/image/홍길동.png"/></span>
                                </div>
                                <div class="recive-msg-box">
                                    <span class="profile-img"><img src="/image/새콤달콤.png"/></span>
                                    <div class="recive-msg">
                                        <span>
                                            배송은 상황에 따라 1~3일정도 소요됩니다.
                                        </span>
                                    </div>
                                    <div class="msg-time">오후 05:37</div>
                                </div>
                                <div class="message-time">
                                    2022년 11월 17일
                                </div>
                                <div class="send-msg-box">
                                    <div class="msg-time">오전 09:53</div>
                                    <div class="send-msg">
                                        <span>
                                            아이디를 잃어버렸는데 어떻게 찾으면 될까요?
                                        </span>
                                    </div>
                                    <span class="profile-img"><img src="/image/홍길동.png"/></span>
                                </div>
                                <div class="recive-msg-box">
                                    <span class="profile-img"><img src="/image/새콤달콤.png"/></span>
                                    <div class="recive-msg">
                                        <span>
                                            아이디는 로그인 페이지에 있는 아이디 찾기 버튼을 이용해 주시기 바랍니다.<br>
                                            아이디를 찾을 시에는 회원가입시 인증받았던 이메일 주소나 본인 명의의 핸드폰 번호가 필요합니다.
                                        </span>
                                    </div>
                                    <div class="msg-time">오전 11:20</div>
                                </div>
                            </div>
                            <div>
                                <div class="question-area">
                                    <textarea type="textarea"id="send-message" cols="90" rows="5" onkeyup="buttonChange()"></textarea>
                                    <button type="submit" id="question-button" onclick="question()" disabled>질문하기</button>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <!--질문 선택-->
                </section>
            </article>
        </div>
		<script src="<c:url value='/js/chat.js' />"></script>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>
	</body>
</html>