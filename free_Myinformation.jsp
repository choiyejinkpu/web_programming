<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my information</title>
<link rel="stylesheet" href="resources/myinfo.css">
</head>
<body>
<jsp:include page="free_main.jsp"/>
<hr>
   <body>
 <core:if
 test="${!empty sessionScope.login_session.username }"><font color="BLACK"></font>

   <h2 align="center">제 정보는요! 🤫 </h2>
    <table  align=center>
        <tr>
            <td>아이디</td>
            <td>${sessionScope.login_session.id }</td>
        </tr>
        <tr>
            <td>이름</td>
            <td>${sessionScope.login_session.username }</td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td>${sessionScope.login_session.tel }</td>
        </tr>
        <tr>
            <td>성별</td>
            <td>${sessionScope.login_session.sex }</td>
        </tr>
        <tr>
            <td>주소</td>
            <td>${sessionScope.login_session.home }</td>
        </tr>
        <tr>
            <td>이메일</td>
            <td>${sessionScope.login_session.email}</td>
        </tr>
    </table>
<br>
<br>
<div align=center>
            <input type="button"
                onclick="location.href = 'freeLogoutServlet'" value="로그아웃"> 
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <input type="button"
                onclick="location.href = 'free_removeMember'" value="회원탈퇴">

</div>
</core:if>
</body>
</html>