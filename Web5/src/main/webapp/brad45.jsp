<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.apis.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="score">${BradUtils.createScore() }</c:set> <!-- 預設是page -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Score:${score }<hr />
		<c:if test="${score >= 60 }">Pass</c:if> <!-- 沒有else這種情境 -->
		<c:if test="${score < 60 }">Down</c:if>
		<hr />
		<c:if test="${score >= 90 }">A</c:if> 
		<c:if test="${score >= 80 }">B</c:if> <!-- 不適合 因為score also include >=90 -->
		<c:if test="${score >= 70 }">C</c:if>
		<c:if test="${score >= 60 }">D</c:if>
		<c:if test="${score < 60}">E</c:if>
		<hr />	
		<c:choose>
			<c:when test="${score>=90 }">A</c:when>
			<c:when test="${score>=80 }">B</c:when>
			<c:when test="${score>=70 }">C</c:when>
			<c:when test="${score>=60 }">D</c:when>
			<c:otherwise>E</c:otherwise>
		</c:choose>
		<hr />	
		<c:choose>
			<c:when test="${score>=90 }">A</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${score>=80 }">B</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${score>=70 }">C</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${score>=60 }">D</c:when>
									<c:otherwise>
									E
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
	</body>
</html>
