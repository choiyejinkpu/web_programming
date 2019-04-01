<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/list.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체 회원정보 조회결과</title>
</head>
<body>
<jsp:include page="free_main.jsp"/>
<hr>
<h2 align="center"> 🌐 회원 목록 🌐  </h2>
    <table id="listtable" align="center" border="1" cellspacing="0">
        <tr>
            <td><b>이름</b></td>
            <td><b>아이디</b></td>
            <td><b>성별</b></td>
        </tr>
        <core:forEach items="${requestScope.memlist }" var="list" varStatus="index">
            <tr>
                <td>${list.username }</td>
                <td>${list.id }</td>
                <td>${list.sex }</td>
            </tr>
        </core:forEach>
    </table>
    

</body>
</html>
