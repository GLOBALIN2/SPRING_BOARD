<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.global.vo.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	<%
		List<BoardVO> list = (List)request.getAttribute("list");
		for(BoardVO boardVO : list){
			
	%>
		<tr>
			<td><%=boardVO.getSeq() %></td>
			<td><a href="/board/read?seq=<%=boardVO.getSeq() %>"><%=boardVO.getTitle()%></a></td>
			<td><%=boardVO.getCreatedate() %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>