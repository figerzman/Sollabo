<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 h2{
 text-align:center;
 }

  table,  td {
        width: 450px;
  		height: 150px;
  		color: black;
 }
 
 .AdMem , .AdOrd , .AdPro{
 box-shadow: rgb(0 0 0 / 60%) 0px 2px 10px;
 width: 150px;
 height: 150px;
 }
 
 .AdQA, .AdNot, .AdLogout{
 box-shadow: rgb(0 0 0 / 60%) 0px 2px 10px;
 width: 150px;
 height: 150px;
 }
 
 table{
 	padding-top: 400px;
 	
 }
 
 .first , .second , .third {
 box-shadow: rgb(0 0 0 / 60%) 0px 2px 10px;
 width: 150px;
 
 }
 
 .first{
 height: 30px;
 }
 
 .second{
 height: 30px;
 }
 
 .third{
 height: 30px;
 }
 

</style>
</head>
<body>

<c:import url="../default/header.jsp"/>	

<h2>Admin page</h2>
<table align="center" >
	<!--관리자 페이지는 class 전부 Ad(admin)을 붙였음  -->
	<!-- 이미지경로 전부 바꿀것  -->
	<!-- 이미지 경로 수정완료했습니다 -->
	<thead>
		<tr>
		      <th class="AdMem"><button class="btn1" type="button"><img src="${pageContext.request.contextPath }/resources/image/certificate.png" width="150" height="150"></button></th>
			  <th class="AdOrd"><button class="btn2" type="button"><img src="${pageContext.request.contextPath }/resources/image/clipboard.png" width="150" height="150"></button></th>
			  <th class="AdPro"><button class="btn3" type="button" onclick="location.href='adminregister' "><img src="${pageContext.request.contextPath }/resources/image/fashion.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">회원관리</th>
			  <th class="second">주문관리</th>
			  <th class="third">제품관리</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		      <th class="AdQA"><button class="btn4" type="button"><img src="${pageContext.request.contextPath }/resources/image/question.png" width="150" height="150"></button></th>
			  <th class="AdNot"><button class="btn5" type="button"><img src="${pageContext.request.contextPath }/resources/image/notice.png" width="150" height="150"></button></th>
			  <th class="AdLogout"><button class="btn6" type="button" onclick="location.href='/sollabo' "><img src="${pageContext.request.contextPath }/resources/image/power.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">Q&A</th>
			  <th class="second">공지사항</th>
			  <th class="third">관리자 로그아웃</th>
		</tr>
	</tbody>
</table>

<c:import url="../default/footer.jsp"/>   


</body>
</html>