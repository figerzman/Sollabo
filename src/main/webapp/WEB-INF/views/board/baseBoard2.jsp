
<!-- board/boardAllList.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/boardAllList.jsp</title>
<style type="text/css">
	.board_div{
		width: 100%;
		text-align: center;
	}
	.board_div .board_table_div .board_table{
		display: inline-block;
	}
	.board_button_div .board_button{
		float: right;
	}
</style>
</head>
<body>
		<div class="board_div">
			<br>
			<h1 align="center">기본 게시판</h1>
			<br>
			<div class="board_table_div">
				<table class="board_table" border="1" >
					<tr>
						<th width="10%">No</th>
						<th width="15%">ID</th>
						<th width="30%">Subject</th>
						<th width="20%">Date</th>
						<th width="15%">Name</th>
						<th width="10%">Hit</th>
					</tr>	
					<c:forEach begin="1" end="10">	
						<tr>
							<td>1</td>
							<td>test</td>
							<td>공지사항</td>
							<td>2022-10-11</td>
							<td>김**</td>						
							<td>0</td>
						</tr>
					</c:forEach>		
				</table>
				<br>
			</div>
			<div class="board_button_div">
				<button class="board_button" onclick="boardWriter()">글작성</button><br>
			</div>
			<div class="board_count_div">
				<c:forEach begin="1" end="10" var="tests">
					<a href="#">[ ${tests } ]</a>
				</c:forEach>
			</div>
		</div>
</body>
</html>