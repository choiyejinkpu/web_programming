<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie list</title>
<link rel="stylesheet" href="resources/menu.css">
</head>
<body>
<jsp:include page="free_main.jsp"/>
<hr>
<mytag:free_movietag/>
</body>
</html>