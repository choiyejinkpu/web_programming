
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<jsp:include page="free_main.jsp"/>

<H2 align="center">어서오세용 💫 </H2>
    <form action="http://localhost:8080/yejin_free/freeLoginServlet" method=POST>
        <table align="center">
            <tr>
            
                <td>아이디</td>
                <td><input type="text" name=id></td>
                <td rowspan=2><input type=submit value="login"></td>
            </tr>
            <tr>
                <td>패스워드</td>
                <td><input type="password" name=passwd 
	></td>
            </tr>
            <tr>
                <td><b> <core:if
                            test="${!empty requestScope.login_failure_message }"><font color="RED">${requestScope.login_failure_message }</font></core:if>
                </b></td>
                

                
            </tr>
        </table>
    </form>
    <div align="center">
                     <input type="button" 
                onclick="location.href = 'free_join.jsp'" value="회원가입">
               </div>
</body>
</html>