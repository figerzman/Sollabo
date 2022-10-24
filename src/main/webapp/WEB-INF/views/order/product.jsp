<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 전체적 */
body, code{
    font: 0.8em 'Poppins','Noto Sans KR','맑은 고딕','Malgun Gothic',Verdana,Dotum,AppleGothic,sans-serif;
    color: #333;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

ul {
	display: block;
	list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

li {
	list style: none;
	text-align: -webkit-match-parent;
	
}

a {
	text-decoration: none;
}

a:-webkit-any-link {
	    cursor: pointer;
}

strong {
    font-weight: bold;
}	

#wrap {
    position: relative;
    margin: 0;
}

#container{
	margin: 0;
}

#contents{
	margin: 0 auto;
 	max-width: 100% !important;
    padding: 0 300px !important;
}
/* 위에서부터 순서대로 정리 *//* 상단 */
.prdPage {
    padding-top: 90px;
}



.topPack{
	margin: 0 0 27px;
}


.title{
	min-height: 30px;
    margin: 0 0 25px;
    text-align: center;
}

.title .banner{
    margin: -16px 0 0 0;
}

.title h2{
	display: inline-block;
    vertical-align: middle;
    font-family: 'Poppins','Nanum Square','Noto Sans KR','맑은 고딕','Malgun Gothic',sans-serif;
    font-size: 28px;
    color: #222;
    font-weight: 600;
    padding: 20px 0 0;
    letter-spacing: 0.03em;
    word-spacing: 2px;
    text-transform: uppercase;
    transform: translate(0,0);
    opacity: 1.0;
    transition: transform 1.3s ease,opacity 1.3s ease;
}

.menuCate > li {
	display: inline-block;
    margin: 0 0 10px 4px;
    padding: 0 3px 0 0;
    font-size: 14px;
    line-height: 14px;
    vertical-align: top;
    text-align: left;
}

.menuCate > li > a {
	display: block;
    width: 100px;
    margin: 17px;
    padding: 5px 5px 5px;
    font-weight: 400;
    color: #333;
    letter-spacing: 0.03em;
    /* border: 1px solid #e6e6e6; */ 
    transition: all 0.25s ease;
    text-align: center;
    
}

.menuCate > li > a:hover{
	border: 1px solid #e6e6e6;
	margin: 10px;
}

.menuCate > li > a > img{
	width: 100px;
	height: 80px;
	
}
.menuCate > li .count {
	font-weight: normal;
    color: #999;
}

.displayone{
	display: none !important;
}

/* 중단 */
.middleMenu{
    margin: 0;
    padding: 0;
    letter-spacing: 0.05em;
}

.middleMenu .function{
	overflow: hidden;
    text-align: right;
    font-size: 13px;
    line-height: 38px;
}

.middleMenu ul#type{
	display: inline;
    margin: 0;
}

.middleMenu ul#type li{
	display: inline;
    padding: 0 5px 0 8px;
    /* 추후 추가 background: url("") no-repeat 0 50% */
}

.middleMenu ul#type li a{
	color: #999;
}

.prdCount{
	float: left;
    padding: 0 10px 0 5px;
    color: #999;
}
	
.prdCount strong{
	color: #555;
}

/* 하단 */
.bottomPack{
	margin: 0 -10px 0;
}

.prdList{
	display: table;
    width: 100%;
    margin: -20px 0 0;
    font-size: 0;
    line-height: 0;
}

.prdList > #li {
	display: block;
}

ul .prdList > li {
	width: 33.33%;
}

.prdList > li {
	position: relative;
    display: inline-block;
    margin: 20px 0 50px;
    color: #757575;
    vertical-align: top;
}

.prdList .thumnail {
	position: relative;
    margin: 10px 15px;
    text-align: center;
}

.bottomPack .prdList .thumnail .prdImg a img {
	width: 200px;
	height: 250px;
    box-sizing: border-box;
}

