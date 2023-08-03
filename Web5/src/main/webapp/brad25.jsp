<%@page import="tw.brad.apis.Bikw"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	Bikw b1 = new Bikw ("brad");
 	request.setAttribute("bikw", b1);
 	b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<%@ include file = "brad26.jsp" %>
		<hr />
		<jsp:include page="brad27.jsp">
		<jsp:param value="100" name="x"/>
		<jsp:param value="33" name="y"/>
		</jsp:include>
		<!-- 標籤必要屬性 -->
		
	</body>
</html>