<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int a = 0;
	application.setAttribute("a", a); //a是value對應int a = 0;
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		a=${a } <!-- a=key對應"a" -->
		
		
	</body>
</html>
