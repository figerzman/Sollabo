<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.1.min.js"></script>
<meta charset="UTF-8">
<title>제품 상세 페이지</title>
<!--3초간격 화면전환  -->
<script>
    var index = 0;   //이미지에 접근하는 인덱스
    window.onload = function(){
        slideShow();
    }
    
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("imgarea");  //slide1에 대한 dom 참조
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    }
    index++;
    if (index > x.length) {
        index = 1;  //인덱스가 초과되면 1로 변경
    }   
    x[index-1].style.display = "block";  //해당 인덱스는 block으로
    setTimeout(slideShow, 100000);   //함수를 4초마다 호출
 
}
    
    function search(type) {
    	if(type='color'){
    		if($('#color').val() == ""){
    			alert('색상을 선택해주세요.')   	
    		}else if($('#size').val() == ""){
    			 alert('사이즈를 선택해주세요.')    			
    		}else if($('#color').val() != "" && $('#size').val() != "금지" && $('#size').val() != ""){  			
    			$('#total').show();
    			
    			
    		}
    	}		
	}
  
	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}
</script>

<style type="text/css">
/* 상단 제목 */
section .notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

/* 하단 검색창 */
#board_search .search_window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board_search .search_window .search_wrap {
	display:flex;
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board_search .search_window .search_wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board_search .search_window .search_wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board_search .search_window .search_wrap .btn {
  position: absolute;
  right: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

/* 게시판 테이블  */
.board_table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board_table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board_table a:hover {
  text-decoration: underline;
}
.board_table th {
  text-align: center;
}

.board_table .th-num {
  width: 100px;
  text-align: center;
}

.board_table .th-date {
  width: 200px;
}

.board_table th, .board_table td {
  padding: 14px 0;
}

.board_table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board_table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board_table tbody th p{
  display: none;
}

/* 버튼 꾸미기 */
.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
  border-radius: 4px; 
  height: 25px;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.container input[type="button"]{
	float: right;
	margin: 5px 0 0 0;
}

/* 최초 초기화 */
/* * {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
} */

.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

 /* 페이징 처리 */
.board_count_div{
	text-align: center;
	margin: 10px;
}

.board_count_div a {
	color:black;
}
.board_count_div {
	display: table;
    margin: 70px auto 0;
    text-align: center;
    font-size: 0;
    line-height: 0;
}

.board_count_div img {
    vertical-align: top;
}

.board_count_div ol {
	display: inline-block;
	font-size: 0;
	line-height: 0;
	vertical-align: top;
}

.board_count_div li:first-child {
	margin-left: 0;
}

.board_count_div li {
	float: left;
    display: inline-block;
    margin: 0 0 0 -1px;
    border: 1px solid #e8e8e8;
    font-size: 11px;
    color: #757575;
    vertical-align: top;
}

.board_count_div li a {
	display: block;
    width: 33px;
    padding: 7px 0 6px;
    font-weight: bold;
    color: #b7b7b7;
    line-height: 14px;
    background: #fff;
}

.board_count_div li a.this {
	color: #333;
    font-weight: bold;
    background: #f1f1f1;
}





.other{
	
	list-style: none;	
	text-indent: 0px;
	align:center;

}

.detail_area {
	margin: 0px auto;
    padding: 35px 0 0 150px;
    position: relative;
    font: 1.0em 'Poppins','Noto Sans KR','맑은 고딕','Malgun Gothic',Verdana,Dotum,AppleGothic,sans-serif;
}

.detail_imgarea{
	float: left;
	width: 38%;
	padding-left:200px;
}

.detail_infoarea{
	
	float: left;
    width: 45%;
    padding: 0 0 0 70px;
    box-sizing: border-box;
}
}
.head{
	position: relative;
    padding: 0 0 18px;
    margin: 0 0 15px;
   
    border-bottom: 1px solid #f4f4f4;
}

.key{
    margin: 0 ;
    padding: 0 0 0 80px;
    text-align: center;
    width: 432px;
    height: 680px;
}

