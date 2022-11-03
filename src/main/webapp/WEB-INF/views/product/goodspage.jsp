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
    function search(type){
    	alert('@@');
    	if(type == 'color' ){
    		if($('color').val() == "#"){
    			alert('값이 없습니다')
    			$('#total').hide();
    		}else{
    			
    		}
    	}
    	
    }
    	
  
  
/*     $(function() {
    	$(function search(type) {
    		if(type=='color' ){
    			if($('size').val() ==null){
    				alert('안됩니다')
    			}else{
    				$('#total').hide();
    			}			
    		}
    		if(type=='size'){
    			if($('color').val() ==null){
    				alert('안됩니다')
    			}else{
    				$('#total').hide();
    			}
    		}
    		if($('color').val() !=null && $('size').val() !=null){
    				$('#total').show();			
    		}
    	})

    });  */
    /*   $('#total').hide(); 
    $('#size').change(function(){
    	console.log('111' + $('#color').val())
    	console.log('222' + $('#size').val())
        if($('#color').val() != '#') {
        	$('#size').val()
        } else {
        	alert('색상을 선택해주세요')      
        } if($('#size').val() != '#'){
        	$('#total').show()
        } else{
        	$('#total').hide()
        }
    }); */
   /*  $("#tb_color").change(function() {
    	alert("111")
        var state = $("#tb_color option:selected").val();
    	alert("111")
        console.log(0)
        
        if(state == "라이트블루") {
            $(".total_product").show();
        } else {
           $('.total_product').hide();
        }
    }); 
     */
   /*  // onchange에서 호출하는 함수. 
    function test(obj){
        // 'obj'는 this를 지칭하는 것입니다.
        alert($(obj).val());
        
        // 값 비교로 테스트 가능.
        if($(obj).val() == ""){
            alert("값이 없습니다.");
        } else if($(obj).val() == "라이트블루"){
            alert("라이트블루");
        } else if($(obj).val() == "블루"){
            alert("블루");
        } else if($(obj).val() == "딥블루"){
            alert("딥블루");
        }
    } */
    
  
    
    
</script>
<style type="text/css">
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


</style>
</head>
<body>
<h2 ><a href="${pageContext.request.contextPath }/">제품 상세 페이지</a></h2>
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
	
	<!-- 인포 구역 -->
	<div class="detail_infoarea">	<!-- 인포 전체 --> 
		<div class="head">
			<h2 class="bottom_line">${productList.productName }</h2> <!-- 상품(이름) -->
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
						<strong>KRW ${productList.productPrice }</strong>
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
						<option  value="#">- [필수] 옵션을 선택해 주세요 -</option>
						<option  value="#">-------------------</option>
						 <option value="라이트블루">라이트블루(light blue)</option>
						 <option value="블루" link_image="">블루(blue)</option>
						 <option value="딥블루" link_image="">딥블루(deep blue)</option>
						 <option value="라이트블랙" link_image="">라이트블랙(light black)</option>
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
						<option value="#">- [필수] 옵션을 선택해 주세요 -</option>
						<option value="#">-------------------</option>
						 <option value="스몰" link_image="">Small</option>
						 <option value="미디엄" link_image="">Medium</option>
						 <option value="라지" link_image="">Large</option>
						 <option value="엑스라지" link_image="">X-Large</option>
						 <option value="투엑스라지" link_image="">2X-Large</option>
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
							<td>${productList.productName }</td>
                            <td>
                            	<span class="quantity">
	                                <input id="quantity" name="quantity_name" style="" value="0" type="text">                                        
	                                <a href="#none"><img src="image/upbtn.gif" alt="수량증가" class="QuantityUp up"></a>
	                                <a href="#none"><img src="image/downbtn.gif" alt="수량감소" class="QuantityDown down"></a>
                                </span>
                           </td>
                           <td class="right">
						   		<span class="quantity_price">${productList.productPrice }</span> 						   		
                           </td>
                       </tr>
                   </tbody>
                   	<tbody class="option_products"><!-- 정리 -->
                            <tr class="option_product " data-option-index="1" target-key="1563">
                            	<td>
                            		<input type="hidden" class="option_box_id" id="option_box1_id" value="P0000CID00BE" name="item_code[]" data-item-add-option="" data-item-reserved="N" data-option-id="00BE" data-option-index="1"> 
                            		<p class="product">${productList.productName }
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
                             		<span class="ec-front-product-item-price" code="P0000CID00BE" product-no="1563">KRW : ${productList.productPrice }</span>
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
						<em>KRW ${productList.productPrice } <!-- 곱하기 생각해봐야함 --></em> "공백"
					</strong>
				</span>
			</div>
			</div>
	<!-- 구매버튼 -->
		<div class="total_btn">
				<a href="/sollabo/cart/cart" class="btnSubmit" >            
					<span id="buybtn">구매하기</span>
				</a>
				<!-- <a href="#" class="btnNormal" >            
					<span id="cartbtn">장바구니</span>
				</a> -->
		</div>	
</div>

</body>
</html>