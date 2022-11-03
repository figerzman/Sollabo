<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
<script>

function count(type)  {
    // 결과를 표시할 element
   var value = $('#'+type).val();
   var result =  type.replace(/[0-9]/g,"")
    const resultElement = $('.quantity_input'+value);
    // 현재 화면에 표시된 값
    let number = $('.quantity_input'+value).val();
    
    // 더하기/빼기
    if(result === 'plus' ) {
      number = parseInt(number) + 1;
    }else if(result === 'minus')  {
       if($('.quantity_input'+value).val() < 2){
          alert("더이상 내릴수 없습니다")
         }else{
            number = parseInt(number) - 1;          
         }
    }
    
    // 결과 출력
   $('.quantity_input'+value).val(number);
  } 



  $(".all_check_input").on("click", function(){

	    /* 체크박스 체크/해제 */
	    if($(".all_check_input").prop("checked")){
	       $(".individual_cart_checkbox").attr("checked", true);
	    } else{
	       $(".individual_cart_checkbox").attr("checked", false);
	    }
	    
	    setTotalInfo($(".cart_data_td"));   
	    
	 });



 $(document).ready(function() {
	  $('#deleteButton').click(function(){
		  
		  var $checked =('table input[type=checkbox]:checked')
		  
		  console.log( $checked.length)
		  
		  
		  
	  });

});




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
    pad	       margin: 20px 0;
    border: 1px solid #ddd;
    line-height: 18px;
}

div.ec-base-help ol li {
    padding: 0 0 0 25px;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_number.png) no-repeat;
}