.thumbnail{
	display: inline-block;
    position: relative;
    max-width: 100%;
}

.bottom_line{
  	position: relative;
    padding: 0 0 18px;
    margin: 0 0 15px;
    
 	border-bottom: 1px solid red;
}

.detail_infoarea th{
    font-weight: 600;
    color: #353535;
    text-transform: uppercase;
    letter-spacing: 0.03em;
    width: 115px;
    padding: 7px 0 8px 0;
    text-align: left;
}

.head h2{
    display: inline-block;
    font-family: 'Nanum Square','Noto Sans KR','맑은 고딕','Malgun Gothic',sans-serif;
    font-size: 26px;
    color: #000000;
    font-weight: 600;
    padding: 0 5px 23px 0;
    margin-top: 15px;
    letter-spacing: 0.00em;
}

.total_price{
    margin: 0;
    padding: 28px 9px 20px 0;
    border-top: 1px solid #f4f4f4;
    color: #333;
    vertical-align: middle;
    background: #fff;
    text-align: center;
}

.total_price strong{
    font-weight: 400;
}

.total_price .total{
color: #333;
}

.total_btn{
margin: 0 auto;
display: flex;
justify-content: center;
}


.total_btn span{
font-weight: 400;
}

.btnSubmit{
  padding: 15px 70px;
  margin:10px 4px;
  color: #333333;
  font-family: sans-serif;
  text-transform: uppercase;
  text-align: center;
  position: relative;
  text-decoration: none;
  display:inline-block;
  border: 1px solid #ddd !important;
  
}

.btnSubmit::before{
 content: "";
position: absolute;
top: 0;
left: 0;
display: block;
width: 100%;
height: 100%;
z-index: -1;
background-color: #dddddd;
-webkit-transform: scaleY(.3);
transform: scaleY(.3);
opacity: 0;
transition: all .3s
}

.btnSubmit:hover{
   color:#333333;  
   
}

.btnSubmit:hover::before{
   opacity: 1;
  background-color: #dddddd;
  -webkit-transform: scaleY(1);
  transform: scaleY(1);
  transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity .4s;
  transition: transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity
}

.btnNormal{
  padding: 15px 45px;
  margin:10px 4px;
  color: #333333;
  font-family: sans-serif;
  text-transform: uppercase;
  text-align: center;
  position: relative;
  text-decoration: none;
  display:inline-block;
  border: 1px solid #ddd !important;
  
}

.btnNormal::before{
content: "";
position: absolute;
top: 0;
left: 0;
display: block;
width: 100%;
height: 100%;
z-index: -1;
background-color: #dddddd;
-webkit-transform: scaleY(.3);
transform: scaleY(.3);
opacity: 0;
transition: all .3s
}

.btnNormal:hover{
   color:#333333;  
}

.btnNormal:hover::before{
   opacity: 1;
  background-color: #dddddd;
  -webkit-transform: scaleY(1);
  transform: scaleY(1);
  transition: -webkit-transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity .4s;
  transition: transform .6s cubic-bezier(.08, .35, .13, 1.02), opacity
}

div{
	display: block;
	margin: 0px;
}
/*i가 들어가는 이유 모름 */
input[ type="hidden" i]{
	appearance: none;
    background-color: initial;
    cursor: default;
    display: none !important;
    padding: initial;
    border: initial;
}

.imgarea {
	width:430px; 
	height:550px;
}

#total_product{
	    margin: 0 0 0;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

#total_product thead th {
    height: 1px;
    padding: 0;
    font-size: 0;
    line-height: 0;
}

.displaynone {
    display: none !important;
}

#total_product tbody tr:first-child td {
    border-top: 1px solid #f4f4f4;
}

#total_product tbody tr td:first-child {
    padding-left: 0;
    font-weight: 600;
}

#total_product tbody td .quantity {
    display: inline-block;
    position: relative;
    width: 50px;
    vertical-align: top;
}

#total_product tbody td .quantity input {
    width: 22px;
    height: 23px;
    padding: 0 2px 0 3px;
    line-height: 23px;
    border: 1px solid #d4d8d9;
    border-radius: 3px 0 0 3px;
}

