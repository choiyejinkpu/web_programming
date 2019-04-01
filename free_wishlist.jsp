<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wishlist 입니당!</title>
  <link rel="stylesheet" href="resources/main.css">
</head>
<body>
<jsp:include page="free_main.jsp"/>
 <core:if
 test="${!empty sessionScope.login_session.username }">

<hr>
<div class="wishlist">
<p> ${sessionScope.login_session.username } 회원님 !  🖤  </p>
</div>
      <p> 🖤 보고싶은 영화 🖤 </p>
 <core:forEach items="${sessionScope.movielist }" var="list" varStatus="index">
        <li> ${list} </li>   
</core:forEach>

</core:if>
</body>
</html>