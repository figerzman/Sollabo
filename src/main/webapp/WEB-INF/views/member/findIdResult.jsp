<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findIdResult</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 전체 틀 */
.memberFindId {
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

/* 제목(아이디 찾기) */
.titleArea {
	margin: 90px 0 30px;
	text-align: center;
}


</style>
</head>
<body>
	<div class="memberFindId">
	    <div class="findId">
	    	<div class="titleArea">
				<h1>아이디 찾기</h1>
			</div>
			<p class="info">고객님 아이디 찾기가 완료 되었습니다.</p>
	        <div class="Message">
	            <p class="message">
	            	저희 쇼핑몰을 이용해주셔서 감사합니다.<br>
	            	다음정보로 가입된 아이디가 총 <span class="txtEm">1</span>개 있습니다.
	            </p>
	            <div class="information">
	                <p class="thumbnail">
	                	<img src="//img.echosting.cafe24.com/skin/base/member/img_member_default.gif" alt="">
	                </p>
	                <div class="description">
	                    <ul class="small">
							<li>
							<strong class="term">이름</strong><strong class="desc"> : <span>홍길동</span></strong>
							</li>
							<li>
							<strong class="term">이메일</strong><span class="desc"> : <span>abc1234@naver.com</span></span>
							</li>
						</ul>
					</div>
		        </div>
		    </div>
	        <p class="copy">
	            고객님의 아이디 찾기가 성공적으로 이루어졌습니다.<br> 
	            항상 고객님의 즐겁고 편리한 쇼핑을 위해<br>
	            최선의 노력을 다하는 쇼핑몰이 되도록 하겠습니다.
	        </p>
		    <p class="button">
            	<a href=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_login.gif" alt="로그인" /></a>
            	<a href=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_pw.gif" alt="비밀번호 찾기" /></a>
        	</p>
		</div>
	        
	</div>
		
</body>
</html>