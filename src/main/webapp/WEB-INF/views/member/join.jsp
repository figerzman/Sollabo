<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<style type="text/css">
* {
	margin: 0;
}

/* 제목(회원가입) */
.titleArea {
	margin: 100px 0 50px;
	text-align: center;
}

.memberJoin {

}

div {
	display: block;
}

h3 {
	margin: 1em 0 1em;
	font-weight: bold;
}
</style>
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
</head>
<body>
	<div class="memberJoin">
		<div class="titleArea">
			<h2>회원가입</h2>
		</div>
		<h3>기본정보</h3>
		<div class="boardWrite">
			<table border="1">
			<tbody>
				<tr>
					<th scope="row">아이디</th>
					<td><input type="text" id="id" name="id" maxlength="30" required><a> (영문소문자/숫자, 4~16자)</a></td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td><input type="password" id="pw" name="pw" required><a> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</a></td>
				</tr>
				<tr>
					<th scope="row">비밀번호 확인</th>
					<td><input type="password" id="pwd" name="pwd" required></td>
				</tr>
				<tr>
					<th scope="row">이름</th>
					<td><input type="text" id="name" name="name" required></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td>
						<input type="text" id="addr1" name="addr" placeholder="우편번호" readonly>
						<input type="button" class="btn btn-info" value="우편번호 찾기" onclick="daumPost()"><br>
						<input type="text" id="addr2" placeholder="주소" readonly><br>
						<input type="text" id="addr3" placeholder="상세주소">
					</td>
				</tr>
				<tr>
					<th scope="row">일반전화</th>
					<td>
						<select id="phone1" name="phone[]">
							<option value="02">02</option>
							<option value="02">031</option>
							<option value="02">041</option>
							<option value="02">051</option>
							<option value="02">010</option>
						</select>
						-
						<input id="phone2" name="phone[]" maxlength="4">
						-
						<input id="phone3" name="phone[]" maxlength="4">
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
				<tr>
					<th scope="row">이메일</th>
					<td><input type="email" id="user_mail" name="userMail" required></td>
				</tr>
			</tbody>
			</table>
		</div>
		
		<h3>추가정보</h3>
		<div class="boardWrite Addinfo">
			<table border="1">
			<tbody>
				<tr>
					<th scope="row">생년월일</th>
					<td>
						<input type="text" id="birth_year" name="birth_year" maxlength="4"> 년
						<input type="text" id="birth_month" name="birth_month" maxlength="2"> 월
						<input type="text" id="birth_day" name="birth_day" maxlength="2"> 일
					</td>
				</tr>
				<tr>
					<th scope="row">키</th>
					<td><input type="text" id="height" name="height" maxlength="3"> cm</td>
				</tr>
				<tr>
					<th scope="row">몸무게</th>
					<td><input type="text" id="weight" name="weight" maxlength="3"> kg</td>
				</tr>
			</tbody>
			</table>
		</div>
		<br>
		
		<div class="btnArea center">
	        <a href="#" onclick=""><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join1.gif" alt="회원가입" /></a>
	        <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_member_join_cancel.gif" alt="회원가입 취소" /></a>
	    </div>
	</div>
</body>
</html>