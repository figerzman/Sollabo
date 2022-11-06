<!-- default/header.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>default/header.jsp</title>
<style type="text/css">
.leftdiv a {
	text-decoration: none;
	color: black;
}

a {
	text-decoration: none;
}

.leftdiv {
	/* background-color: #f5d682;
 	border: 1px solid red; */
	position: fixed;
	top: 0px;
	margin-left: 30px;
	bottom: 0;
	z-index: 10;
}

.leftdiv>ul {
	width: 200px;
	display: inline;
}

.leftdiv>ul>li>a {
	display: block;
	color: black;
	padding: 10px 0 10px 20px;
}

.leftdiv>ul>li>a:hover {
	background-color: #fff;
	background-color: rgba( 255, 255, 255, 0.5 );
}

.l-title {
	list-style: none;
}

/* 헤더(아이콘)*/
header {
	background-color: #f5f5f5;
	position: fixed;
	top: 0;
	bottom: 0;
	margin: 30px 30px 0 0; 
	padding-top: 20px;
	z-index: 10;
	right: 0;
}

header>div {
	max-width: 1200px;
	margin: 0 auto;
	position: relative;
	min-height: 60px;
}

header label.menu1 {
	position: absolute;
	top: 0; right : 0;
	transform: translateY(-50%);
	width: 24px;
	height: 24px;
	background:
		url('${pageContext.request.contextPath }/resources/image/menu.png') 0
		0 no-repeat;
	cursor: pointer;
	right: 0;
}

/*우측 사이드 컨텐츠 바 */
.sidebar_content1 {
	position: fixed;
	top: 0;
	right: -300px;
	width: 300px;
	height: 100%;
	background: #fff;
	transition: all .35s;
	z-index: 40;
}

.sidebar_content1>ul {
	margin: 20px;
}

.sidebar_content1>ul>li {
/* 	border-bottom: 1px solid #ccc; */
	list-style: none;
}

.sidebar_content1>ul>li>a {
	display: inline-block;
	width: auto;
	color: #000000;
	padding: 10px;
	margin: 10px;
	background: #fff;
}

.sidebar_content1 label[for*='rightside'] {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 20;
}

/* 사이드바 외 배경영역(우측) */
.background1 {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .8);
	transition: all .35s;
	opacity: 0;
	visibility: hidden;
	z-index: 30;
}

/* input 체크 우측 */
input#rightside:checked ~ header label {
	background-position: -24px 0;
}

input#rightside:checked ~ .sidebar_content1 {
	right: 0;
}

input#rightside:checked ~ .background1 {
	opacity: 1;
	visibility: visible;
}

/*우측 사이드바 */
input#rightside {
	display: none;
}
</style>
</head>
<body>
	<div class="leftdiv">
		<h1 class="title">
			<a href="${pageContext.request.contextPath }/">SOLLABO</a>
		</h1>
		<h1>Brand</h1>
		<ul class=l-title>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=0"
				class="active">All</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=6"
				class="active">Nike</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=7">Adidas</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=22">Puma</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=23">Converse</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=24">Fredferry</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=25">Lacoste</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=26">NewBalance</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/product?divisionCode=27">Vans</a></li>
		</ul>
		<h1>Sales</h1>
	</div>

	<!-- 우측 사이드바 수정(김동우) -->
	<!-- class이름들은 추후 수정 -->

	<input type="checkbox" id="rightside">
	<!--헤더(우측 아이콘만 구현) -->
	<header>
		<div>
			<label for="rightside" class="menu1"></label>
		</div>
	</header>
	<!-- 우측 사이드바 영역 -->
	<div class="sidebar_content1" >
		<ul>
			<!-- 로그인 로그아웃 수정(곽예진) -->
			<li><c:if test="${loginUser == null }">
					<a href="/sollabo/member/login">로그인</a>
				</c:if> <c:if test="${loginUser != null }">
					<a href="/sollabo/member/logout">로그아웃</a>
				</c:if></li>
			<li><a href="/sollabo/cart/cart">장바구니</a></li>
			<li><a href="/sollabo/member/mypage">마이페이지</a></li>
			<li><a href="/sollabo/admin/adminMenuList">관리자</a></li>
		</ul>
	</div>
	<!-- 사이드바 외 영역 -->
	<label for="rightside" class="background1"></label>

</body>
</html>





































