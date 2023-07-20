<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>난 강의 리스트</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>설명</th>
		</tr>
	<%
	List<Map<String,String>> classInfoList=(List<Map<String,String>>)request.getAttribute("classInfoList");
	%>
	<tr>
		<th><%=classInfo.get("ciNum") %></th>
		<
	</tr>
	
	</table>
</body>
</html>