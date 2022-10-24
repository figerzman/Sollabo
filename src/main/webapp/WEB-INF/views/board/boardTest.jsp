<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script>
/*       function getJSON() {
                $.ajax({
                type:"get",
                url:"h/api/v1/trackingInfo?t_invoice=04&t_invoice=567696124671&t_key=u49wbU00i42SuAh3ftYZpA",
                dataType:"json",
                success: function(data){
                     $.each(data, function (k, v) {
                    	 var cnt = 0;
                    	console.log(v.length);
                    		$.each(v, function () {
                    			console.log(v[cnt++].Name)
                    			console.log(cnt)
							})
                    }); 
                },
                error:function(){
               	   history.back();
                   alert("접근이 잘못되었습니다");
                }
            })
        } */
	
      function tracking(){

	  		var pop_title = "popupOpener" ;
	  		
	  		window.open("", pop_title,"width=600, height=600, left=200, top=100") ;
	  		
	  		var frmData = document.frmData ;
	  		frmData.target = pop_title ;
	  		frmData.action = "http://info.sweettracker.co.kr/tracking/5" ;
	  		
	  		frmData.submit() ;
	      }
    </script>
</head>
<body>

	<form method="post" id="frmData" name="frmData">
            <div class="form-group">
              <label for="t_key">API key</label>
              <input type="text" class="form-control" id="t_key" name="t_key" placeholder="제공받은 APIKEY" value="u49wbU00i42SuAh3ftYZpA">
            </div>
            <div class="form-group">
              <label for="t_code">택배사 코드</label>
              <input type="text" class="form-control" name="t_code" id="t_code" placeholder="택배사 코드" value="04">
            </div>
            <div class="form-group">
              <label for="t_invoice">운송장 번호</label>
              <input type="text" class="form-control" name="t_invoice" id="t_invoice" placeholder="운송장 번호" value="567696124671">
            </div>
            <button type="button" onclick="tracking()" class="btn btn-default">조회하기</button>
        </form>
        
	<!-- <form name="search" method="get" action="./">
    <ul>
    	<li>
            <select name="year" id="year">
                <option value="2021" selected>2021</option>
                <option value="2020">2020</option>
            </select>
        </li>
    	<li>
            <select name="term" id="term">
                <option value="">학기</option>
                <option value="1">1학기</option>
                <option value="2">2학기</option>
            </select>
        </li>
        <li>
            <select name="exhibition_id" id="exhibition_id">
                <option value="">교과목명</option>
            </select>
        </li>
    </ul>
</form>
		<button onclick="getJSON()">조회용</button> -->
	
		 
</body>
</html>