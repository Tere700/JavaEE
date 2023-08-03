<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String[] var1 ={"Brad", "OK", "III"}; //pageContext小的 會取用小的
	pageContext.setAttribute("var1", var1);
	
	String[] var2 ={"Brad2", "OK2", "III2"};//request第二小的
	request.setAttribute("var1", var2);//"賦予屬性名稱"
	
	String[] var3 ={"Brad3", "OK3", "III3"};//request第三小的
	session.setAttribute("var1", var3);
	
	String[] var4 ={"Brad4", "OK4", "III4"};//request第四小的
	application.setAttribute("var1", var4); //key&value
	
	LinkedList<String> list = new LinkedList<>();
	list.add("Brad5");list.add("OK5");list.add("III5");
	pageContext.setAttribute("list",list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("k1","v1");
	map.put("k2","v2");
	map.put("k3","v3");
	map.put("k4","v4");
	pageContext.setAttribute("map", map);
	
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		var1: ${var1[0] }<br />
		var1: ${pageScope.var1[0] }<br />
		var1: ${requestScope.var1[0] }<br />
		var1: ${sessionScope.var1[0] }<br />
		var1: ${applicationScope.var1[0] }<br />
		var2: ${var2[1] }<br />
		list.get(0): ${list[0] }<br />
		list.get(i): ${list[param.i] }<br />
		map.get("k1"):${map["k1"] }<br />
		map.get("k2"):${map.k2 }<br />
		${10+3 }<br />
		${param.x + param.y }<br />
		${param.x == param.y }<br />
		
	</body>
</html>
