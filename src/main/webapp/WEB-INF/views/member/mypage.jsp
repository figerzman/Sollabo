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
 
 .profile , .pen , .exit{
 box-shadow: rgb(0 0 0 / 60%) 0px 2px 10px;
 width: 150px;
 height: 150px;
 }
 
 .magnifying, .cart, .support{
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
<h2>My Page</h2>
<table align="center" >
	<thead>
		<tr>
		      <th class="profile"><button class="btn1" type="button"><img src="profile.png" width="150" height="150"></button></th>
			  <th class="pen"><button type="button"><img src="pen.png" width="150" height="150"></button></th>
			  <th class="exit"><button type="button"><img src="exit.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">회원정보</th>
			  <th class="second">정보수정</th>
			  <th class="third">회원탈퇴</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		      <th class="magnifying"><button type="button"><img src="magnifying.png" width="150" height="150"></button></th>
			  <th class="cart"><button type="button"><img src="cart.png" width="150" height="150"></button></th>
			  <th class="support"><button type="button"><img src="support.png" width="150" height="150"></button></th>
		</tr>
		<tr>
			  <th class="first">주문조회</th>
			  <th class="second">장바구니</th>
			  <th class="third">고객센터</th>
		</tr>
	</tbody>
</table>
</body>
</html>