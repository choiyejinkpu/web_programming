<%@page import="kpu.free.domain.freeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 등록 성공</title>
</head>

<body>
<jsp:include page="free_main.jsp"/>
<hr>
<br>
    <table align=center>
        <tr>
            <td>아이디</td>
            <td>${requestScope.member.id }</td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><%=((freeVO) (request.getAttribute("member")))
                    .getPasswd().substring(0, 4)%> <core:forEach begin="4"
                    end='<%=((freeVO) (request.getAttribute("member")))
                        .getPasswd().length()%>'
                    step="1">*</core:forEach></td>
        </tr>
        <tr>
            <td>이름</td>
            <td>${requestScope.member.username }</td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td>${requestScope.member.tel }</td>
        </tr>
        <tr>
            <td>성별</td>
            <td>${requestScope.member.sex }</td>
        </tr>
        <tr>
            <td>주소</td>
            <td>${requestScope.member.home }</td>
        </tr>
        <tr>
            <td>이메일</td>
            <td>${requestScope.member.email }</td>
        </tr>
        <tr>
 
        </tr>
    </table>
    
    <div align="center">
                     <input type="button"
                onclick="location.href = 'free_loginmain.jsp'" value="로그인하러가기">
 </div>
</body>
</html>
