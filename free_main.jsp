<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출발 비디오 여행 메인화면 입니다.</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Gugi|Nanum+Myeongjo|Song+Myung');
@import url('https://fonts.googleapis.com/css?family=Gugi|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Song+Myung|Stylish&subset=korean');
@import url('https://fonts.googleapis.com/css?family=Gugi|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Noto+Serif+KR:500|Song+Myung|Stylish&subset=korean');
@import url('https://fonts.googleapis.com/css?family=Gugi|Nanum+Gothic|Nanum+Gothic+Coding|Nanum+Myeongjo|Song+Myung&subset=korean');
h3{
margin: 20px 10px 40px 10px;
	font-size:60px;
	text-shadow:3px 3px 8px gray;
	text-align:center;
	font-family: 'Gugi', cursive;
	
}

</style>

  <link rel="stylesheet" href="resources/menu.css">
 
  
</head>
<body class="body">

<h3>🎬 출발 비디오 여행 🎬</h3>
<p align="center"> <core:if
 test="${!empty sessionScope.login_session.username }"><font color="BLACK">${sessionScope.login_session.username }님 환영합니다 ! 🎥  </font>
</core:if></p >
<div class="menubar">
<ul>
 <li><a href="http://localhost:8080/yejin_free/free_realmain.jsp"> 메인으로 </a></li>
 <li><a href="http://localhost:8080/yejin_free/free_loginmain.jsp">로그인 하러가기</a></li>
 <li><a href="http://localhost:8080/yejin_free/free_koreamovie.jsp" id="current">영화 목록</a>
	<ul>
     <li><a href="#">액션</a></li>
     <li><a href="#">SF</a></li>
     <li><a href="#">코미디</a></li>
     <li><a href="#">멜로</a></li>
    </ul>
 </li>

 <li><a href="#">내 정보</a>
 	<ul>
     <li><a href="http://localhost:8080/yejin_free/free_Myinformation.jsp">내정보</a></li>
     <li><a href="http://localhost:8080/yejin_free/free_wishlist.jsp">보고싶은 영화</a></li>
    </ul>
</li>

 <li><a href="http://localhost:8080/yejin_free/free_twitterlist.jsp">흔적 남기기</a></li>
 <li><a href="http://localhost:8080/yejin_free/free_recommovie.jsp">추천영화</a></li>
 <li><a href="#">커뮤니티</a>
 	<ul>
     <li><a href="http://localhost:8080/yejin_free/freeMemJoinServlet">회원목록</a></li>
    </ul>
 </li>

</ul>
</div>
</body>

</html>