<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1 style="background-color:Yellow">Hello, World</h1>
		<hr />
		<%
			out.println("Hello, World2");
		//%標籤 需要後端運作&執行時使用 
		//out隱含物件不用run
		%>
		<hr />
		<%
			int lottery = (int)(Math.random()*49+1);
			out.println(lottery);
		%>
		<hr />
		<%
			out.println(lottery); //跟原本的lottery皆屬於相同範圍內的
		%>
		<hr /> 
		<%=lottery %> <!-- 呈現變數%=就可以了 -->
	</body>
</html>