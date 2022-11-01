<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 전체 틀 */
.memberLogin {
	/* border: 1px solid black; */
	margin: 100px auto;
	padding: 20px;
	width: 770px;
	height: 1100px;
	position: relative;
}

/* 전체 글꼴 */
body{
    font-size: 0.9em;
    font-family: 'Roboto', sans-serif;
}

/* 제목(회원 로그인) */
.titleArea {
	margin: 90px 0 30px;
	text-align: center;
}

.login {
	margin: auto;
	width: 300px;
}

.loginId {
	margin: auto;
    width: 230px;
}
.loginPwd {
	margin: auto;
    width: 230px;
}

.loginId input[type=text] {
    height: 30px;
    line-height: 30px;
}
.loginPwd input[type=password] {
    height: 30px;
    line-height: 30px;
}

input[type=text] {
    height: 18px;
    width: 220px;
    line-height: 20px;
    padding: 2px 8px;
    margin: 2px;
    border: 1px solid #ddd;
    color: #333;
    font-size: 14px;
}
input[type=password] {
    height: 18px;
    width: 220px;
    line-height: 20px;
    padding: 2px 8px;
    margin: 2px;
    border: 1px solid #ddd;
    color: #333;
    font-size: 14px;
}

.login .button {
	height:76px; 
	line-height:76px;
	text-align: center;
}

.login .button input {
	background: url("http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_login.gif");
	background-repeat: no-repeat;
	width: 100px;
	height: 40px;
	border: 0;
}

.utilMenu {
    float: inherit;
    margin: 24px 0 0;
    width: 100%;
    font-size: 0;
    border: none;
}

.utilMenu a:first-child {
    margin-left: 0;
    padding-left: 0;
    border-left: none;
}

.utilMenu a {
    display: inline-block;
    margin-left: 12px;
    padding-left: 12px;
    border-left: 1px solid #e1e1e1;
    font-size: 13px;
    font-weight: lighter;
    color: #222;
}

.utilMenu a.right {
    float: right;
    border-left: none;
}

a {
    text-decoration: none;
    color: #333;
}

label {
    cursor: default;
}

</style>
</head>
<body>
	<div class="memberLogin">
	    <div class="login">
	    	<div class="titleArea">
				<h1>회원 로그인</h1>
			</div>
			<form action="${pageContext.request.contextPath }/member/user_check" method="post">
	            <div class="loginId"><input type="text" name="memId" placeholder="아이디"></div>
	            <div class="loginPwd"><input type="password" name="memPassword" placeholder="비밀번호"></div><br>
           
            <p class="button">
            	<input type="submit" value="">
	        </p>
	        
	        <div class="utilMenu" style="display:block">
	            <a href="/sollabo/member/findId">아이디 찾기</a>
	            <a href="/sollabo/member/findPwd">비밀번호 찾기</a>
	            <a href="/sollabo/member/join" class="right" style="display:">회원가입</a>
        	</div>
            
			</form>
	    </div>
	</div>
		
</body>
</html>