<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
   <head>
      <title>Home</title>
      <link href="${pageContext.request.contextPath }/resources/css/test.css" rel="stylesheet">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <!-- Link Swiper's CSS -->
       <link
         rel="stylesheet"
         href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
       />
       
      <style type="text/css">
         html, body {
            margin: 0;
            height: 100%;
            overflow-x: hidden;
         }
         
         html ::-webkit-scrollbar {
              display: none;
         }
         
         h3 {
            text-align: center;
            font-family: 'Poppins','Nanum Square','Noto Sans KR','맑은 고딕','Malgun Gothic',sans-serif;
            font-weight: 600;
            font-size: 24px;
            color: #333;
            letter-spacing: -0.01em;
         }
         
         .swiper {
            width: 100%;
            height: 100%;
         }
         
         .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            height: 100%;
            box-sizing: border-box;
            
            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
            border: 1px solid gray; 
         }
         
         .swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
         }
         
         .main-pic-title {
            font-family: 'Poppins','Open Sans','Nanum Square','Noto Sans KR','맑은 고딕','Malgun Gothic',sans-serif;
            line-height: 1.05em;
            font-size: 52px;
            font-weight: 800;
            color: #fff;
            letter-spacing: -0.02em;
            text-shadow: 1px 1px 1px black;
         }
         
         .main-pic-button {
            width: 120px; 
            height: 50px; 
            border: none; 
            border-radius: 5%; 
            background-color: #fff; 
            font-size: 14px;
         }
      </style>
   </head>
   <body>
      <c:import url="default/header.jsp"/>
   
      <!-- 첫번째 페이지  -->   
      <div style="display: flex; width: 100%; height: 100%; overflow:hidden;">
         <div style="width: 50%; height: 100%; display: flex; justify-content: center; align-items: center; background-image: url(resources/image/index-left.png); background-repeat: no-repeat; background-size: 100% 100%;">
            <div style="display: flex; flex-direction:column; align-items: center;">
               <h1 class="main-pic-title">BRAND</h1>
               <button class="main-pic-button" onclick="handleClickReadMore()">READ MORE</button>
            </div>
         </div>
         <div style="width: 50%; height: 100%; display: flex; justify-content: center; align-items: center;  background-image: url(resources/image/index-right.png); background-repeat: no-repeat; background-size: 100% 100%;">
            <div style="display: flex; flex-direction:column; align-items: center;">
               <h1 class="main-pic-title">JOIN US</h1>
               <button class="main-pic-button" onclick="handleClickJoin()">NOW</button>
            </div>
         </div>
      </div>
   
      <!-- 두번째 페이지 -->
      <div style="display: flex; width: 100%; height: 100%; justify-content: center; align-items: center;">
         <div style="width: 60%; min-width:400px;">
            <div style="display: flex; width: 100%; justify-content: center; align-items: center;">
               <h3>BEST</h3>
            </div>
            <!-- Swiper -->
            <div style="margin-top: 28px; height:350px;" class="swiper mySwiper">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">Slide 1</div>
                  <div class="swiper-slide">Slide 2</div>
                  <div class="swiper-slide">Slide 3</div>
                  <div class="swiper-slide">Slide 4</div>
                  <div class="swiper-slide">Slide 5</div>
                  <div class="swiper-slide">Slide 6</div>
                  <div class="swiper-slide">Slide 7</div>
                  <div class="swiper-slide">Slide 8</div>
                  <div class="swiper-slide">Slide 9</div>
                  <div class="swiper-slide">Slide 10</div>
                  <div class="swiper-slide">Slide 11</div>
                  <div class="swiper-slide">Slide 12</div>
                </div>
            </div>
            <div style="height: 30px;"></div>
            <div style="position: relative"class="swiper-pagination"></div>
         </div>
      </div>
      
      <!-- Swiper JS -->
      <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
      
      <!-- Initialize Swiper -->
      <script>
        var swiper = new Swiper(".mySwiper", {
           slidesPerView: 4,
          spaceBetween: 30,
          slidesPerGroup: 4,
          loop: true,
          loopFillGroupWithBlank: true,
          autoplay: {
/*                 delay: 4000,
                disableOnInteraction: false, */
              },
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
        });
        
        const handleClickReadMore = () => {
           window.location.href = "${pageContext.request.contextPath}/product/product?divisionCode=0";
        }
        
        const handleClickJoin = () => {
           window.location.href = "${pageContext.request.contextPath}/member/join";
        }
      </script>
      
      <c:import url="default/footer.jsp"/>    
   </body>
</html>