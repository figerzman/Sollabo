<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
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
    setTimeout(slideShow, 3000);   //함수를 4초마다 호출
 
}
</script>

<!-- <script type="text/javascript">
fuction check(){
	
	alert('색상을 선택하세요');
}
</script> -->
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

</style>
</head>
<body>
<h2>제품 상세 페이지</h2>
<div class="detail_area"> <!-- 전체 구역 -->
	<!-- 이미지 구역(이미지는 추후에 제외(DB) -->
	
	<div class="detail_imgarea"> <!-- 제품 이미지 전체 -->
		<div class="key">
			<div class="thumbnail">
				<img class="imgarea" src="image/shoes.jpg" >
				<img class="imgarea" src="image/clipboard.png" >
				<img class="imgarea" src="image/comment.png" >
			</div>	
		</div>	
	</div>
	
	<!-- 인포 구역 -->
	<div class="detail_infoarea">	<!-- 인포 전체 --> 
		<div class="head">
			<h2 class="bottom_line">[UNISEX] 제로 데님 by showpin<br>(커팅타입/히든밴딩)</h2> <!-- 상품(이름) -->
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
						<strong>KRW 35,000</strong>
						<input id="product_price" name="product_price" value="" type="hidden">
					</span>
				</td>
			</tr>	
			</table>
			<br><br><br><br><br><br><br><br><br><br>
			<!-- 옵션(색상) 미정-->
			<table>
				<tr>
					<th scope="row">색상</th>
					<td>
					<select>
						<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
						<option value="**" disabled="" link_image="">-------------------</option>
						 <option value="커팅-라이트블루(light blue)" link_image="">커팅-라이트블루(light blue)</option>
						 <option value="커팅-블루(blue)" link_image="">커팅-블루(blue)</option>
						 <option value="커팅-딥블루(deep blue)" link_image="">커팅-딥블루(deep blue)</option>
						 <option value="커팅-라이트블랙(light black)" link_image="">커팅-라이트블랙(light black)</option>
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
					<select>
						<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
						<option value="**" disabled="" link_image="">-------------------</option>
						 <option value="커팅-라이트블루(light blue)" link_image="">커팅-라이트블루(light blue)</option>
						 <option value="커팅-블루(blue)" link_image="">커팅-블루(blue)</option>
						 <option value="커팅-딥블루(deep blue)" link_image="">커팅-딥블루(deep blue)</option>
						 <option value="커팅-라이트블랙(light black)" link_image="">커팅-라이트블랙(light black)</option>
					 </select>
					</td>
				</tr>
			</table>
			<br><br><br>
			<!-- 총 가격 -->
			<div class="total_price">
				<strong>Total</strong> : 
				<span class="total">
					<strong>
						<em>KRW 35,000</em> " (1개) "
					</strong>
				</span>
			</div>
			</div>
	<!-- 구매버튼 -->
		<div class="total_btn">
				<a href="#" class="btnSubmit" >            
					<span id="buybtn">구매하기</span>
				</a>
				<a href="#" class="btnNormal" >            
					<span id="cartbtn">장바구니</span>
				</a>
		</div>
	</div>
	
	<!-- 총 제품 페이지 -->
	<div class="total_product">
		
	</div>


</body>
</html>