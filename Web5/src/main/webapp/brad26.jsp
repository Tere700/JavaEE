<%@page import="tw.brad.apis.Bikw"%>
<%
	String x = request.getParameter("x");
	request.getAttribute("bikw");
	Bikw b2 = (Bikw)request.getAttribute("bikw");
%>
I am Brad26
<%= x %><br />
<%= b2 %>