.prdList .description{
    margin: 0 auto;
    padding: 0 15px;
    font-size: 12px;
    line-height: 20px;
    text-align: center;
}

.prdList .description .name {
	display: block;
    text-align: left;
    padding: 4px 0 5px 0;
}

.prdList .description .name a {
    color: #2e2e2e;
}

ul .infoT {
	padding: 0;
}
.infoT {
	margin: 0;
	list-style: none;
}

.infoT > li {
	text-align: left;
    padding: 3px 0;
}

.infohide{
	font-weight: normal;
    vertical-align: top;
    margin: 0 0 17px;
    display: none !important;
} 

/* 최하단 */
.lastPack {
	display: table;
    margin: 70px auto 0;
    text-align: center;
    font-size: 0;
    line-height: 0;
}





</style>
</head>
<body>
<div id="wrap" class="prdPage">
	<div id="container">
		<div id="contents">
			<!-- 헤더 -->
			<div class="topPack">
				<div class="title">
					<p class="banner"></p>
					<h2>
						<span>Brand</span>
					</h2>
				</div>	
				<!-- 각 브랜드별로 링크 추가해야함 -->
				<!-- 현재는 테스트 링크만 추가 -->
				<ul class="menuCate">
					<li style="display:"; class="Disoption">
						<a href="https://www.nike.com"><img src="mainnike.png">Nike
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainadidas.png">Adidas
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainnewbal.png">NewBalance
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainpuma.png">Puma
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainconverse.png">Converse
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainvans.png">Vans
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainfred.png">Fredferry
							<span class="count displayone">()</span>
						</a>
					</li>
					<li style="display:"; class="Disoption">
						<a href=""><img src="mainlacoste.png">Lacoste
							<span class="count displayone">()</span>
						</a>
					</li> 
				</ul>		
			</div>
			<!-- 제품 진열(중간) -->
			<div class="middlePack">
				<div class="middleMenu">
					<div class="function">
						<p class="prdCount">
							<strong>6</strong>
							" 개의 상품이 있습니다. "
						</p>
						<ul id="type" class="option">
							<li class="SMoption"><a href="#">신상품</a></li>
							<li class="SMoption"><a href="#">낮은가격</a></li>
							<li class="SMoption"><a href="#">높은가격</a></li>
							<li class="SMoption"><a href="#">조회수</a></li>
						</ul>	
					</div>
				</div>
			</div>
			<!-- 제품 진열(하단) -->
			<div class="bottomPack">
				<ul class="prdList">
					<!-- 상품 수정시 건드리는 곳 -->
					<!-- 가격은 아직 추가안함 -->
					<li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li>
					<li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li><li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<img src="아디다스 캡쳐.PNG">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="https://www.adidas.co.kr/znsored-%ED%95%98%EC%9D%B4-%EB%9D%BC%EC%9D%B4%ED%94%84%EC%8A%A4%ED%83%80%EC%9D%BC-%EC%96%B4%EB%8D%9C%ED%8A%B8/GZ2291.html">
									<span style="font-size:13px;color:#555555;">ZNSORED 하이<br> 라이프스타일 어덜트</span>
								</a>
							</strong>
							<ul class="infoT">
								<li rel="상품요약정보" class="infosales">
									<strong class="infohide">
										<span style="font-size:12px;color:#5809eb;">상품요약정보</span> :
									</strong> 
									<span style="font-size:12px;color:#5809eb;">4,200원 할인</span>
								</li>
								<li rel="판매가" class="infopri">
									<strong class="infohide">
										<span style="font-size:12px;color:#242424;font-weight:bold;">판매가</span> :
									</strong> 
									<span style="font-size:12px;color:#242424;font-weight:bold;">KRW 39,900</span>
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li>					
				</ul>			
			</div>
			<div class="lastPack">
				
			</div>
		</div>
	</div>
</div>
</body>
</html>