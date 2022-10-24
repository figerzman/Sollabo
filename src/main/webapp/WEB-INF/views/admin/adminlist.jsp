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
 
 .AdMem , .AdOrd , .AdPar{
 box-shadow: rgb(0 0 0 / 60%) 0px 2px 10px;
 width: 150px;
 height: 150px;
 }
 
 .AdCom, .AdCorr, .AdLogout{
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
<h2>Admin page</h2>
<table align="center" >
	<!--관리자 페이지는 class 전부 Ad(admin)을 붙였음  -->
	<thead>
		<tr>
		      <th class="AdMem"><button class="btn1" type="button"><img src="certificate.png" width="150" height="150"></button></th>
			  <th class="AdOrd"><button class="btn2" type="button"><img src="clipboard.png" width="150" height="150"></button></th>
			  <th class="AdPar"><button class="btn3" type="button"><img src="box.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">회원관리</th>
			  <th class="second">주문관리</th>
			  <th class="third">배송관리</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		      <th class="AdCom"><button class="btn4" type="button"><img src="comment.png" width="150" height="150"></button></th>
			  <th class="AdCorr"><button class="btn5" type="button"><img src="fashion.png" width="150" height="150"></button></th>
			  <th class="AdLogout"><button class="btn6" type="button"><img src="power.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">댓글목록</th>
			  <th class="second">제품수정</th>
			  <th class="third">관리자 로그아웃</th>
		</tr>
	</tbody>
</table>
</body>
</html>