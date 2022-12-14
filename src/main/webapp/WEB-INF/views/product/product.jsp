<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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

img {
	border: none;
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

ol {
	list-style-type: decimal;
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
	color: #333;
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
	text-align: center;	
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
	border-radius: 20px;
	box-shadow: 3px 3px 10px #e6e2af;
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
    
    margin-right: 10px;
    margin-left: 10px;
    
}

.prdList .thumnail {
	position: relative;
    margin: 10px 15px;
    text-align: center;
}

.bottomPack .prdList .thumnail .prdImg a img {
	width: 350px;
	height: 400px;
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

.lastPack img {
    vertical-align: top;
}

.lastPack ol {
	display: inline-block;
	font-size: 0;
	line-height: 0;
	vertical-align: top;
}

.lastPack li:first-child {
	margin-left: 0;
}

.lastPack li {
	float: left;
    display: inline-block;
    margin: 0 0 0 -1px;
    border: 1px solid #e8e8e8;
    font-size: 11px;
    color: #757575;
    vertical-align: top;
}

.lastPack li a {
	display: block;
    width: 33px;
    padding: 7px 0 6px;
    font-weight: bold;
    color: #b7b7b7;
    line-height: 14px;
    background: #fff;
}

.lastPack li a.this {
	color: #333;
    font-weight: bold;
    background: #f1f1f1;
}

</style>
</head>
<script type="text/javascript">	
	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}
</script>

<body>
<c:import url="../default/header.jsp"/>
<form name="frmPage" method="post" action="<c:url value='/product/product'/>">
	<input type="hidden" name="searchCondition" value="${param.searchCondition}">
	<input type="hidden" name="searchKeyword" value="${param.searchKeyword}">	
	<input type="hidden" name="divisionCode" value="${param.divisionCode}">		
	<input type="hidden" name="currentPage" >
</form>
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
				<!-- 각 브랜드별로 링크 추가해야함 --><!-- Category_code -->
				<!-- 현재는 테스트 링크만 추가 -->
				<ul class="menuCate">	
				<c:forEach var="dto" items="${divisionList }">			
						<li style="display:"; class="Disoption">
							<a href="${pageContext.request.contextPath}/product/product?divisionCode=${dto.divisionCode }">
								<img src="${pageContext.request.contextPath}${dto.icon }">${dto.divisionName }
								<span class="count displayone">()</span>
							</a>
						</li>
					</c:forEach>
					
				</ul>		
			</div>
			<!-- 제품 진열(중간) -->
			<!-- <div class="middlePack">
				<div class="middleMenu">
					<div class="function">
						<p class="prdCount">
							<strong>6</strong>
							" 개의 상품이 있습니다. "
						</p>
						<ul id="type" class="option">
							<li class="SMoption"><button id="가나다순"></button>가나다순</a></li>
							<li class="SMoption"><button id="낮은가격"></button>낮은가격</a></li>
							<li class="SMoption"><button id="높은가격"></button>높은가격</a></li>
							<li class="SMoption"><button id="원래대로"></button>원래대로</a></li>
						</ul>	
					</div>
				</div>
			</div> -->
			<!-- 제품 진열(하단) -->
			<div class="bottomPack">
				<ul class="prdList">
					<!-- 상품 수정시 건드리는 곳 --><!-- Division_code -->
					<!-- 가격은 아직 추가안함 -->
					<c:forEach var="dto" items="${productList }">
					<li id="list_test" class="listtest">
						<div class="thumnail">
							<div class="prdImg">
								<a href="${pageContext.request.contextPath}/product/goodspage?productNo=${dto.productNo }">
									<img src="${pageContext.request.contextPath}${dto.productImage }">
								</a>
							</div>
						</div>
						<div class=description>
							<strong class="name">
								<a href="${pageContext.request.contextPath}/product/goodspage?productNo=${dto.productNo }">
									<span style="font-size:13px;color:#555555;">${dto.productName }</span><!-- Product_name -->
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
									<span style="font-size:12px;color:#242424;font-weight:bold;">${dto.productPrice }</span><!-- Product_price -->
									<span id="KRWtype" style=""></span>
								</li>
							</ul>	
						</div>
					</li>
					</c:forEach>
				</ul>			
			</div>
			<!-- 제품 진열(최하단)  -->
			<div class="lastPack">
				<c:if test="${pagingInfo.firstPage>1 }">
					<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1 })">			
						<img src="${pageContext.request.contextPath}/resources/gif/prevbtn.gif" 
						onmouseover="this.src='${pageContext.request.contextPath}/resources/gif/prev_rollover.gif'" 
						onmouseout="this.src='${pageContext.request.contextPath}/resources/gif/prevbtn.gif'" alt="이전 페이지">
					</a>	
				</c:if>	
				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
					<ol style="padding-left: 0px;">
					<c:if test="${i==pagingInfo.currentPage }">
						<li class="know"><a href="#">[${i }]</a></li>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
						<li class="know"><a href="#" onclick="pageFunc(${i})" class="this" >[${i }]</a></li>
					</c:if>
		            </ol>
				</c:forEach>
				<!-- 다음 블럭으로 이동 ▶ -->
				<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
					<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">
					  <img src="${pageContext.request.contextPath}/resources/gif/nextbtn.gif" 
		            onmouseover="this.src='${pageContext.request.contextPath}/resources/gif/next_rollover.gif'" 
		            onmouseout="this.src='${pageContext.request.contextPath}/resources/gif/nextbtn.gif'" alt="다음 페이지">
					</a>		           
				</c:if>
			</div>
			<div class="divSearch">
			   	<form name="frmSearch" method="post" action='<c:url value="/product/product"/>'>
			        <select name="searchCondition"  style="text-align: center;">        	
			            <option value="product_name" <c:if test="${param.searchCondition=='product_name'}">selected</c:if>>상품이름</option>
			        </select>   
			        <input type="hidden" name="divisionCode" value="${param.divisionCode}">		
			        <input type="text" name="searchKeyword" title="검색어 입력" value="${param.searchKeyword}">   
					<input type="submit" value="검색">
			    </form>
			</div>
		</div>
	</div>
</div>
<c:import url="../default/footer.jsp"/> 
</body>
</html>