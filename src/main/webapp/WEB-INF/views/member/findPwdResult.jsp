<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPwdResult</title>
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
	height: 1100px;
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

/* 완료 멘트 */
.findPwd p.info {
    margin: 50px 0 30px;
    font-size: 18px;
    color: #008bcc;
    font-weight: 500;
    text-align: center;
}

/* 상단 멘트바 */
.message {
    display: block;
    padding: 10px 0 10px 35px;
    border: 1px solid #e8e8e8;
    background: #fbfbfb url(//img.echosting.cafe24.com/skin/base/common/ico_info.gif) no-repeat 10px center;
}

/* 아이디, 이메일 색상 */
.txtEm {
    color: #008bcc;
}

/* 하단 박스 */
.information {
	border-left: 1px solid #e8e8e8;
	border-bottom: 1px solid #e8e8e8;
	border-right: 1px solid #e8e8e8;
    display: table;
    table-layout: fixed;
    padding: 10px 0;
    width: 100%;
    box-sizing: border-box;
}

/* 하단 좌측 박스 */
.information > .thumbnail {
    display: table-cell;
    padding: 0 15px;
    width: 70px;
    text-align: center;
    vertical-align: middle;
}

/* 하단 좌측 박스 이미지 */
.information > .thumbnail img {
    max-width: 70px;
}

img {
    border: none;
    vertical-align: top;
}

/* 하단 우측 박스 */
.information .description {
    display: table-cell;
    padding: 0 10px;
    width: auto;
    line-height: 1.5em;
    border-left: 1px solid #e8e8e8;
    vertical-align: middle;
}

.desc {
    display: block;
    margin: 0 0 2px;
    padding: 0 5px 0 100px;
    min-height: 22px;
    line-height: 22px;
    word-wrap: break-word;
    word-break: break-all;
}

/* 하단 우측 박스 */
li {
	margin-top: 3px;
    list-style: none;
}

/* 성공 멘트 */
.findPwd p.copy {
    margin: 40px 0 0;
    color: #757575;
    line-height: 170%;
    text-align: center;
}

/* 버튼 */
.button {
    padding: 30px 0;
    text-align: center;
}

</style>
</head>
<body>
	<div class="memberFindPwd">
	    <div class="findPwd">
	    	<div class="titleArea">
				<h1>비밀번호 찾기</h1>
			</div>
			<p class="info">비밀번호가 고객님 메일로 발송되었습니다.</p>
	        <div class="Message">
	            <p class="message">
	            	저희 쇼핑몰을 이용해주셔서 감사합니다.<br>
	            </p>
	            <div class="information">
	                <p class="thumbnail">
	                	<img src="//img.echosting.cafe24.com/skin/base/member/img_member_default.gif" alt="">
	                </p>
	                <p class="description">
                    	<span class="">
                    		<strong class="txtEm"><span>[아이디]</span></strong> 회원님, 
                    	</span>
                    	임시 비밀번호를<br>
                    	<strong class="txtEm">
                    		<span class="">
                    			<span>[이메일]</span>
                    		</span>
                    		<span class="displaynone"></span>
                    	</strong>으로 보내드렸습니다.
                    	<br>즐거운 쇼핑 하세요 고객님!
                	</p>
		        </div>
		    </div>
	        <p class="copy">
	            고객님의 비밀번호가 성공적으로 발송되었습니다.<br> 
	            즐겁고 편리한 쇼핑을 위해 최선의 노력을 다하는 쇼핑몰이 되도록 하겠습니다.
	        </p>
		    <p class="button">
            	<a href="/member/login.html"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_login.gif" alt="로그인" /></a>
        	</p>
		</div>
	        
	</div>
		
</body>
</html>