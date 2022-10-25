<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}

.history-wrap{
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

	
</style>


</head>
<body>

<c:import url="../default/header.jsp"/>	

	<div class="history-wrap"> 
		
	<div class="titleArea">
	    <h2>주문 내역</h2>
	</div>
	
	<div class="orderListArea ">
        <div class="title">
            <h3>상품 주문내역</h3>
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
					 - 상품할인금액 <span class="cal" id="discount"></span> = 합계 : KRW <span class="sum"></span>
					</td>
		        </tr>
	        </tfoot>
	        <tbody class="cart-center">
	        	<tr class="cart-record-">
					<td>
						<input type="checkbox" name="pu-select">
					</td>
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
	




	</div>
	
	
</body>
</html>