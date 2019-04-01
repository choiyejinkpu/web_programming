<%@ tag body-content="empty" language="java" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/main.css">
</head>
<body>
<form action="http://localhost:8080/yejin_free/freeWishList" method="POST">
<div class="image123">
    <div class="imageContainer" style="display: inline-block">
        <img src="https://upload.wikimedia.org/wikipedia/ko/thumb/6/6b/%EC%98%81%ED%99%94_%EC%8B%A0%EC%84%B8%EA%B3%84_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg/250px-%EC%98%81%ED%99%94_%EC%8B%A0%EC%84%B8%EA%B3%84_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg" />
        <br>
        <input type="checkbox" name="movie" value="신세계">신세계
         <table align="center" border="1" cellspacing="0">
        <tr>
            <td>감독</td>
            <td>박훈정</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2013년 2월 21일(대한민국)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>8.9</td>
        </tr>
        </table>
       
    </div>
    <div class="imageContainer" style="display: inline-block">
        <img  class="middle-img" src="https://upload.wikimedia.org/wikipedia/ko/e/e8/%EC%98%81%ED%99%94_%EC%95%94%EC%82%B4_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg" />
       <br>
        <input type="checkbox" name="movie" value="암살">암살
         <table align="center" border="1" cellspacing="0">
         <tr>
            <td>감독</td>
            <td>최동훈</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2015년 7월 22일(대한민국)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>9.1</td>
        </tr>
        </table>
    </div>
    <div class="imageContainer" style="display: inline-block">
        <img src="https://upload.wikimedia.org/wikipedia/ko/6/6a/%EA%B4%B4%EB%AC%BC.jpg" />
        <br>
         <input type="checkbox" name="movie" value="괴물">괴물
         <br>
          <table align="center" border="1" cellspacing="0">
         <tr>
            <td>감독</td>
            <td>봉준호</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2006년 7월 27일(대한민국)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>8.62</td>
        </tr>
        </table>
    </div>
</div >
<br>

<div class="image123">
    <div class="imageContainer" style="display: inline-block">
        <img src="https://s3.namuwikiusercontent.com/s/f5d18f6484bdbd75793f3b3755202dce0d65ece5aece2c16518f8bc3b535a2768a486b3e16e5ad3ca28c43670fbb47e6888a1cc2a9fd7b92bc03a37d61cb2cc40411d806c95b2779a695e8225930032735f148640bd77e4d631a96616aa660a8" />
        <br>
        <input type="checkbox" name="movie" value="신비한 동물사전">신비한 동물사전
         <table align="center" border="1" cellspacing="0">
        <tr>
            <td>감독</td>
            <td>데이빗 예이츠</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2018년 11월 14일(미국 외)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>7.73</td>
        </tr>
        </table>
       
    </div>
    <div class="imageContainer" style="display: inline-block">
        <img  class="middle-img" src="http://img.movist.com/?img=/x00/05/05/99_p1.jpg" />
       <br>
        <input type="checkbox" name="movie" value="보헤미안랩소디">보헤미안 랩소디
         <table align="center" border="1" cellspacing="0">
         <tr>
            <td>감독</td>
            <td>브라이언 싱어</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2018년 10월 31일(미국)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>9.51</td>
        </tr>
        </table>
    </div>
    <div class="imageContainer" style="display: inline-block">
        <img src="http://img.movist.com/?img=/x00/05/01/91_p1.jpg" />
        <br>
         <input type="checkbox" name="movie" value="완벽한타인">완벽한 타인
         <br>
          <table align="center" border="1" cellspacing="0">
         <tr>
            <td>감독</td>
            <td>이재규</td>
        </tr>
        <tr>
            <td>개봉일</td>
            <td>2018년 10월 31일(한국)</td>
        </tr>
        <tr>
            <td>평점</td>
            <td>9.13</td>
        </tr>
        </table>
    </div>
</div >



<hr>


<div class="button">

        <input type="submit" value="보고싶어요">
</div>
</form>
<br>
</body>
</html>