<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sendPwd</title>
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

/* 제목(임시 비밀번호 전송) */
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

.findPwd strong {
    display: inline-block;
    margin: 0 0 5px;
    padding: 0 4px 0 4px;
    width: 135px;
    font-weight: normal;
}

.txtEm {
    color: #008bcc;
    font-weight: bold;
}

li {
    list-style: none;
    margin: 5px;
}

.findPwd .button { 
	margin:30px 0 0; 
	text-align:center; 
}

</style>
</head>
<body>
	<div class="memberFindPwd">
	    <div class="findPwd">
	    	<div class="titleArea">
				<h1>임시 비밀번호 전송</h1>
			</div>
			<fieldset>
	            <ul class="desc">
					<li>
						<strong class="term">임시 비밀번호</strong>
						<span class="desc">
							<input id="passwd_method_type0" name="passwd_method_type" fw-filter="isFill" fw-label="임시 비밀번호" fw-msg="" value="email" type="radio" checked="checked">
							<label for="passwd_method_type0">이메일</label>
						</span>
					</li>
					<li id="passwd_method_email_info">
						<strong class="term">이메일</strong>
						<span class="desc">
							<strong class="txtEm">
								<span>abc1234@naver.com</span>
							</strong>
						</span>
					</li>
            	</ul>
            	
            	<p class="button">
	                <a href="#none" onclick=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_submit.gif" alt="확인" /></a>
	            </p>
        	</fieldset>
	        
	    </div>
	</div>
		
</body>
</html>