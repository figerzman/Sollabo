<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test입니다</h1>
<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.memId }</td>
				</tr>
</c:forEach>
</body>
</html>