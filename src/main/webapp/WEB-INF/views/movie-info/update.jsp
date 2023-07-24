<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/movie-info/update" method="POST">
	<input type="hidden" name="miNum" value="${movieInfo.miNum}">
	<input type="text" name="miTitle" placeholder="제목" value="${movieInfo.miTitle}"><br>
	<input type="text" name="miDesc" placeholder="설명" value="${movieInfo.miDesc}"><br>
	<input type="text" name="miGenre" placeholder="장르" value="${movieInfo.miGenre}"><br>
	<input type="date" name="miCredat" placeholder="상영일" ><br>
	<input type="text" name="miCnt" placeholder="관객수" value="${movieInfo.miCnt}"><br>
	<button>수정</button>

</form>

</body>
</html>