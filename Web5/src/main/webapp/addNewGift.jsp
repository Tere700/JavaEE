<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object member = session.getAttribute("member");
	if(member == null){
		return;
	}
	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String feature = request.getParameter("feature");
	String county = request.getParameter("county");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii","root","root");
	String sql = "INSERT INTO gift (name, feature, county) VALUES (?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);//防止被攻擊
	pstmt.setString(1, name);
	pstmt.setString(2, feature);
	pstmt.setString(3, county);
	
	int n = pstmt.executeUpdate();
	out.print(n>0?"OK":"XX");
%>