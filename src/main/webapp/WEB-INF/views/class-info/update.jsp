<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/class-info/update" method="POST">
	<input type="hidden" name="ciNum" value="${classInfo.ciNum }">
	<input type="text" name="ciName" placeholder="이름" value="${classInfo.ciName}"><br>
	<input type="text" name="ciDesc" placeholder="설명" value="${classInfo.ciDesc}"><br>
	<button>수정</button>
</form>
</body>
</html>