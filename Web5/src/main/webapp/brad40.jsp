<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String method = request.getMethod();
			ServletRequest sr = pageContext.getRequest();
			if(request == sr){ //比是否會相同物件
				out.print("OK");
			}
			
			if (sr instanceof HttpServletRequest){
				out.print("I am");
			}
		
		
		%>
		
	</body>
</html>
