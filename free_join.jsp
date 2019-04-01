<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출발 비디오 여행 가입 홈페이지</title>
</head>
<body>
<jsp:include page="free_main.jsp"/>
<hr>

<h2 align=center> 정보를 입력해주세용 !! 💫</h2>
<br>
<div align=center>
    <form action="http://localhost:8080/yejin_free/freeMemJoinServlet" method="POST">
<table id="listtable" >
	<tr>
       <td align=center><b>아이디</b></td>
       <td> <input type="text" name="id">
       </td>
    </tr>
    <tr>
       <td align=center><b>비밀번호</b></td>
       <td> <input type="password" name="passwd">
       </td>
    </tr>
   
    <tr>
       <td align=center><b>이름</b></td>
       <td> <input type="text" name="username" autofocus placeholder="공백없이 입력하세요">
       </td>
    </tr>
     <tr>
       <td align=center><b>전화번호</b></td>
       <td><input type="text" name="tel" placeholder="010-****-****"></td>
    </tr>
    <tr>
       <td align=center><b>이메일 </b> </td> 
       <td><input type="text" name="email" autofocus placeholder="***@***.***"></td>
    </tr>
     <tr>
       <td align=center><b>성별 </b></td>
       	<td>
       	<select name="sex">
			<option selected>남</option>
			<option>여</option>
		</select>
        </td>
    </tr>
     <tr>
       <td align=center><b>주소 </b> </td> 
       <td><input type="text" name="home" ></td>
    </tr>
    <tr>
    <td colspan="2" align=center >
	<input type="submit" value="확인">
	<input type="reset" value="취소">
    </td>
    </tr>
    
</table>
</form>
</div>

</body>
</html>