input[type=text] {
	color: #333;
    font-size: 12px;
}

#total_product tbody td .quantity .up {
    position: absolute;
    left: 28px;
    top: 0;
}

#total_product tbody td .quantity .down {
    position: absolute;
    left: 28px;
    top: 12px;
}

#total_product tbody.option_products tr td .quantity .down {
    bottom: 0;
    top: auto;
}

#total_product tbody td img {
    vertical-align: middle;
}

#total_product table .right {
    padding-right: 9px;
    font-weight: 600;
    color: #333;
    text-align: right;
}

#total_product tbody td {
    padding: 11px 0;
    line-height: 18px;
    vertical-align: middle;
    word-wrap: break-word;
    word-break: break-all;
}

#total_product tbody td p {
    padding: 0 10px 0 0;
    font-weight: 600;
    line-height: 21px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#total_product tbody td p.product span {
    font-weight: normal;
    color: #757575;
    line-height: 18px;
}
input{
    font-size: 100%;
    font-family: 'Poppins','Noto Sans KR','맑은 고딕','Malgun Gothic','돋움',Dotum;
    color: #333;
    vertical-align: middle;
}

#total_product tbody.option_products tr td .quantity input {
    height: 19px;
    line-height: 19px;
}

.down_area{
	padding: 30px;
  /*   border-bottom: 1px solid #222; */
    psotion:absolute;

	    }
