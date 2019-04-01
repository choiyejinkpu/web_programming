<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>

<jsp:include page="free_main.jsp"/>
<br>
<table align="center">
        <tr>
            <td>이름 :</td>
            <td>${sessionScope.login_session.username}</td>
 
        </tr>
        <tr>
            <td colspan=2 align="center">님 <b>환영합니다.</b>
 
            </td>
        </tr>
        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td colspan=2></td>
        </tr>
        <tr>
            <td colspan=2><input type="button"
                onclick="location.href = 'freeLogoutServlet'" value="로그아웃"></td>
        </tr>
    </table>

</body>
</html>