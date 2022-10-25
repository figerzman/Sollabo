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
    margin: 70px auto;
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
    font-family: 'Poppins','Nanum Square','Noto Sans KR','���� ���','Malgun Gothic',sans-serif;
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
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
}

.title {
    margin: 40px 0 10px 10px;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
div, p {
    color: #444;
}
	
</style>


</head>
<body>

<c:import url="../default/header.jsp"/>	

	<div class="history-wrap"> 
	
	<div class="titleArea">
	    <h2>�ֹ� ����</h2>
	</div>
		
	
	<form action="/" data-ajax="true" data-ajax-mode="replace" data-ajax-update="#orderList" data-ajax-url="/ContractList/GeneralContractList" id="form0" method="post">    <div class="b_ta_info">
        <table width="100%" border="1" class="b_table_grey">
            <colgroup>
				<col width="108" class="date">
				<col class="pinfo">
				<col width="115;" class="status">
				<col width="108;" class="confirm">
            </colgroup>
            <thead>
				<tr class="head">
					<th>��¥</th>
					<th>��ǰ����</th>
					<th>����</th>
					<th>Ȯ��/��û</th>
				</tr>
            </thead>
			<tfoot>
				<tr>
					<td class="last" colspan="4"></td>
				</tr>
			</tfoot>
            <tbody id="orderList">
				
			<tr cno="3835924105" ctype="G" column="4" class="first">
		        <td class="first_cell" rowspan="1">
			        <div class="td_detail">2022-10-25<span class="btn_bg btn_w81_2">	<a href="javascript:fnContractDetail('5062538956')" id="btn_order_detail_5062538956">�ֹ��󼼺���</a></span></div>
		        </td>
				<td>
					<div class="td_info"><p><a href="javascript:fnGoVipPage('2570409973')"><img src="//gdimg.gmarket.co.kr/goods_image2/small_jpgimg/257/040/2570409973.jpg" class="thumb" onerror="ImgLoadFirst(this);" alt=""></a></p><ul><li class="seller_info"><em></em><a href="javascript:fnSellerInfoPopup('~2mZpDAh9x/wNg9mENPHYYQvgbbnLMzdC6kk9nmQDpSLNjR1zZicczssL1TxjTC0CintatvvKD9rrXzR+nGSUVO6UUNENTXC/K45wYaRwEnE=', false);">��ġ����</a><span class="btn_sgray"><a href="javascript:fnSellerInquiryPopup('TQ5NR38jMTcxMUx0ODk0OTc4OTZ/Rw==', '2570409973', '3835924105');">�����ϱ�</a></span></li><li class="tit_info"><a href="javascript:fnGoVipPage('2570409973')">�Ե�ĥ��) �ֽĽ� ��ŷ ���� 355ml x 24</a></li><li class="cart">���� : 1�� / �ֹ���ȣ : 3835924105</li><li class="price"><strong>20,600</strong>��<span>(2,800�� ����)</span></li></ul></div>
				</td>
				<td cidx="3">
					<div class="td_status"><span class="btn_bg2 btn_status42">�����Ϸ�</span><ul></ul></div>
				</td>
				<td cidx="4" class="b_table_right">
					<span class="btn_bg btn_w90_2"><a href="javascript:fnClaimRequest(5062538956,3835924105, 'Cancel')">��ҽ�û</a></span>
				</td>
			</tr>
			<tr cno="3835913538" ctype="G" column="4">
		        <td class="first_cell" rowspan="1">
			        <div class="td_detail">2022-10-25<span class="btn_bg btn_w81_2">	<a href="javascript:fnContractDetail('5062532146')" id="btn_order_detail_5062532146">�ֹ��󼼺���</a></span><span class="btn_bg btn_w81_4"><a href="javascript:fnContractDelete('5062532146', '3835913538', 'ClaimCancelCmpl')">�ֹ���������</a></span></div>
		        </td>
				<td>
					<div class="td_info"><p><a href="javascript:fnGoVipPage('2570409973')"><img src="//gdimg.gmarket.co.kr/goods_image2/small_jpgimg/257/040/2570409973.jpg" class="thumb" onerror="ImgLoadFirst(this);" alt=""></a></p><ul><li class="seller_info"><em></em><a href="javascript:fnSellerInfoPopup('~2mZpDAh9x/wNg9mENPHYYQvgbbnLMzdC6kk9nmQDpSLNjR1zZicczssL1TxjTC0CintatvvKD9rrXzR+nGSUVPO21Jwj2vFa9ueqhcok+nY=', false);">��ġ����</a><span class="btn_sgray"><a href="javascript:fnSellerInquiryPopup('DQzNR38jMzcxOkxyODE0Nzc0OTV/Rw==', '2570409973', '3835913538');">�����ϱ�</a></span></li><li class="tit_info"><a href="javascript:fnGoVipPage('2570409973')">�Ե�ĥ��) �ֽĽ� ��ŷ ���� 355ml x 24</a></li><li class="cart">���� : 1�� / �ֹ���ȣ : 3835913538</li><li class="price"><strong>20,600</strong>��<span>(2,800�� ����)</span></li></ul></div>
				</td>
				<td cidx="3">
					<div class="td_status"><span class="btn_bg2 btn_status_b4">��ҿϷ�</span><ul></ul></div>
				</td>
				<td cidx="4" class="b_table_right">
					<span class="btn_bg btn_w90_2 btn_h34"><a href="javascript:ContractFailDetailView('5062532146');">���/���л���<br> �󼼺���</a></span>
				</td>
			</tr>


            </tbody>
        </table>

		<div class="paging" id="dGeneralPaging"><span><strong class="first">1</strong></span></div>
		<input id="dGeneralPageNo" name="dGeneralPageNo" type="hidden" value="1">
        <input id="dhdTempID" name="dhdTempID" type="hidden" value="root2330">
    </div>
</form>





	</div>
	
	
</body>
</html>