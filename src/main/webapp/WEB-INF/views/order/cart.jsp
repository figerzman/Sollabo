<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 테스트입니다 */
</style>
</head>
<body>
	<h3>장바구니</h3>

	<table border="1" class="cart-main">
		<colgroup>
			<col style="width:27px">
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:120px">
			<col style="width:120px">
		</colgroup>
		<thead>
			<tr>
			<th scope="col"><input type="checkbox" onclick=""></th>
                    <th scope="col">이미지</th>
                    <th scope="col">상품정보</th>
                    <th scope="col">판매가</th>
                    <th scope="col">수량</th>
                    <th scope="col">합계</th>
            </tr>
        </thead>
		<tfoot class="right">
			<tr>
				<td colspan="8">
				상품구매금액<span class="cal"> <!-- 상품가격총합들어갈자리 --></span>
				 - 상품할인금액 <span class="cal" id="discount"></span> = 합계 : KRW <span class="cal"></span>
				</td>
	        </tr>
        </tfoot>
        <tbody class="cart-">
        	<tr class="xans-record-">
				<td>
					<input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal">
				</td>
		       	<td class="thumb gClearLine">
		       		<a href="/product/detail.html?product_no=3594&amp;cate_no=360">
		       		<img src="" alt=""></a>
		       	</td>
		        <td class="left gClearLine">
		        	<ul class="xans-element- xans-order xans-order-optionall option">
		        		<li class="xans-record-">
					</ul>
		        </td>
		        <td class="right">
		        	<div id="product_price_div0" class="">
						<strong>KRW</strong>
						<p class="displaynone"></p>
					</div>
		        </td>
		        <td>
		        	<span class="">
		            <span class="ec-base-qty">
		            <input id="quantity_id_0" name="quantity_name_0" size="2" value="2" type="text">
		            <a href="javascript:;" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);">
		            <img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="수량증가" class="up">
		            </a>
		            <a href="javascript:;" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);">
		            <img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="수량감소" class="down">
		            </a></span>
		            <a href="javascript:;" class="btnNormal gBlank5" onclick="Basket.modifyQuantity()">변경</a></span>
		        </td>
		        <td class="right">
					<strong>KRW <span id="sum_price_front0"></span></strong>\
					<div class="displaynone">
					
					</div>
				</td>
        	</tr>
		</tbody>
	</table>

	<div class="xans-element- xans-order xans-order-selectorder ec-base-button ">
		<span class="gLeft">
	    	<strong class="text">선택상품을</strong>
	        <a href="#none" class="btnEm" onclick="Basket.deleteBasket()"><i class="icoDelete"></i> 삭제하기</a>
        </span>
		<span class="gRight">
            <a href="#none" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
        </span>
	</div>
	
	<!-- 총 주문금액 : 국내배송상품 -->
	<div class="cart-delete">
	
		<table border="1" summary="">
			<caption>총 주문금액</caption>
		    <colgroup>
				<col style="width:20%;">
				<col style="width:20%;" class="displaynone">
				<col style="width:60%;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">
						<strong>총 상품금액</strong>
					</th>
					<th scope="col" id="total_benefit_price_title_area" class="displaynone">
						<strong>할인금액</strong>
					</th>
				    <th scope="col">
				    	<strong>결제예정금액</strong>
				    </th>
				</tr>
			</thead>
			<tbody class="center">
				<tr>
					<td>
						<div class="box txt16">
							<strong>KRW <span class="txt23">
							<span class="total_product_price_display_front"></span>
							</span></strong> 
							<span class="txt14 displaynone"><span class="total_product_price_display_back"></span></span>
						</div>
					</td>
					<td class="displaynone">
						<div class="box txt16">
						<strong>KRW <span class="txt23"><span class="total_product_vat_price_front">0</span></span></strong> 
						<span class="txt14 displaynone"><span class="total_product_vat_price_back"></span></span>
						</div>
					</td>                  
					<td>
					<div class="box txtEm txt16">
					<strong class="txt23">= </strong><strong>KRW <span id="total_order_price_front" class="txt23"></span></strong> <span class="txt14 displaynone"></span>
					</div>
					</td>
				</tr>
			</tbody>
		</table>
		<a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_benefit');">
		<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
	</div>


</body>
</html>