<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/movie-info/insert" method="POST">
<input type="text" name="miTitle" placeholder="제목"><br>
<input type="text" name="miDesc" placeholder="설명"><br>
<input type="text" name="miGenre" placeholder="장르"><br>
<input type="date" name="miCredat" placeholder="상영일"><br>
<input type="text" name="miCnt" placeholder="관객수"><br>
<button>등록</button>
</form>
</body>
</html>