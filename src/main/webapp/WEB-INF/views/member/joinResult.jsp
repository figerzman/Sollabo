<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinResult</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 전체 틀 */
.memberJoin {
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

/* 제목(회원가입) */
.titleArea {
	margin: 90px 0 30px;
	text-align: center;
}

/* 완료 멘트 */
.Join p.info {
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

/* 아이디, 이름, 이메일 */
.term {
    float: left;
    width: 100px;
    margin: 0 0 2px;
    padding: 0 4px 0 0;
    line-height: 22px;
    box-sizing: border-box;
    font-weight: normal;
}

/* 고객 아이디, 이름, 이메일 */
.small .desc {
    padding-left: 25%;
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

span {
	font-weight: bold;
}

/* 하단 우측 박스 */
li {
	margin-top: 3px;
    list-style: none;
}

/* 버튼 */
.button {
    padding: 30px 0;
    text-align: center;
}

</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="memberJoin">
	    <div class="Join">
	    	<div class="titleArea">
				<h1>회원가입</h1>
			</div>
			<p class="info">회원가입이 완료 되었습니다.</p>
	        <div class="Message">
	            <p class="message">
	            	저희 쇼핑몰을 이용해주셔서 감사합니다.
	            </p>
	            <div class="information">
	                <p class="thumbnail">
	                	<img src="//img.echosting.cafe24.com/skin/base/member/img_member_default.gif" alt="">
	                </p>
	                <div class="description">
	                    <ul class="small">
	                    	<li>
							<strong class="term">아이디</strong><strong class="desc"><span>abc ${memId }</span></strong>
							</li>
							<li>
							<strong class="term">이름</strong><strong class="desc"><span>홍길동 ${memName }</span></strong>
							</li>
							<li>
							<strong class="term">이메일</strong><span class="desc"><span>abc1234@naver.com ${memEmail }</span></span>
							</li>
						</ul>
					</div>
		        </div>
		    </div>
		    <p class="button">
            	<a href="/sollabo/member/login"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_complete_login.gif" alt="로그인" /></a>
            	<a href="${pageContext.request.contextPath }/"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_complete_main.gif" alt="메인으로 이동" /></a>
        	</p>
		</div>
	        
	</div>
	<c:import url="../default/footer.jsp"/>	
</body>
</html>