.front_other{
/* 	  background-color:#DADADA;
	  border: 1px solid #DADADA; */
	  text-align:center;
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
<body>
<c:import url="../default/header.jsp"/>


<%-- <h2 ><a href="${pageContext.request.contextPath }/">제품 상세 페이지</a></h2> --%>
<form name="frmPage" method="post" action="<c:url value='/product/goodspage'/>">
	<input type="hidden" name="searchCondition" value="${param.searchCondition}">
	<input type="hidden" name="searchKeyword" value="${param.searchKeyword}">	
	<input type="hidden" name="productNo" value="${param.productNo}">		
	<input type="hidden" name="currentPage" >
</form>
<div>

<div class="detail_area"> <!-- 전체 구역 -->
	<!-- 이미지 구역(이미지는 추후에 제외(DB) -->
	
	<div class="detail_imgarea"> <!-- 제품 이미지 전체 -->
		<div class="key">
			<div class="thumbnail">
				<img class="imgarea" src="${pageContext.request.contextPath}/resources/image/test.jpg"<%-- ${dto.productImage } --%>>
				<img class="imgarea" src="${pageContext.request.contextPath}/resources/image/clipboard.png"<%-- ${dto.productImage } --%> >
				<img class="imgarea" src="${pageContext.request.contextPath}/resources/image/cart.png" <%-- ${dto.productImage } --%>>
			</div>	
			</div>	
		</div>	
	</div>
	
	<!-- 인포 구역 -->
	<div class="detail_infoarea">	<!-- 인포 전체 --> 
		<div class="head">
			<h2 class="bottom_line">${goodsProduct.productName }</h2> <!-- 상품(이름) -->
		</div>
		<br>
		<!-- 판매가 -->
		<div class="salesprice">
			<table>
			<tr>
				<th scope="row">
					<span style="font-size:20px;color:black;">판매가 : </span>
				</th>
				<td>
					<span style="font-size:20px;color:black; font-weight:bold;">
						<strong>KRW ${goodsProduct.productPrice }</strong>
						<input id="product_price" name="product_price" value="" type="hidden">
					</span>
				</td>
			</tr>	
			</table>
			<br><br><br><br><br><br><br>
			<!-- 옵션(색상) 미정-->
			
			<div class="total_product" id="start">
			
			<table>
				<tr>
					<th scope="row">색상</th>
					<td>
					<select id="color" name="color" onchange ="search(color)">
						<option  value="">- [필수] 옵션을 선택해 주세요 -</option>
						<option  value="">-------------------</option>
						 <option value="라이트블루">Black</option>
						 <option value="블루" link_image="">Ivory</option>
						 <option value="딥블루" link_image="">Gray</option>
						 <option value="라이트블랙" link_image="">Violet</option>
					 </select>
					</td>
				</tr>
			</table>
			<br><br>
			<!-- 옵션(사이즈) 미정-->
			<table>
				<tr>
					<th scope="row">사이즈</th>
					<td>
					<select name="size" id="size" onchange ="search(size)">
						<option value="금지">- [필수] 옵션을 선택해 주세요 -</option>
						<option value="">-------------------</option>
						 <option value="스몰" link_image="">S(255~260)</option>
						 <option value="미디엄" link_image="">M(265~270)</option>
						 <option value="라지" link_image="">L(275~280)</option>
						 <option value="엑스라지" link_image="">XL(285~290)</option>	
					 </select>
					</td>
				</tr>
			</table>
			</div>
			<br><br>
			<!-- 총 제품 페이지 --><!-- 수정중 -->
			<div class="total_product" id="total" style="display:none">
				<table >
					<thead>
						<tr>
							<th scope="col">상품명</th>
	                        <th scope="col">상품수</th>
	                        <th scope="col">가격</th>
                    	</tr>
                    </thead>	
                    <tbody class="displaynone">
                    	<tr>
							<td>${goodsProduct.productName }</td>
                            <td>
                            	<span class="quantity">
	                                <input id="quantity" name="quantity_name" style="" value="1" type="text">                                        
	                                <a href="#none" onclick='count(this.id)' id="plus"><img src="image/upbtn.gif" alt="수량증가" class="QuantityUp up"></a>
	                                <a href="#none" onclick='count(this.id)' id="minus"><img src="image/downbtn.gif" alt="수량감소" class="QuantityDown down"></a>
                                </span>
                           </td>
                           <td class="right">
						   		<span class="quantity_price">${goodsProduct.productPrice }</span> 						   		
                           </td>
                       </tr>
                   </tbody>
                   	<tbody class="option_products"><!-- 정리 -->
                            <tr class="option_product " data-option-index="1" target-key="1563">
                            	<td>
                            		<input type="hidden" class="option_box_id" id="option_box1_id" value="P0000CID00BE" name="item_code[]" data-item-add-option="" data-item-reserved="N" data-option-id="00BE" data-option-index="1"> 
                            		<p class="product">${goodsProduct.productName }
                            		<br> -
                             		<span>커팅-블루(blue)/M(29~30)</span>
                             		</p>
                             	</td>
                             	<td>
                             		<span class="quantity" style="width:65px;">
                             		<input type="text" id="option_box1_quantity" name="quantity_opt[]" class="quantity_opt eProductQuantityClass" value="1" product-no="1563">
                             			<a href="#none" class="up eProductQuantityUpClass" "="" data-target="option_box1_up style="height:11px;">
                            			<img src="${pageContext.request.contextPath}/resources/image/upbtn.gif" id="option_box1_up" class="option_box_up" alt="수량증가" style="margin-bottom:10px;"></a>
                             			<a href="#none" class="down eProductQuantityDownClass" data-target="option_box1_down" style="height:11px;">
                            			<img src="${pageContext.request.contextPath}/resources/image/downbtn.gif"  id="option_box1_down" class="option_box_down" alt="수량감소" style="margin-bottom:10px;"></a>
                             		</span>
                             		<a href="#none" class="delete">
                            		<img src="${pageContext.request.contextPath}/resources/image/deletebtn.gif" alt="삭제" id="option_box1_del" class="option_box_del">
                             		</a>
                            	</td>
                             	<td class="right">
                             		<span id="option_box1_price">
                             		<input type="hidden" class="option_box_price" value="59000" product-no="1563" item_code="P0000CID00BE">
                             		<span class="ec-front-product-item-price" code="P0000CID00BE" product-no="1563">KRW : ${goodsProduct.productPrice }</span>
                             		</span>
                             	</td>
                            </tr>
                	</tbody>			
				</table>
			</div>
			<br><br><br>
			<!-- 총 가격 -->
			<div class="total_price">
				<strong>Total</strong> : 
				<span class="total">
					<strong>
						<em>KRW ${goodsProduct.productPrice } <!-- 곱하기 생각해봐야함 --></em> "공백"
					</strong>
				</span>
			</div>
			</div>
	<!-- 구매버튼 -->
		<div class="total_btn">
				<a href="/sollabo/cart/cart" class="btnSubmit" >            
					<span id="buybtn">구매하기</span>
				</a>
				
		</div>	
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<a id="recall1"></a>	<a id="recall2"></a>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="down_area">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<ul class="front_other" list-style="none" >
			<li class="other" ><button><a href="#tag1">제품설명</a></button></li>	
		</ul>
		<ul class="front_other" list-style="none" >
			<li class="other"><button><a href="#tag2">후기글</a></button></li>	
		</ul>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<a id="tag1"></a>
	<div>
		<div style="text-align: center; line-height: 2;">
			<center style="text-align: center;"></center><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 20px;">
			<strong>product comment</strong></span><a href="#recall1">▲</a>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
		<br>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
		<br>
		</div>
		<div style="text-align: center; line-height: 2;">
			﻿<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 16px;">나이키의 전부가 담겨있는 </span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">남녀노소 착용하기에 심플한 디자인과</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">천연 가죽 소재의 시원하면서 편안함까지 고루 갖춘</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">[나이키 970] 입니다.</span></span>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;"><br></span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">봄 가을 시즌 언제든 착용 하실 수 있게</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">가벼운 소재로 제작되어 높은 통기성을 지녔구요:)</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">신발의 옆 부분의 양쪽으로 있는 로프를 당겨 </span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">사이즈가 모자르거나 타이트할 때</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">조이거나 풀 수 있습니다.</span></span>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;"><br></span></span>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;"><br></span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">기본에 충실한 디자인과 시원함이 더해진 소재</span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;">베이직한 컬러구성 그리고 착한 가격까지 모든게 완벽한 제품 입니다.</span></span>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;"><br></span></span>
		</div>
		<div data-empty="true" style="text-align: center; line-height: 2;">
			<span style="font-size: 16px;"><span style="font-family: Tahoma,Geneva,sans-serif;"><br></span></span>
		</div>
		<div style="text-align: center; line-height: 2;">
			<span style="font-family: Tahoma, Geneva, sans-serif; font-size: 20px;">&nbsp;
			<span style="background-color: rgb(237, 242, 194);">#나이키(Nike)</span>
			<span style="background-color: rgb(237, 242, 194);">&nbsp;#봄 가을</span> 
			&nbsp;<span style="background-color: rgb(237, 242, 194);">#운동화</span> 
			&nbsp;<span style="background-color: rgb(237, 242, 194);">#편안함</span></span>
		</div>
	</div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<a id="tag2"></a>
<section class="notice">
  <div class="page-title">
        <div class="container3">
            <h3>제품후기<a href="#recall2">▲</a></h3>
        </div>
    </div>
   
  <!-- board list area -->
    <div id="board_list">
        <div class="container">
            <table class="board_table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">No</th>
                    <th scope="col" class="th-num">ID</th>
                    <th scope="col" class="th-num">NAME</th>                    
                    <th scope="col" class="th-title" style="width:200px;">리뷰</th>                  
                    <th scope="col" class="th-date">DATE</th>
                </tr>	
                </thead>
                <tbody>
                	<c:forEach var="productList" items="${productList }" varStatus="status">
	                <tr id="reply${status.index }">
	                    <td>${pagingInfo.currentPage*10-1 }</td>
	                    <td>${productList.productReplyWriter}</td>
	                    <td>${productList.productReplyWriter}</td>
	                    <td>${productList.productReplyContent}</td>
	                    <td>${productList.productReplyRegDate}</td>	                    	                    
	                </tr>
                </c:forEach>
                </tbody>
            </table>        
        </div>
	</div>
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
</section>


</body>
</html>