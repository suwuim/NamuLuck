<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js'></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- 웹소켓 -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
  <style>
	body, html {
	    height: 100%;
	    margin: 0;
	}
	
	body {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    color: #454411;
	}
	
	header {
	    position: fixed;
	    top: 0;
	    width: 100%;
	    height: 100px;
	    background-color: #fff;
	    border-bottom: 1px solid #D7DCA2;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    z-index: 1000; /* 헤더를 다른 요소들 위에 두기 위한 z-index 설정 */
	}
	
	#headerArea {
	    width: 1000px;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	}
	
	#headerLeft {
	    display: flex;
	    align-items: center;
	    margin-right: 4px;
	}
	
	#logo {
	    height: 40px;
	    
	}
	
	nav ul {
	    list-style: none;
	    display: flex;
	}
	
	nav li {
	    margin-right: 20px;
	}
	
	nav a {
	    text-decoration: none;
	    color: #333;
	    font-weight: bold;
	    font-size: 16px;
	    display: block;
	}
	
	nav a:hover {
	    text-decoration: none;
	}
	
	#loginbtn {
	    display: inline-block;
	    padding: 10px 20px;
	    font-size: 16px;
	    font-weight: bold;
	    text-align: center;
	    text-decoration: none;
	    cursor: pointer;
	    border: 1px solid #D7DCA2;
	    border-radius: 50px;
	    background-color: white;
	}
	
	.content {
	    width: 100%;
	    height: calc(100vh - 100px); /* 화면 높이에서 헤더 높이를 뺀 값으로 설정 */
	    background-image: url('../../assets/loginbg.png');
	    background-size: cover;
	    background-position: center;
	    background-repeat: no-repeat;
	    color: #ffffff;
	    text-align: center;
	    padding: 20px;
	}
	
	#login {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    font-size: 24px;
	    font-weight: bold;
	}
  </style>
</head>
	<c:if test="${ not empty alertMsg }">
      <script>
         alert("${alertMsg}");
      </script>
      <c:remove var="alertMsg" scope="session"/>
    </c:if>
    <body>
    <header>
        <div id="headerArea">
        <div id="headerLeft">
        <img src="resources/images/logo.png" alt="로고" id="logo" onclick="location.href='/namuluck'">
        <nav>
            <ul id = "nav">
              <li><a href="growing.gr">키우기</a></li>
              <li><a href="quiz.qz">퀴즈</a></li>
              <li><a href="shopping.sh">쇼핑</a></li>
              <li><a href="myPage.me">마이페이지</a></li>
            </ul>
          </nav>
        </div>
	        <div id="headerRight">
	            <c:choose>
				    <c:when test="${empty sessionScope.loginMember}">
				        <button id="loginbtn" onclick="location.href='loginForm.me'">로그인</button>
				    </c:when>
				    <c:otherwise>
				        <button id="loginbtn" onclick="location.href='logout.me'">로그아웃</button>
				    </c:otherwise>
				</c:choose>
	        </div>
        </div>
    </header>
    
    </body>
</html>