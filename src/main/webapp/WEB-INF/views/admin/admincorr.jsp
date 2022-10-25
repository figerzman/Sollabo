<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
table {
  border-collapse: collapse;
  border-spacing: 0;
}

/* 상단 제목 */
section .notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

/* 하단 검색창 */
#board_search .search_window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board_search .search_window .search_wrap {
	display:flex;
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board_search .search_window .search_wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board_search .search_window .search_wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board_search .search_window .search_wrap .btn {
  position: absolute;
  right: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

/* 게시판 테이블  */
.board_table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board_table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board_table a:hover {
  text-decoration: underline;
}
.board_table th {
  text-align: center;
}

.board_table .th-num {
  width: 100px;
  text-align: center;
}

.board_table .th-date {
  width: 200px;
}

.board_table th, .board_table td {
  padding: 14px 0;
}

.board_table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board_table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board_table tbody th p{
  display: none;
}

/* 버튼 꾸미기 */
.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.container input[type="button"]{
	float: right;
	margin: 5px 0 0 0;
}

/* 최초 초기화 */
* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

 /* 페이징 처리 */
.board_count_div{
	text-align: center;
	margin: 10px;
}

.board_count_div a {
	color:black;
}

</style>
<title>게시판</title>
</head>
<body>

<section class="notice">
  <div class="page-title">
        <div class="container">
            <h3>회원관리 게시판</h3>
        </div>
    </div>
   
  <!-- board list area -->
    <div id="board_list">
        <div class="container">
        	<div style="float: right; padding: 10px;">
        		<span><a href="#" >오름차순</a> | <a href="#" >내림차순</a></span>
        	</div>
            <table class="board_table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">NO</th>
                    <th scope="col" class="th-num">ID</th>
                    <th scope="col" class="th-num">NAME</th>                    
                    <th scope="col" class="th-title" style="width:200px;">PHONE-NUM</th>
                    <th scope="col" class="th-num">E-mail</th>
                    <th scope="col" class="th-date">DATE</th>
                    <th scope="col" class="th-num">Corr</th>
                </tr>	
                </thead>
                <tbody>
                <c:forEach begin="1" end="10">	
	                <tr>
	                    <td>1</td>
	                    <td>michel35</td>
	                    <td><a href="#">김동우</a></td>
	                    <td><a href="#">010-3123-1201</a></td>
	                    <td>michel35@naver.com</td>
	                    <td>2022.10.15</td>
	                    <td><input type="button" value="관리" class="btn btn-dark" style="border-radius: 4px; height: 25px;"></td>
	                </tr>
                </c:forEach>
                </tbody>
            </table>        
        </div>
        <br>
        <div class="board_count_div">
			<c:forEach begin="1" end="10" var="tests">
				<a href="#">[ ${tests } ]</a>
			</c:forEach>
		</div>
        <br>
         <!-- board seach area -->
	    <div id="board_search">
	        <div class="container">
	            <div class="search_window">
	                <form action="#">
	                    <div class="search_wrap">
	                    	<select name="boardKeyword">
	                    		<option value="이름">이름</option>
	                    		<option value="ID">ID</option>
	                    		<option value="핸드폰번호">핸드폰 번호</option>
	                    	</select>	                   
	                        <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
	                        <input type="button" class="btn btn-dark" value="검색" />
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
    </div>

</section>
</body>
</html>