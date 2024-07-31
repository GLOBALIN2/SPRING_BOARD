<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.global.vo.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	list.jsp
	<table>
		<tr>
			<td>seq</td>
			<td>title</td>
			<td>createdate</td>
		</tr>
		
		<c:forEach var="boardVO" items="${list}">
		<!-- 여기서 var와 EL 안의 boardVO는 board라고 바꿔 써도 된다(단, 어떻게 쓰든 위아래가 일치해야 한다) -->
		<tr>
			<td>${boardVO.seq}</td>
			<td><a href="/board/read?seq=${boardVO.seq}">${boardVO.title}</a></td>
			<td>${boardVO.createdate}</td>
		</tr>
	
		</c:forEach>
	</table>
</body>
</html>
