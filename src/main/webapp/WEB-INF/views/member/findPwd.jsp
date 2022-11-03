<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPwd</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 전체 틀 */
.memberFindPwd {
	/* border: 1px solid black; */
	margin: 100px auto;
	padding: 20px;
	width: 770px;
	height: 550px;
	position: relative;
}

/* 전체 글꼴 */
body{
    font-size: 0.9em;
    font-family: 'Roboto', sans-serif;
}

/* 제목(비밀번호 찾기) */
.titleArea {
	margin: 90px 0 30px;
	text-align: center;
}

fieldset {
	margin: auto;
	border: none;
    vertical-align: top;
    display: block;
    padding: 20px;
    height: 300px;
    width: 390px;
}

.findPwd .check {
	margin-bottom: 30px;
    margin-left: -30px;
    color: #353535;
    text-align: center;
}

.findPwd p {
    margin: 7px 0 0;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.findPwd strong {
    display: inline-block;
    margin: 0 0 5px;
    padding: 0 4px 0 4px;
    width: 135px;
    font-weight: normal;
}

.findPwd #id, #name, #email {
    width: 230px;
}

.findPwd input[type=text] {
    height: 28px;
    line-height: 28px;
}

input[type=text] {
    height: 18px;
    line-height: 20px;
    padding: 2px 4px;
    border: 1px solid #ddd;
    color: #333;
    font-size: 12px;
}

.findPwd .button { 
	margin:30px 0 0; 
	text-align:center; 
}

.findPwd .button input {
	background: url("http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_submit.gif");
	background-repeat: no-repeat;
	width: 100px;
	height: 40px;
	border: 0;
}


label {
    cursor: default;
}

</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="memberFindPwd">
	    <div class="findPwd">
	    	<div class="titleArea">
				<h1>비밀번호 찾기</h1>
			</div>
			<fieldset>
	            <p class="check">
<!-- 	            	<input id="check_method0" name="check_method" fw-filter="" fw-label="찾는방법" fw-msg="" value="1" type="radio" style="display: none;"> -->
<!-- 	            	<label for="check_method0" style="display: none;"> -->
<!-- 	            		<span id="ssn_lable" style="display: none;"></span> -->
<!-- 	            	</label> -->
	            	<input id="check_method1" name="check_method" fw-label="찾는방법" value="2" type="radio" checked="checked">
	            	<label for="check_method1">이메일</label>
	            </p>
	            <form action="${pageContext.request.contextPath }/member/findPwd" method="post">
		            <p id="id_view" class="id" style="">
		            	<strong id="id_lable">아이디</strong> 
		            	<input id="id" name="memId" class="lostInput" placeholder="" value="" type="text">
		            </p>
		            <p id="name_view" class="name" style="">
		            	<strong id="name_lable">이름</strong> 
		            	<input id="name" name="memName" class="lostInput" placeholder="" value="" type="text">
		            </p>
		            <p id="email_view" class="email" style="">
		            	<strong>이메일로 찾기</strong> 
		            	<input id="email" name="memEmail" class="lostInput" placeholder="" value="" type="text">
		            </p>
		            
		            <p class="button">
		                <input type="submit" value="">
		            </p>
	            </form>
        </fieldset>
	        
	    </div>
	</div>
	<c:import url="../default/footer.jsp"/>	
</body>
</html>