div.ec-basel .item1 {
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
/* 

.quantity_div{
				position: relative;
			    width: 42px;
			    height: 25px;
			    text-align: left;
			    margin: 5px auto;		
			}
			.quantity_input{
				position: absolute;
				width: 27px;
			    height: 23px;
			    text-align: center;
			    border: 1px solid #c6c6c6;
			    border-right: 0px;
			    line-height: 19px;
			    font-size: 12px;
			    color: #4c4848;	
			    left: 0;
			}
.quantity_btn{
				position: absolute;
			    border: 1px solid #aaa;
			    color: #3a60df;
			    width: 14px;
			    height: 13px;
			    padding: 0px;
			    background-color: #fff;
			    font-weight: bold;
			    font-size: 7px;
			    line-height: 6px;
			    vertical-align: middle;	
			}
			.plus_btn{
				top: 0;
				right: 0
			}
			.minus_btn{
				bottom: 0;
				right: 0
			}		
			.quantity_modify_btn{
				border: 1px solid #d0d0d0;
			    height: 13px;
			    line-height: 13px;
			    background-color: #fff;
			    text-align: center;
			    width: 28px;
			    display: inline-block;
			    padding: 3px 6px 2px;
			    margin-top: 3px;		
			    font-size: 7px;
			}
			.table_text_align_center{
				text-align: center;
			}
			.delete_btn{
				width: 40px;		
			} */
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
					<th scope="col"><!-- <input type="checkbox" class="all_check_input input_size_20" checked="checked"> --><!--  <input type="checkbox" id="allCheckBox" onclick="allChecked()"> -->
					<div class="allCheck">
				   		<input type="checkbox" name="allCheck" id="allCheck" />
				   		<script>
							$("#allCheck").click(function(){
							 var chk = $("#allCheck").prop("checked");
							 if(chk) {
							  $(".chBox").prop("checked", true);
							 } else {
							  $(".chBox").prop("checked", false);
							 }
							});
						</script>
				   		
				 	</div>
					</th>
	                    <th scope="col">이미지</th>
	                    <th scope="col">상품정보</th>
	                    <th scope="col">판매가</th>
	                    <th scope="col">수량</th>
	                    <th scope="col">합계</th>
	            </tr>
	        </thead>
	        
			<c:set var="sum" value="0" />
	        <c:forEach var="dto" items="${cartList}" varStatus="status">
	        <tbody class="cart-center">
	        	<tr class="cart-record-">
					<td class="cart_data_td">
						<div class="checkBox">
							<input type="checkbox" name="chBox" class="chBox" data-cartNo="${dto.cartNo}" />
							<script>
								 $(".chBox").click(function(){
								  $("#allCheck").prop("checked", false);
								 });
							</script>
						</div>
						<input type="hidden" class="individual_totalPrice_input" value="${dto.productPrice * dto.cartCnt}">
						<input type="hidden" class="individual_productPrice_input" value="${dto.productPrice}">
						<input type="hidden" class="individual_cartCnt_input" value="${dto.cartCnt}">
						<input type="hidden" class="individual_productNo_input" value="${dto.productNo}">								
					</td>
			       	<td class="pu-img"> <!-- pu-img 제품이미지 -->
			       		<a href="/">
			       		<img src="" alt=""></a>
			       	</td>
			        <td class="pu-data" align="center"> <!-- pu-data 제품정보 -->
			     		${dto.productNo}	
			        </td>
			        <td class="right" align="center">
			        	<fmt:formatNumber value="${dto.productPrice}" pattern="KRW #,###" />	
			        </td>
			        <td align="center">
			        	
                    	<div class="table_text_align_center quantity_div">
                    <!-- status.index로 각각 번호를 매겨준다 -->
	                        <input type="text" value="${dto.cartCnt}" class="quantity_input${status.index}" name="result" id="quantity_input${status.index}">  
	                        <button class="quantity_btn plus_btn" onclick='count(this.id)' value="${status.index}" id="plus${status.index}" >+</button>
	                        <button class="quantity_btn minus_btn" onclick='count(this.id)' value="${status.index}" id="minus${status.index}">-</button>
	                        <button class="quantity_modify_btn" > 변경 </button> 
	                        
                     	</div>
                    
                       
                 	 </td>
                 <td class="right" align="center">
                  <fmt:formatNumber value="${dto.productPrice * dto.cartCnt}" pattern="KRW #,###" />
               </td>
              </tr>
           <c:set var="sum" value="${sum + (dto.productPrice * dto.cartCnt)}" />
           </c:forEach>
         </tbody>
         <tfoot class="right">
         
            <tr>
               <td colspan="8">
               상품구매금액<fmt:formatNumber pattern="###,###,###" value="${sum}" />
                - 상품할인금액 <span class="cal" id="discount"></span> = 합계 : KRW <fmt:formatNumber pattern="###,###,###" value="${sum}" />
               </td>
              </tr>
           </tfoot>
      </table>
      </div>
      </div>         
      <div class="cart-edit ">
         <span class="gLeft">
             <strong class="text">선택상품을</strong>
                <button class="delete_btn" data-cartno="${dto.cartNo}"> 삭제하기 </button>
              <!-- <a href="#none" class="btnEm" onclick="Basket.deleteBasket()">
              <i class="icoDelete"></i> 삭제하기 </a> -->
           </span>
   
      </div>
      <div class="delBtn">
         <button type="button" class="selectDelete_btn">선택 삭제</button>
       <!--   <script>
             $(".selectDelete_btn").click(function(){
              var confirm_val = confirm("정말 삭제하시겠습니까?");
              
              if(confirm_val) {
               var checkArr = new Array();
               
               $("input[class='chBox']:checked").each(function(){
                checkArr.push($(this).attr("data-cartNum"));
               });
                
               $.ajax({
                url : "/shop/deleteCart",
                type : "post",
                data : { chbox : checkArr },
                success : function(){
                 location.href = "/shop/cartList";
                }
               });
              } 
             });
         </script>  -->
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
               <strong> KRW </strong><fmt:formatNumber pattern="###,###,###" value="${sum}" />
               </div>
            </td>
            <td class="option ">
               <div class="box txt16">
               <strong>-</strong> <strong>KRW <span id="total_sale_price_view" class="txt22">0</span></strong> <span class="displaynone"><span id="total_sale_price_ref_view"><span class="eRefPrice"></span></span></span>
               </div>
            </td>
            <td>
               <div class="box txtEm txt16">
               <strong> KRW </strong><fmt:formatNumber pattern="###,###,###" value="${sum}" />
               </div>
            </td>
            </tr>
          </tbody>
         </table>
         </div>
         <br>
      
      <div class="order-button">
         <!-- <a href="/sollabo/order/orderform" onclick="Basket.orderAll(this)"   class="btnSubmitFix sizeM  bsBtnColorBG bsLetterspacing06 ">
         전체상품주문
         </a> -->
         <a href="/sollabo/order/orderform" onclick="cart.orderSelectcart(this)" class="btnSubmitFix sizeM  bsBtnColorBG bsLetterspacing06 ">
         선택상품주문
         </a>
   
      </div>
      
      
      <!-- <div class="ec-base-help "><h3>이용안내</h3>
         <div class="inner">
                 <h4>장바구니 이용안내</h4>
                 <ol>
                  <li class="item1">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
   
                 </ol>
         
         </div>
      </div> -->
   </div>

	


	
	<c:import url="../default/footer.jsp"/>    
</body>
</html>




