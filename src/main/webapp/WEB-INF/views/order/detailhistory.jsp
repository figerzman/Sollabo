<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 10/27수정본 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문상세내역</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}

body {
    min-width: 950px;
    -webkit-text-size-adjust: none;
    -moz-text-size-adjust: none;
    -ms-text-size-adjust: none;
}
#contents {
    max-width: 1080px;
    margin: 0 auto;
    padding: 0 200px;
}

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

/* 배송 정보 */
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


.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #ddd;
    border-bottom-width: 0;
    color: #333;
    text-align: left;
    font-weight: normal;
    background-color: #fafafa;
}

.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #ddd;
    color: #333;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}


input[type=text], input[type=password] {
    height: 18px;
    line-height: 20px;
    padding: 2px 4px;
    border: 1px solid #ddd;
    color: #333;
    font-size: 12px;
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
/* 결제 총금액 */

.totalArea .ec-base-table.total th {
    height: 39px;
    background: #fbfafa;
}

.total .ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #ddd;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}

.title h3 {
    display: inline-block;
    vertical-align: middle;
    color: #353535;
    font-size: 12px;
}

.title h3 {
    display: inline-block;
    vertical-align: middle;
    color: #353535;
    font-size: 12px;
}
.totalArea .ec-base-table.total td {
    height: 58px;
}
.txt16 {
    font-size: 16px;
}

/* 결제 부분 */
.payArea {
    overflow: hidden;
    position: relative;
    padding: 0 241px 0 0;
    border: 1px solid #777;
    color: #353535;
    line-height: 1.5;
    height: 350px;
}
.payArea .payment {
    float: left;
    width: 100%;
}
.payArea .method {
    padding: 17px 20px 15px;
    font-weight: bold;
    border-bottom: 3px double #dedede;
}


.payArea .payment > .ec-base-table {
    padding: 10px 20px;
}

.payArea .payHelp {
    margin: 0 0 0 130px;
}


span.ec-base-help, p.ec-base-help, ul.ec-base-help li {
    margin: 2px 9px;
    padding: 1px 0 1px 20px;
    line-height: 1.4;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_info.gif) no-repeat 0 2px;
}

.payArea .total {
	position: static;
    float: right;
    width: 240px;
    height: 100px;
    margin: -290px -241px 0 0;
    text-align: right;
    background: #fbfafa;
}

.payArea .total h4 {
    margin: 17px 10px 0 0;
    color: #353535;
    font-size: 12px;
}




.payArea .payHelp {
    margin: 0 0 0 130px;
}

.payArea:after {
    position: absolute;
    top: 0;
    right: 240px;
    display: block;
    content: "";
    width: 1px;
    height: 100%;
    background: #777;
}


p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.payArea .total .paymentAgree {
    position: relative;
    margin: 30px 0 0 14px;
    padding: 0 0 0 24px;
    text-align: left;
}

.payArea .total .ec-base-button {
    margin: 6px 10px 0;
}

.payArea .total .price input#total_price {
    width: 190px;
    height: auto;
    padding: 0;
    border: 0;
    color: #008bcc;
    font-size: 28px;
    font-weight: bold;
    letter-spacing: -1px;
    line-height: normal;
    background: #fbfafa;
}

.payArea .payment > .ec-base-table {
    padding: 10px 20px;
}

.payment {
    float: left;
    width: 100%;
}
.payArea .total .paymentAgree {
    position: relative;
    margin: 30px 0 0 14px;
    padding: 0 0 0 24px;
    text-align: left;
}



li {
    list-style: none;
}

div.ec-base-help h4 {
    margin: 22px 0 -4px;
    color: #404040;
    font-size: 12px;
    font-weight: normal;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
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
</style>
</head>
<body>
	
	<c:import url="../default/header.jsp"/>	
	
	<div id="contents">
	
	<div class="titleArea">
		<h2>주문서작성</h2>
	</div>
	<div class="orderListArea ">
        <div class="title">
            <h3>국내배송상품 주문내역</h3>
        </div>
	
	<div class="ec-base-table typeList gBorder ">
		<table border="1" class="cart-main">
			<colgroup>	
				<col style="width:100px">
				<col style="width:auto">
				<col style="width:130px">
				<col style="width:80px">
				<col style="width:150px">
			</colgroup>
			<thead>
				<tr>
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
					 - 상품할인금액 <span class="cal" id="discount"></span> = 합계 : KRW <span class="sum"></span>
					</td>
		        </tr>
	        </tfoot>
	        <tbody class="cart-center">
	        	<tr class="cart-record-">
			       	<td class="pu-img"> <!-- pu-img 제품이미지 -->
			       		<a href="/">
			       		<img src="" alt=""></a>
			       	</td>
			        <td class="pu-data"> <!-- pu-data 제품정보 -->
			     
			        </td>
			        <td class="right">
			        	<div id="product_price_div0" class="">
							<strong>KRW</strong>
							<p class="displaynone"></p>
						</div>
			        </td>
			        <td>
			           2		           
			        </td>
			        <td class="right">
						<strong>KRW <span id="sum_price_front0"></span></strong>\
						<div class="displaynone">
						
						</div>
					</td>
	        	</tr>
			</tbody>
		</table>
		</div>
		</div>			
		<div class="orderArea">
	        <div class="title">
	            <h3>배송 정보</h3> 
	        </div>
	        <div class="ec-base-table typeWrite">
	            <table border="1" summary="">
		<caption>배송 정보 확인</caption>
		<tbody class="">	
			<tr>
				<th scope="row">받으시는 분 </th>
	            	<td><input id="rname" name="rname"  class="inputTypeText" placeholder="" size="15" value="" type="text"></td>
	        </tr>
			<tr>
				<th scope="row">주소</th>
					<td>
						<input type="text" id="addr1" name="addr" placeholder="우편번호" readonly><br>
						<input type="text" id="addr2" placeholder="주소" size="40" readonly><br>
						<input type="text" id="addr3" placeholder="상세주소" size="40">
					</td>
			</tr>
			<tr>
				<th scope="row">휴대전화</th>
					<td>
						<select id="mobile1" name="mobile[]">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
						</select>
						-
						<input id="mobile2" name="mobile[]" maxlength="4" required>
						-
						<input id="mobile3" name="mobile[]" maxlength="4" required>
					</td>
			</tr>
		</tbody>
	            
		<tbody class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
				<tr>
					<th scope="row">이메일</th>
					<td><input type="email" id="user_mail" name="userMail" required></td>
				</tr>	
		</tbody>
		<!-- 국내 배송관련 정보 -->
		<tbody class="delivery ">
			<tr class="">
				<th scope="row">배송메시지 
					<span class="displaynone">
					</span>
				</th>
		        <td>
		        	<textarea id="omessage" name="omessage"  maxlength="255" cols="70"></textarea>                        
		        </td>
		   </tr>
		</tbody>
		</table>
		</div>
		    </div>

		
	</div>		
  	
  	<c:import url="../default/footer.jsp"/>   
</body>
</html>