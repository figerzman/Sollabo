<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	// 수량 버튼 조작
	let quantity = $(".quantity_input").val();
	$(".plus_btn").on("click", function(){
		$(".quantity_input").val(++quantity);
	});
	$(".minus_btn").on("click", function(){
		if(quantity > 1){
			$(".quantity_input").val(--quantity);	
		}
	});
	
/* 	// 서버로 전송할 데이터
	const form = {
			memno : '${member.memberno}',
			productno : '${goodsInfo.productno}',
			productordercount : ''
	}
	 */
	// 장바구니 추가 버튼
	$(".btn_cart").on("click", function(e){

	});
	
	form.productordercount = $(".quantity_input").val();
	$.ajax({
		url: '/cart/add',
		type: 'POST',
		data: form,
		success: function(result){
		}
	})
</script>


<style type="text/css">

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}

.cart-wrap{
	max-width: 1080px;
    margin: 0 auto;
    padding: 0 200px
}

body {
    min-width: 950px;
    -webkit-text-size-adjust: none;
    -moz-text-size-adjust: none;
    -ms-text-size-adjust: none;
}


/* title */
.titleArea {
    min-height: 30px;
    margin: 10px 0 30px;
    text-align: center;
}

.titleArea h2 {
    display: inline-block;
    font-family: 'Poppins','Nanum Square','Noto Sans KR','맑은 고딕','Malgun Gothic',sans-serif;
    color: #222;
    font-size: 28px;
    font-weight: 600;
    letter-spacing: 0.03em;
    word-spacing: 2px;
    text-transform: uppercase;
    *display: inline;
}

.orderListArea .title {
    position: relative;
    height: 38px;
    margin: 0 0 10px 0;
    padding: 0 0 0 9px;
    border: 1px solid #d7d5d5;
    border-bottom: 0;
    line-height: 38px;
    background: #f6f6f6;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}

.title {
    margin: 40px 0 10px 10px;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}

.orderListArea .title h3 {
    display: inline-block;
    vertical-align: middle;
    color: #353535;
    font-size: 12px;
}

.orderListArea .ec-base-table table {
    position: relative;
 /*    margin: 10px 0 0; */
    border: 1px solid #ddd;
/*     border-top: 0; */
    line-height: 1.5;
}

.ec-base-table thead th {
    padding: 11px 0 10px;
    border-left: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    color: #333;
    vertical-align: middle;
    font-weight: normal;
    background: #fafafa;
}

.ec-base-table table:before {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    content: "";
    width: 100%;
    height: 1px;
    background: #ddd;
}
.ec-base-table.typeList tfoot td {
    padding: 15px 10px 17px;
    background: #fbfafa;
}

.ec-base-button {
    padding: 10px 0 50px;
    border-bottom: 1px solid #ddd;
}

[class^='btnEm'], a[class^='btnEm'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid transparent;
    border-radius: 2px;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #fff;
    background-color: #999;
}


[class^='btnSubmit'], a[class^='btnSubmit'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid transparent;
    border-radius: 2px;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #fff;
    background-color: #333;
}



[class^='btnNormal'], a[class^='btnNormal'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid #ddd;
    border-radius: 2px;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #333;
    background-color: #fff;
}
li {
    list-style: none;
}



div.ec-base-help {
    margin: 20px 0;
    border: 1px solid #ddd;
    line-height: 18px;
}

div.ec-base-help h4 {
    margin: 22px 0 -4px;
    color: #404040;
    font-size: 12px;
    font-weight: normal;
}
div.ec-base-help {
    margin: 20px 0;
    border: 1px solid #ddd;
    line-height: 18px;
}

div.ec-base-help ol li {
    padding: 0 0 0 25px;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_number.png) no-repeat;
}

div.ec-base-help ol .item1 {
    background-position: -484px 0;
}
div.ec-base-help ol .item2 {
    background-position: -434px -100px;
}
div.ec-base-help ol .item3 {
    background-position: -384px -200px;
}
div.ec-base-help ol .item4 {
    background-position: -334px -300px;
}
div.ec-base-help ol .item5 {
    background-position: -284px -400px;
}


