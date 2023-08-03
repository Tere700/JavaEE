<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.apis.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//pageContext.setAttribute("x", 10);
%>
<c:set var="x" value="10"></c:set> <!-- 預設是page -->
<c:set var="x" value="50" scope="request" ></c:set> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		x=${x } <br />
		x=${requestScope.x } <br />
		<%="Hello,World" %> <br />
		x=<c:out value="Hello,World"></c:out><br />
		i=<c:out value="${param.i }" default="no value" /><br />
		<jsp:useBean id = "member"
 			class="tw.brad.apis.Member" />
 		<jsp:setProperty property="id" name="member" value="3" />
		<jsp:setProperty property="account" name="member" value=  "brad" />
		<jsp:setProperty property="realname" name="member" value= "Brad" />
		<jsp:setProperty property="birthday" name="member" value= "1999-02-02" />
 			
 		${member.id }:${member.account }<br />
 		${member }
		<hr />
		<c:remove var="member" />
		${member }
		<hr />
		<c:set var="brad" value="${BradUtils.createMember() }"></c:set>
		${brad }
	</body>
</html>
