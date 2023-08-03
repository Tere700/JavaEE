<%@page import="tw.brad.apis.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	String realname = request.getParameter("realname");
	String birthday = request.getParameter("birthday");

	Member member1 = new Member(4, "tony", "Tony", "1999-08-09");
	request.setAttribute("member1", member1);
%>
<jsp:useBean id="member" class="tw.brad.apis.Member"></jsp:useBean>
<jsp:setProperty property="id" name="member" value="3" />
<jsp:setProperty property="account" name="member" value=<%=account %> />
<jsp:setProperty property="realname" name="member" value=<%=realname %> />
<jsp:setProperty property="birthday" name="member" value=<%=birthday %> />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member:
		<jsp:getProperty property="id" name="member"/>:
		<jsp:getProperty property="account" name="member"/>:
		<jsp:getProperty property="realname" name="member"/>:
		<jsp:getProperty property="birthday" name="member"/>
		<hr />
		Member: 
		${member.id} <br/>
		${member.account} <br/>
		${member.realname} <br/>
		${member.birthday}
		<hr />
		Member1: ${member1.id} : ${member1.account} : ${member1.realname} : ${member1.birthday}
	</body>
</html>
