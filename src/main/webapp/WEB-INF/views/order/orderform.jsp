<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function daumPost() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr="";
            // R : 도로명, J : 지번
            if(data.userSelectedType=='R'){
            	addr = data.roadAddress
            }
            else {
            	addr = data.jibunAddress
            }
            $("#addr1").val(data.zonecode)
            $("#addr2").val(addr)
            $("#addr3").focus()
        }
    }).open();
}

function register() {
	addr1 = $("#addr1").val()
	addr2 = $("#addr2").val()
	addr3 = $("#addr3").val()
	addr1 = addr1 + "/" + addr2 + "/" + addr3
	$("#addr1").val(addr1)
	register_form.submit()
}
</script>
<style type="text/css">
.payArea {
	max-width: 400px;
    overflow: hidden;
    position: relative;
    padding: 0 241px 0 0;
    border: 1px solid #777;
    color: #353535;
    line-height: 1.5;
}
.payArea .method {
    padding: 17px 20px 15px;
    font-weight: bold;
    border-bottom: 3px double #dedede;
}
.payArea .total {
    float: right;
    width: 240px;
    margin: 0 -241px 0 0;
    text-align: right;
    background: #fbfafa;
}
.payArea .payment > .ec-base-table {
    padding: 10px 20px;
}
.payment{
	width:350px;
}
.total{
	width: 150px;
}
</style>
</head>
<body>
	<div class="form-area">
		<h3>주문서작성</h3>
	
		<table border="1" class="cart-main">
			<colgroup>
				<col style="width:27px">
				<col style="width:100px">
				<col style="min-width:100px">
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
		
		<div class="orderArea">
	        <div class="title">
	            <h3>배송 정보</h3>
	            <p class="required"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"> 필수입력사항</p>
	        </div>
	        <div class="ec-base-table typeWrite">
	            <table border="1" summary="">
		<caption>배송 정보 입력</caption>
		<tbody class="">
			<tr class="">
				<th scope="row">배송지 선택</th>
	            	<td>
	                	<div class="address">
	                    	<input id="sameaddr0" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="M" type="radio" autocomplete="off"><label for="sameaddr0">회원 정보와 동일</label>
							<input id="sameaddr1" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="F" type="radio" autocomplete="off"><label for="sameaddr1">새로운 배송지</label>                            <span class="recent ec-shop-RecentDelivery displaynone">
	                                
	                    </div>
	                </td>
	        </tr>
			<tr>
				<th scope="row">받으시는 분 <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"></th>
	            	<td><input id="rname" name="rname"  class="inputTypeText" placeholder="" size="15" value="" type="text"></td>
	        </tr>
			<tr>
				<th scope="row">주소 <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"></th>
					<td>
						<input type="text" id="addr1" name="addr" placeholder="우편번호" readonly>
						<input type="button" class="btn btn-info" value="우편번호 찾기" onclick="daumPost()"><br>
						<input type="text" id="addr2" placeholder="주소" readonly><br>
						<input type="text" id="addr3" placeholder="상세주소">
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
				<img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"></span>
				</th>
		        <td>
		        	<textarea id="omessage" name="omessage"  maxlength="255" cols="70"></textarea>                        
		        </td>
		   </tr>
		</tbody>
		</table>
		</div>
		    </div>
		
		<br><br><br><br>
		
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
						<tbody class="price">
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
				
				<br><br><br><br>
				
				<!-- 결제영역 -->
				<div class="payArea">
			        <div class="payment">
			            <div class="method">
			            	<span class="ec-base-label"><input id="addr_paymethod0" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="cash" type="radio" checked="checked" autocomplete="off"><label for="addr_paymethod0">무통장 입금</label></span>
							<span class="ec-base-label"><input id="addr_paymethod1" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="card" type="radio" autocomplete="off"><label for="addr_paymethod1">카드 결제</label></span>
							<span class="ec-base-label"><input id="addr_paymethod2" name="addr_paymethod" fw-filter="isFill" fw-label="결제방식" fw-msg="" value="kakaopay" type="radio" autocomplete="off"><label for="addr_paymethod2">카카오페이(간편결제) <a href="https://www.kakaopay.com" target="_blank"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label></span>
						</div>
			            <!-- 카드사 직접결제 -->
			            
			                        
			        <div class="ec-base-table">
			        	<!-- 무통장입금 -->
			            <table border="1" summary="" id="payment_input_cash" style="">
							<caption>무통장입금</caption>
				            <colgroup>
								<col style="width:139px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
								<th scope="row">입금자명</th>
								                        <td><input id="pname" name="pname" fw-filter="" fw-label="무통장 입금자명" fw-msg="" class="inputTypeText" placeholder="" size="15" maxlength="20" value="" type="text"></td>
								                    </tr>
								<tr>
								<th scope="row">입금은행</th>
									<td>
								    	<select id="bankaccount" name="bankaccount" fw-filter="" fw-label="무통장 입금은행" fw-msg="">
											<option value="-1">::: 선택해 주세요. :::</option>
											<option value="은행링크">하나은행 111-111111-11111</option>
										</select>                            
										<p class="gBlank5 "><a href="#none" class="btnNormal" id="btn_bank_go">은행사이트 바로가기</a></p>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>	
				
					<!-- 무통장입금, 카드결제, 휴대폰결제-->
					<div id="pg_paymethod_info" class="payHelp" style="">
			        	<p id="pg_paymethod_info_shipfee" class="ec-base-help">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
			            <p id="pg_paymethod_info_pg" class="ec-base-help" style="display: none;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</p>
			        </div>
			
			        <!-- 카카오페이 -->
			        <div id="kakaopay_info" class="payHelp" style="display: none;">
			        	<p class="ec-base-help">휴대폰에 설치된 카카오톡 앱에서 비밀번호 입력만으로 빠르고 안전하게 결제가 가능한 서비스 입니다.</p>
			            <p class="ec-base-help">카카오머니로 결제 시, 현금영수증 발급은 ㈜카카오페이에서 발급가능합니다.</p>
			        </div>
			
			           
			
			        <div class="total">
			            <h4>
						<strong id="current_pay_name">입금수단</strong> <span>최종결제 금액</span>
						</h4>
							<p class="price"><span>KRW </span><input id="total_price" name="total_price" class="inputTypeText" placeholder="" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;" size="10" readonly="1" value="" type="text"><span></span></p>
						    <p class="paymentAgree" id="chk_purchase_agreement" style=""><input id="chk_purchase_agreement0" name="chk_purchase_agreement" fw-filter="" fw-label="구매진행 동의" fw-msg="" value="T" type="checkbox" style="">
						    <label for="chk_purchase_agreement0">결제정보를 확인하였으며, 구매진행에 동의합니다.</label></p>           
						<div class="ec-base-button gColumn">
							<a href="#none" id="btn_payment" class="btnSubmit size">
							<span class="">결제하기</span>
							</a>
				        </div>            
				
			   		 </div>
					
			</div>
		</div>
		
		<!-- 무이자 할부 이용안내 -->
		<div class="ec-base-help">
        <h3>무이자 할부 이용안내</h3>
        <div class="inner">
        	<ul>
				<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</li>
                <li>무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
            </ul>
		</div>
		
		
		<div class="ec-base-help">
        <h3>이용안내</h3>
        <div class="inner">
            <h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라 해결하시기 바랍니다.</h4>
            <ol>
				<li class="item1"><a href="javascript:;" onclick="window.open('https://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">안심클릭 결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
                <li class="item2"><a href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp" target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a></li>
                <li class="item3"></li>
            </ol>
        <h4>세금계산서 발행 안내</h4>
            <ol>
				<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</li>
                <li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
                <li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
                <li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
                <li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
            </ol>
		<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
            <ol>
				<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
                <li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
                <li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
            </ol>
		<h4>현금영수증 이용안내</h4>
            <ol>
				<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
                <li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
                <li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
                <li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
                <li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
            </ol>
		</div>
    	</div>
		
		
				
		
    	</div>	
	</div>		    
</body>
</html>