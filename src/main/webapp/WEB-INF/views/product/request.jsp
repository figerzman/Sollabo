<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   body{               
                margin: 0;
                padding: 0;                               
            }


h2 {
	border: 1px solid red;
	text-align:center;
	
}


#block {
/* border: 1px solid black; */
width: 150px;
height: 150px;	
top: 200px;
}

#three{
/* border: 1px solid blue; */
}


section > div {
	/*  margin: auto;
               width: 150px;
                height: 70px;
                padding: 10px; */
                float:left;
}

#fir{
	border: 1px solid black;
    margin-right: 370px;
    width: 100px;
    height: 40px;
    text-align:center;
}



#sec{
	border: 1px solid red;
    margin-left: 0px;
    width: 100px;
    height: 40px;
    margin-right: 20px;
    text-align:center;
}

#thi{
	border: 1px solid gray;
    width: 100px;
    height: 40px;
  	text-align:center;
}




	
</style>

</head>
<body>


	<div>
		<h2 style="width: 600px; margin-left: 700px;">타이틀</h2> <!-- 타이틀 -->
	</div>
	
	<div id="block" style="margin-left: 600px; width: 800px; height: 750px;"><textarea style="width: 800px; height: 750px;"></textarea> <!-- 글쓰는곳 -->
	
	</div>
		
	<section id="three" style="margin-left: 600px; padding-top: 0px; padding-right: 50px; padding-left: 50px; padding-bottom: 0px; width: 700px; margin-top: 10px;">
		<div id="fir">
			<button id="fir" type="button" onclick="location.href='#' ">목록</button><!-- #자리에 주소입력 -->
		</div> 
		<div id="sec">
			<button id="sec" type="button" onclick="location.href='#' ">등록</button>
		</div>
		<div id="thi">
			<button id="thi" type="button" onclick="location.href='#' ">취소</button>
		</div>
	</section>

</body>
</html>