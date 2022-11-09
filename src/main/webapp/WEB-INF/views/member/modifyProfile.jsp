<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyProfile</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 제목(회원정보 수정) */
.titleArea {
	margin: 90px 0 0;
	text-align: center;
}

/* 전체 틀 */
.memberJoin {
	/* border: 1px solid black; */
	margin: 100px auto;
	padding: 20px;
	width: 770px;
	height: 750px;
	position: relative;
}

/* 전체 글꼴 */
body{
    font-size: 0.9em;
    font-family: 'Roboto', sans-serif;
}

/* 테이블 제목 */
h3 {
	margin: auto;
	padding: 50px 0 10px;
	width: 770px;
    font-size: 16px;
    color: #2e2e2e;
}

/* 필수입력사항 */
.required {
	position: relative;
    right: 12px;
    top: 12px;
    margin: -25px 0 20px 0;
    color: #353535;
    text-align: right;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

/* 테이블 가로폭 */
.boardWrite, .boardWriteAddinfo {
	width: 770px;
}

/* 테이블 */
table {
    width: 100%;
    border-spacing: 0;
    border-collapse: collapse;
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    display: table;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
}

table th:first-child {
    border-left: 0;
}

table tbody th {
    padding: 11px 13px 11px 18px;
    border: 1px solid #ddd;
    border-bottom-width: 0;
    color: #333;
    text-align: left;
    font-weight: normal;
    background-color: #fafafa;
    word-break: break-all;
    word-wrap: break-word;
}

td {
    padding: 11px 10px 10px;
    border-top: 1px solid #ddd;
    color: #333;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
    display: table-cell;
}

/* 기본정보 테이블 */
.boardWrite table {
	position: relative;
    margin: 10px 0 0;
    border: 1px solid #ddd;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}

/* 추가정보 테이블 */
.boardWriteAddinfo table {
	position: relative;
    margin: 10px 0 0;
    border: 1px solid #ddd;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}

/* 인풋 박스 전체 */
.boardWrite input {
    height: 18px;
    line-height: 20px;
	margin: 2px;
    padding: 2px 4px;
    border: 1px solid #ddd;
    color: #333;
    font-size: 12px;
}

/* 우편번호 찾기 버튼 */
input[type=button] {
	display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid #ddd;
    border-radius: 2px;
    font-size: 12px;
    height: 24px;
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

/* 인풋 박스 세부 */
#addr1, #phone2, #phone3, #mobile2, #mobile3, 
#birth_year, #birth_month, #birth_day, 
#height, #weight {
	width: 70px;
}

#addr2, #addr3 {
	width: 300px;
}

div {
	display: block;
	margin: auto;
}

/* 회원정보 수정 버튼 구역 */
.btnArea { 
	margin:50px 0 50px; 
	text-align:center; 
}

.btnArea input { 
	background: url("http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_member.gif");
	background-repeat: no-repeat;
	margin: 0;
	width: 140px;
	height: 40px;
	border: 0;
}

.btnArea span.right { 
	position: absolute; 
	right: 20px; 
}


</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="memberJoin">
		<div class="titleArea">
			<h1>회원정보 수정</h1>
		</div>
		
		<h3>기본 정보</h3>
		<p class="required">
			<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수"> 필수입력사항
		</p>
		<div class="boardWrite">
			<form id="modifyProfile" action="${pageContext.request.contextPath }/member/modifyProfile" method="post">
				<table border="1">
				<tbody>
					<tr>
						<th scope="row">
						아이디 
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
						</th>
						<td><input type="text" id="id" name="memId" value="${MemberDTO.memId }" maxlength="30" required><!-- <a> (영문소문자/숫자, 4~16자)</a> --></td>
					</tr>
					<tr>
						<th scope="row">
						비밀번호 
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
						</th>
						<td><input type="password" id="pw" name="memPassword" required><!-- <a> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</a> --></td>
					</tr>
					<tr>
						<th scope="row">
						비밀번호 확인 
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
						</th>
						<td><input type="password" id="pwd" name="memPasswordCheck" required></td>
					</tr>
					<tr>
						<th scope="row">
						이름 
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
						</th>
						<td><input type="text" id="name" name="memName" value="${MemberDTO.memName }" required></td>
					</tr>
					<tr>
						<th scope="row">주소</th>
						<td>
							<input type="text" id="addr1" name="memAddr1" value="${MemberDTO.memAddr1 }" readonly>
		                    <input type="button" class="btn btn-info" value="우편번호 찾기" onclick="daumPost()"><br>
		                    <input type="text" id="addr2" name="memAddr2" value="${MemberDTO.memAddr2 }" readonly> 주소<br>
		                    <input type="text" id="addr3" name="memAddr3" value="${MemberDTO.memAddr3 }"> 상세주소
						</td>
					</tr>

					<!-- 전화번호 일단 빼놓고 하기 -->
	               <tr>
	                  <th scope="row">
	                  휴대전화 
	                  <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
	                  </th>
	                  <td>
	                     <select id="mobile1" name="mobile1">
	                        <option value="010">010</option>
	                        <option value="011">011</option>
	                        <option value="016">016</option>
	                     </select>
	                     -
	                     <input id="mobile2"  maxlength="4" required>
	                     -
	                     <input id="mobile3"  maxlength="4" required>
	                     <input type="hidden" name="memTel" id="memTel">	                     
	                  </td>
	               </tr>

					<tr>
						<th scope="row">
						이메일 
						<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" alt="필수">
						</th>
						<td><input type="email" id="user_mail" name="memEmail" value="${MemberDTO.memEmail }" required></td>
					</tr>
				</tbody>
				</table>				
			<br>		    
		    <div class="btnArea">
		        <input type="submit" value=""><a href="/sollabo/member/mypage" onclick=""></a>
		        <a href="/sollabo/member/mypage"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_cancel.gif" alt="취소" /></a>
	        <span class="right">
	            <a href="/sollabo/member/delete" onclick=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_out.gif" alt="회원탈퇴" /></a>
	        </span>
	    	</div>
    	 </form>
    	</div>
    </div>
    
	<c:import url="../default/footer.jsp"/>		
</body>
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
function regist(){
	   var pwd = $('#memPassword').val();
	   var pwdCh = $('#memPasswordCheck').val()
	   if(pwd != pwdCh ||  pwd == "" || pwd== null || pwdCh == null || pwdCh == ""  ){
		   alert("비밀번호 값을 확인해주세요")
	   }
		   
	  $('#memTel').val( $('#mobile1').val()+$('#mobile2').val()+ $('#mobile3').val());
   //form 태그의 파라미터들을 전송할수있는 상태로 둬야  data키값에 form 자체를 넣을 수 있다.
   var formData = $("#join_form").serialize(); //전부 문자열화 시킨다      
     $.ajax({
      url:"/sollabo/member/join",
      type:"post",	
      data:formData,
      success:function(responseData){         
         //서버로부터 완료 응답을 받으면
         var json = JSON.parse(responseData);
         if(json==1){ // 1이면 성공 0이면 실패
            alert("회원가입이 완료되었습니다. 감사합니다.");
            location.href="/sollabo/member/login"; // 로그인페이지로 이동
         }else{
            alert("회원가입 실패");
         }
      }
   });  
</script>
</html>
