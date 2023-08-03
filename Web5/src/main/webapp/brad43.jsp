<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int b = (Integer)application.getAttribute("a");
//當我們存儲變數a到應用程式範圍（application scope）時，實際上是將a這個變數視為一個Object型別來存儲的。

	b++;
	application.setAttribute("a", b);
	
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		a=${a }
		
		
	</body>
</html>
