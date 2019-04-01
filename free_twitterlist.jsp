<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	if(username != null) {
		session.setAttribute("user", username);
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화인을 위한 게시판</title>
</head>
<body>
<jsp:include page="free_main.jsp"/>
<div align=center>
<HR>
<form action="http://localhost:8080/yejin_free/free_tweetServlet" method="POST">
	<input type="text" name="msg">
	<input type="submit" value="익명으로 글남기기">
</form>
<HR>
<div align="left">
<UL>

 <core:forEach items="${applicationScope.msgslist}" var="list" varStatus="index">
        <p align="left">익명의 말:${list}</p>
        
          
</core:forEach>


</UL>
</div>
</div>
</body>
</html>