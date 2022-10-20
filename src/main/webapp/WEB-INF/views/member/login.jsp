
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/login.jsp</title>
<style type="text/css">

/* 전체적인 세팅*/
*{
    padding: 10px;
    margin: 5px;
    border: none;
    text-decoration:none;
}

body{
    font-size: 14px;
    font-family: 'Roboto', sans-serif;
}
/* 박스 세팅 */
.login-wrapper{
    width: 550px;
    background-color: rgb(255, 255, 255);
    border-radius: 32px;
    position: relative;
    margin: auto;
    min-height: 500px;
    box-shadow: rgb(0 0 0 / 45%) 0px 2px 10px;
    box-sizing: border-box;
}

/* 상단 로그인 문구(로그인)*/
.login-wrapper > h2{
    font-size: 24px;
    color: #31363d;
    margin-bottom: 20px;
    text-align:center;
}

/* 중단 카카오 문구(설명)*/
.login-wrapper > h3{
    text-align:center;
}

/* 아이디, 비번, 아이디저장(쳌박) */
#login-form > div > input{
    width: 80%;
    height: 50px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 20px;
    border-radius: 6px;
    background-color: #F8F8F8; 	
}

/* placholder 색깔 */
#login-form > div > input::placeholder{
    color: #D2D2D2;
    text-align:left;
}
/* 하단 로그인 클릭 */
#login-form > div > input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #31363d;
    margin-top: 20px;
}
/* (div처리된)아이디 비밀번호*/
#login-form > div{
text-align:center;
}

/* 아이디 저장 */
#login-form > input[type="checkbox"]{
    display: none;
    text-indent: 30px;
    margin-left:50px;
    
}
/*라벨처리 <아이디 저장하기> 색상 */
#login-form > label{
    color: #999999;
    text-align:center;
}
/* 수정할 시 확인 요망(아무도모름) 일단 인접된것 까지 같이 적용되는듯*/
#login-form input[type="checkbox"] + label{
    cursor: pointer;
    padding-left: 26px;
    background-image: url("checkbox.png");
    background-repeat: no-repeat;
    background-size: contain;
}
#login-form input[type="checkbox"]:checked + label{
    background-image: url("checkbox-active.png");
    background-repeat: no-repeat;
    background-size: contain;
}

/* 좌측하단 아이디 비번찾기*/
.right a{
   padding-left:25%;
}

/* 우측하단 회원가입*/
.left a{
	padding-left:10%
}

/*하단 링크 색깔*/
a:hover { 
color:pink; 
}

</style>
</head>
<body>
    
    <div class="login-wrapper">
        <h2>로그인</h2>
        <h3>아이디와 비밀번호 입력하기 귀찮으시죠?<br>
        카카오로 1초 만에 로그인 하세요.</h3><br>
        
        <h3>카카오 1초 로그인/회원가입 정상 동작 중</h3><br><br>
        
        <form method="post" action="" id="login-form">
            <div class="loginID"><input  type="text" name="userId" placeholder="아이디"></div>
            <div class="loginPW"><input  type="password" name="userPassword" placeholder="비밀번호"></div><br>
            <label id="test" for="remember-check">
               <span class="saveID"><input type="checkbox" id="remember-check"> 아이디 저장하기</span>
            </label>
           <div class="Loginbut"><input type="submit" value="로그인"></div> 
        </form>
        <span class="left"><a href="#" >아이디&비밀번호 찾기</a></span>
        <span class="right"><a href="join">회원가입</a></span>
    </div>
</body>
</html>