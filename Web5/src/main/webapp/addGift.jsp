<%@page import="tw.brad.apis.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	Object member = session.getAttribute("member");
	if(member == null){
		response.sendRedirect("login.html");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
		</script>
		<script type="text/javascript">
			function add(){
				$.get("addNewGift.jsp?" +
						"name=" + $('#name').val() + 
						"&feature=" + $('#feature').val() +
						"&county=" + $('#county').val(),
						function(data, status){
							if(status == 'sucess'){
								console.log(data.trim());
								if(data.trim())== 'OK'){
					//trim移除字串起始及結尾處的空白字元
									location.href = "main.jsp";
								}								
							}
				});
			}
		
		</script>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			Name:<input type="text" id="name" /><br />
			Feature:<input type="text" id="feature" /><br />
			County:<input type="text" id="county" /><br />
			<input type="button" value="Add" onclick="add()" />
	</body>
</html>