</style>
</head>
<body>
	
	<c:import url="../default/header.jsp"/>	

	<div class="cart-wrap"> 
		
	<div class="titleArea">
	    <h2>cart</h2>
	</div>
	
	<div class="orderListArea ">
        <div class="title">
            <h3>장바구니 내역</h3>
        </div>
	
	<div class="ec-base-table typeList gBorder ">
		
		<table border="1" class="cart-main">
			<colgroup>
				<col style="width:27px">
				<col style="width:100px">
				<col style="width:auto">
				<col style="width:130px">
				<col style="width:80px">
				<col style="width:150px">
			</colgroup>
			<thead>
				<tr>
				<th scope="col"><input type="checkbox" class="all_check_input input_size_20" checked="checked"></th>
	                    <th scope="col">이미지</th>
	                    <th scope="col">상품정보</th>
	                    <th scope="col">판매가</th>
	                    <th scope="col">수량</th>
	                    <th scope="col">합계</th>
	            </tr>
	        </thead>
	        
			
	        <c:forEach var="dto" items="${cartList}">
	        <tbody class="cart-center">
	        	<tr class="cart-record-">
					<td>
						<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked">
					</td>
			       	<td class="pu-img"> <!-- pu-img 제품이미지 -->
			       		<a href="/">
			       		<img src="" alt=""></a>
			       	</td>
			        <td class="pu-data"> <!-- pu-data 제품정보 -->
			     		${dto.memNo}
			        </td>
			        <td class="right">
			        	<div id="product_price_div0" class="">
							<strong>${dto.productPrice}KRW</strong>
							<p class="displaynone"></p>
						</div>
			        </td>
			        <td>
			        	<div class="table_text_align_center quantity_div">
							<input type="text" value="${cartcnt}" class="quantity_input">	
							<button class="quantity_btn plus_btn">+</button>
							<button class="quantity_btn minus_btn">-</button>
						</div>
						<a class="quantity_modify_btn" data-cartId="${ci.cartno}">변경</a>	           
			        </td>
			        <td class="right">
						<strong>KRW <span id="sum_price_front0"></span></strong>\
						<div class="displaynone">
						
						</div>
					</td>
	        	</tr>
	        </c:forEach>
			</tbody>
			<tfoot class="right">
			
				<tr>
					<td colspan="8">
					상품구매금액<span class="cal"> <!-- 상품가격총합들어갈자리 --></span>
					 - 상품할인금액 <span class="cal" id="discount"></span> = 합계 : KRW <span class="sum"></span>
					</td>
		        </tr>
	        </tfoot>
		</table>
		</div>
		</div>			
		<div class="cart-edit ">
			<span class="gLeft">
		    	<strong class="text">선택상품을</strong>
		        <a href="#none" class="btnEm" onclick="Basket.deleteBasket()">
		        <i class="icoDelete"></i> 삭제하기</a>
	        </span>
			<span class="gRight">
	            <a href="#none" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
	        </span>
		</div>
		
		<!-- 총 주문금액 : 국내배송상품 -->
		<!-- 총 주문금액 : 국내배송상품 -->
		
		<div class="title">
       		<h3>결제 예정 금액</h3>
    	</div>
    	<div class="ec-base-table typeList gBorder total">
			<table border="1" summary="">
            <colgroup>
				<col style="width:33.33%">
				<col style="width:33.33%" class="">
				<col style="width:33.33%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">
						<strong>총 주문 금액</strong> 
					</th>
					<th scope="col" class="">
						<strong>총 </strong><strong id="total_addsale_text" class="">할인</strong>
					</th>
					<th scope="col"><strong>총 결제예정 금액</strong></th>
				</tr>
			</thead>
			<tbody class="center">
				<tr>
				<td class="price">
					<div class="box txt16">
					<strong>KRW <span id="total_order_price_view" class="txt22">62,000</span></strong> <span class="displaynone"><span id="total_order_price_ref_view"><span class="eRefPrice"></span></span></span>
					</div>
				</td>
				<td class="option ">
					<div class="box txt16">
					<strong>-</strong> <strong>KRW <span id="total_sale_price_view" class="txt22">0</span></strong> <span class="displaynone"><span id="total_sale_price_ref_view"><span class="eRefPrice"></span></span></span>
					</div>
				</td>
				<td>
					<div class="box txtEm txt16">
					<strong>=</strong> <strong>KRW <span id="total_order_sale_price_view" class="txt22">62,000</span></strong> <span class="displaynone"><span id="total_order_sale_price_ref_view"><span class="eRefPrice"></span></span></span>
					</div>
				</td>
		      </tr>
		    </tbody>
			</table>
			</div>
			<br>
		
		<div class="order-button">
			<a href="/sollabo/order/orderform" onclick="Basket.orderAll(this)"   class="btnSubmitFix sizeM  bsBtnColorBG bsLetterspacing06 ">
			전체상품주문
			</a>
			<a href="/sollabo/order/orderform" onclick="cart.orderSelectcart(this)""  class="btnSubmitFix sizeM  bsBtnColorBG bsLetterspacing06 ">
			선택상품주문
			</a>
	
		</div>
		

		
		<div class="ec-base-help "><h3>이용안내</h3>
		<div class="inner">
		        <h4>장바구니 이용안내</h4>
		        <ol>
					<li class="item1">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>

		        </ol>
		
		</div>
		</div>
	</div>
	
	<div>
		
	
	
	</div>
		
	
	
	
	
	<c:import url="../default/footer.jsp"/>    
</body>
</html>