<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.ArrayList"%>
    <%@page import="java.util.HashMap"%>
    
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<title>SOLIDIUM : search the safety route</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/gauge.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>


<style>


* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 33.3%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}





#chartdiv {
  width: 100%;
  height: 700px;
}    
#gaugediv {
  width: 100%;
  height: 500px;
} 
#gaugediv2 {
  width: 100%;
  height: 500px;
} 
#chart3{
  width: 100%;
  height: 500px;
} 
}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
  
    padding: 14px 20px;
    margin: 8px 0;
    width: auto;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.loginbtn{
	width :auto;
	padding: 10px 18px;
	background-color: #616161;	
}
/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 75%;
    border-radius: 10%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 35%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: black;
  display: none;
  padding: 100px 20px;
  height: 100%;
}

#RiskPercent {background-color: white;}
#AccidentInfo {background-color: white;}
#RouteInfo {background-color: white;}
#About {background-color: white;}

/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
p{
text-align:center;
}
/* Radio Button CSS*/
label {
    display: inline;
}
.radio-1 {
    width: 193px;
}
.button-holder {
    float: left;
    margin-left: 6px;
    margin-top: 16px;
}
.regular-radio {
    display: none;
}
.regular-radio + label {
    background-color: #fafafa;
    border: 2px solid #cacece;
    border-radius: 50px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), 0 -15px 10px -12px rgba(0, 0, 0, 0.05) inset;
    display: inline-block;
    padding: 11px;
    position: relative;

}
.regular-radio:checked + label:after {
    background: none repeat scroll 0 0 #94E325;
    border-radius: 50px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3) inset;
    content: " ";
    font-size: 36px;
    height: 8px;
    left: 7px;
    position: absolute;
    top: 7px;
    width: 8px;
}
.regular-radio:checked + label {
    background-color: #e9ecee;
    border: 2px solid #adb8c0;
    color: #99a1a7;
    padding: 11px;
}
.regular-radio + label:active, .regular-radio:checked + label:active {
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), 0 1px 3px rgba(0, 0, 0, 0.1) inset;
}
</style>
<body class="w3-light-grey">
 
<!-- Navigation Bar -->

<div class="w3-bar w3-white w3-large">
  <a href="#" class="w3-bar-item w3-button w3-black w3-mobile"><i class="fa fa-map w3-margin-right"></i>HOME</a>
  <a href="#rooms" id="searchsection" class="w3-bar-item w3-button w3-mobile">SEARCH</a>
       <a class ="w3-bar-item w3-button" onclick="document.getElementById('id02').style.display='block'" >SIGNUP</a>
      <a class ="w3-bar-item w3-button" onclick="document.getElementById('id01').style.display='block'" >LOGIN</a>
  <a href="#rooms" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">SEARCH NOW</a>
	   
    
</div>


<!-- Header -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
  
  <img class="w3-image" src="img/main1.jpg" alt="The main" style="min-width:1000px" width="1500" height="350">
  
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <!-- <div class="w3-container w3-black">
      <h2><i class="fa fa-map w3-margin-right"></i>Hotel Name</h2>
    </div>
 -->    <p>
 	<img src="img/SOLIDIUM4.png" align="center" class="w3-image w3-center" style="min-width:500px" width="680" height="325">
      </p>
     
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>SEARCH NOW </h3>
    <p>We always search the safety route where you are.</p>
  </div>
  
  <!-- 고정시키는 부분 -->
  <div class="w3-row-padding">
			<div class="w3-col m3">
            <label><i class="fa fa-cal"></i> 출발</label>
            <c:if test="${empty requestScope.Start }">
               <input class="w3-input w3-border" type="text" id="one"
                  placeholder="출발지">
            </c:if>
            <c:if test="${not empty requestScope.Start }">
               <input class="w3-input w3-border" type="text" id="one"
                  value="${requestScope.Start }">
            </c:if>
         </div>
         <div class="w3-col m1 ">
            <button class="btn btn-dark btn-lg" onclick="fun()">출발지</button>
            <br>
         </div>
         <div class="w3-col m3">
            <label><i class="fa fa-calendar-o"></i> 도착</label>
            <c:if test="${empty requestScope.End }">
               <input class="w3-input w3-border" type="text" id="two"
                  placeholder="도착지">
            </c:if>
            <c:if test="${not empty requestScope.End }">
               <input class="w3-input w3-border" type="text" id="two"
                  value="${requestScope.End }">
            </c:if>
         </div>
         
			<div class="w3-col m1 ">
				<button class="btn btn-dark btn-lg" onclick="fun1()">도착지</button>
				<br>
			</div>
			<form action="cont" method="GET">
				<div class="w3-col m3">
					<div class="w3-col m2">
						<input type="hidden"  name="namestring" value="">
						<input type="hidden" name="command" value="avgRoute">
						<input type="hidden" name="startlat" value="">
						<input type="hidden" name="startlng" value="">
						<input type="hidden" name="endlat" value="">
						<input type="hidden" name="endlng" value="">
						<input type="hidden" name="start" value="">
						<input type="hidden" name="end" value="">
						<input type="hidden" name="searchoption" value="">
						<input type="hidden" name="tdistance" value="">
                 		 <input type="hidden" name="ttime" value="">
                 		 <input type="hidden" name="tfare" value="">
                		 <input type="hidden" name="taxifare" value="">
                		 <input type="hidden" name="totalnamestring" value="">
                		  
						
					</div>
					<button type="submit" class="btn btn-success btn-lg" ><i class="fa fa-search"></i> Search</button>
					<button class="btn btn-success btn-lg" onclick="totalsearch()" ><i class="fa fa-search"></i> TotoalSearch</button>

<script>
 var totalnamestring ="";

</script>
					<script>
							function totalsearch() {
								 (function(){
									   div_sh2(0);
									   })(),
									    (function(){
									   div_sh2(1);
									   })(),
									    (function(){
									   div_sh2(2);
									   })(),
									    (function(){
									   div_sh2(3);
									   })(),
									    (function(){
									   div_sh2(4);
									   })(),
									    (function(){
									   div_sh2(10);
									   })(),  (function(){
									   div_sh2(12);
									   })()
									   
							}
							
							</script>




				</div>
			</form>

		</div>

<div id="map_div" class=" w3-padding w3-col w3-container" style="max-width:1200px" width="680" height="550"; >
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b"></script>

<script>
function openPage(pageName, elmnt, color) {
    // Hide all elements with class="tabcontent" by default */
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    // Remove the background color of all tablinks/buttons
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    // Show the specific tab content
    document.getElementById(pageName).style.display = "block";
    // Add the specific color to the button used to open the tab content
    elmnt.style.backgroundColor = color;
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<p id="result">   
<script>   
   // 1. 지도 띄우기
   // map 생성
   // Tmap.map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
   map = new Tmap.Map({
      div : 'map_div',// map을 표시해줄 div
      width : "100%",// map의 width 설정
      height : "400px",// map의 height 설정
   });
map.setCenter(new Tmap.LonLat("126.986072", "37.570028").transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점을 설정합니다.   
var routeLayer = new Tmap.Layer.Vector("route");//벡터 레이어 생성
var markerLayer = new Tmap.Layer.Markers("start");// 마커 레이어 생성
map.addLayer(routeLayer);//map에 벡터 레이어 추가
map.addLayer(markerLayer);//map에 마커 레이어 추가
//시작
var size = new Tmap.Size(24, 38);//아이콘 크기 설정
var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png />', size, offset);//마커 아이콘 설정
var marker_s = new Tmap.Marker(new Tmap.LonLat(resultlon_s2.toString(), resultlat_s2.toString()).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
markerLayer.addMarker(marker_s);//마커 레이어에 마커 추가
//도착
var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png />', size, offset);//마커 아이콘 설정
var marker_e = new Tmap.Marker(new Tmap.LonLat(resultlon_e2.toString(), resultlat_e2.toString()).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
markerLayer.addMarker(marker_e);//마커 레이어에 마커 추가
</script>
</p>
</div>

<script>
var resultlon_s2  ;
var resultlat_s2  ;
var resultlon_e2 ;
var resultlat_e2 ;
</script>
<c:if test="${not empty requestScope.Start }">
<script>
resultlat_s2=${requestScope.StartLat };
resultlon_s2=${requestScope.StartLng };
resultlat_e2=${requestScope.EndLat };
resultlon_e2=${requestScope.EndLng };
</script>
</c:if>
<script>
function fun() {
   
   //입력한 문자열을 읽어온다.
   var start = document.getElementById("one").value

//2. API 사용요청
$.ajax({
method:"GET",
url:"https://api2.sktelecom.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result", //FullTextGeocoding api 요청 url입니다.
async:false,
data:{
   "coordType" : "WGS84GEO",//지구 위의 위치를 나타내는 좌표 타입입니다.
   "fullAddr" : start, //주소 정보 입니다, 도로명 주소 표준 표기 방법을 지원합니다.  
   "page" : "1",//페이지 번호 입니다.
   "count" : "20",//페이지당 출력 갯수 입니다.
   "appKey" : "f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b",//실행을 위한 키 입니다. 발급받으신 AppKey를 입력하세요.
},
//데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
success:function(response){
   prtcl = response;
   
   // 3. 마커 찍기
   var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String   
   xmlDoc = $.parseXML( prtclString ),
   $xml = $( xmlDoc ),
   $intRate = $xml.find("coordinate");
   //검색 결과 정보가 없을 때 처리
   if($intRate.length==0){
      //예외처리를 위한 파싱 데이터
      $intError = $xml.find("error");
            
      // 주소가 올바르지 않을 경우 예외처리
      if($intError.context.all[0].nodeName == "error"){
         $("#result").text("요청 데이터가 올바르지 않습니다.");
      }
   }   
                  
   var lon, lat;
    

   if($intRate[0].getElementsByTagName("lon").length>0){//구주소
      lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
         lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
   }else{//신주소
      lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
      lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
   }
        
   var markerStartLayer = new Tmap.Layer.Markers("marker");//마커 레이어 생성
   map.addLayer(markerStartLayer);//map에 마커 레이어 추가
        
     var size = new Tmap.Size(24, 38);//아이콘 크기 설정
   var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
   var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_a.png' />", size, offset);//마커 아이콘 설정
   var marker_s = new Tmap.Marker(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
   markerStartLayer.addMarker(marker_s);//마커 레이어에 마커 추가
   
   map.setCenter(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점을 설정합니다.
   
   //검색 결과 표출
   var matchFlag, newMatchFlag;
     //검색 결과 주소를 담을 변수
     var address = '', newAddress = '';
     var city, gu_gun, eup_myun, legalDong, adminDong, ri, bunji;
     var buildingName, buildingDong, newRoadName, newBuildingIndex, newBuildingName, newBuildingDong;
     
   //새주소일 때 검색 결과 표출
   //새주소인 경우 newMatchFlag가 응닶값으로 온다
   if($intRate[0].getElementsByTagName("newMatchFlag").length>0){
      // 새(도로명) 주소 좌표 매칭 구분 코드
      newMatchFlag = $intRate[0].getElementsByTagName("newMatchFlag")[0].childNodes[0].nodeValue;
      
      // 시/도 명칭
      if($intRate[0].getElementsByTagName("city_do").length>0){
         city = $intRate[0].getElementsByTagName("city_do")[0].childNodes[0].nodeValue;
         newAddress += city+"\n";
      }
      // 군/구 명칭
      if($intRate[0].getElementsByTagName("gu_gun").length>0){
         gu_gun = $intRate[0].getElementsByTagName("gu_gun")[0].childNodes[0].nodeValue;
         newAddress += gu_gun+"\n";
      }
      // 읍면동 명칭
      if($intRate[0].getElementsByTagName("eup_myun").length>0){
         eup_myun = $intRate[0].getElementsByTagName("eup_myun")[0].childNodes[0].nodeValue;
         newAddress += eup_myun+"\n";
      }
      // 출력 좌표에 해당하는 법정동 명칭
      if($intRate[0].getElementsByTagName("legalDong").length>0){
         legalDong = $intRate[0].getElementsByTagName("legalDong")[0].childNodes[0].nodeValue;
         newAddress += legalDong+"\n";
      }
      // 출력 좌표에 해당하는 법정동 명칭
      if($intRate[0].getElementsByTagName("adminDong").length>0){
         adminDong = $intRate[0].getElementsByTagName("adminDong")[0].childNodes[0].nodeValue;
         newAddress += adminDong+"\n";
      }
      // 출력 좌표에 해당하는 리 명칭
      if($intRate[0].getElementsByTagName("ri").length>0){
         ri = $intRate[0].getElementsByTagName("ri")[0].childNodes[0].nodeValue;
         newAddress += ri+"\n";
      }
      // 출력 좌표에 해당하는 지번 명칭
      if($intRate[0].getElementsByTagName("bunji").length>0){
         bunji = $intRate[0].getElementsByTagName("bunji")[0].childNodes[0].nodeValue;
         newAddress += bunji+"\n";
      }
      // 새(도로명) 주소 매칭을 한 경우, 길 이름을 반환
      if($intRate[0].getElementsByTagName("newRoadName").length>0){
         newRoadName = $intRate[0].getElementsByTagName("newRoadName")[0].childNodes[0].nodeValue;
         newAddress += newRoadName+"\n";
      }
      // 새(도로명) 주소 매칭을 한 경우, 건물 번호를 반환
      if($intRate[0].getElementsByTagName("newBuildingIndex").length>0){
         newBuildingIndex = $intRate[0].getElementsByTagName("newBuildingIndex")[0].childNodes[0].nodeValue;
         newAddress += newBuildingIndex+"\n";
      }
      // 새(도로명) 주소 건물명 매칭을 한 경우, 건물 이름을 반환
      if($intRate[0].getElementsByTagName("newBuildingName").length>0){
         newBuildingName = $intRate[0].getElementsByTagName("newBuildingName")[0].childNodes[0].nodeValue;
         newAddress += newBuildingName+"\n";
      }
      // 새주소 건물을 매칭한 경우 새주소 건물 동을 반환
      if($intRate[0].getElementsByTagName("newBuildingDong").length>0){
         newBuildingDong = $intRate[0].getElementsByTagName("newBuildingDong")[0].childNodes[0].nodeValue;
         newAddress += newBuildingDong+"\n";
      }
      if($intRate[0].getElementsByTagName("newLat").length>0){
             this.resultlat_s =$intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue+"\n" ;
             resultlat_s2=this.resultlat_s
          }
      if($intRate[0].getElementsByTagName("newLon").length>0){
             this.resultlon_s =$intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue+"\n" ;
             resultlon_s2=this.resultlon_s   
          }
      // 검색 결과 표출
       var docs = "< a style='color:orange' href='#webservice/docs/fullTextGeocoding' >Docs< /a >"
            $("#result").html("위도 : "+this.resultlat_s+" 경도 : " +this.resultlon_s );      
        
       }
   
   //구주소일 때 검색 결과 표출
   //구주소인 경우 MatchFlag가 응닶값으로 온다
   if($intRate[0].getElementsByTagName("matchFlag").length>0){
      // 매칭 구분 코드
      matchFlag = $intRate[0].getElementsByTagName("matchFlag")[0].childNodes[0].nodeValue;
      
      // 시/도 명칭
      if($intRate[0].getElementsByTagName("city_do").length>0){
         city = $intRate[0].getElementsByTagName("city_do")[0].childNodes[0].nodeValue;
         address += city+"\n";
      }
      // 군/구 명칭
      if($intRate[0].getElementsByTagName("gu_gun").length>0){
         gu_gun = $intRate[0].getElementsByTagName("gu_gun")[0].childNodes[0].nodeValue;
         address += gu_gun+"\n";
      }
      // 읍면동 명칭
      if($intRate[0].getElementsByTagName("eup_myun").length>0){
         eup_myun = $intRate[0].getElementsByTagName("eup_myun")[0].childNodes[0].nodeValue;
         address += eup_myun+"\n";
      }
      // 출력 좌표에 해당하는 법정동 명칭
      if($intRate[0].getElementsByTagName("legalDong").length>0){
         legalDong = $intRate[0].getElementsByTagName("legalDong")[0].childNodes[0].nodeValue;
         address += legalDong+"\n";
      }
      // 출력 좌표에 해당하는 법정동 명칭
      if($intRate[0].getElementsByTagName("adminDong").length>0){
         adminDong = $intRate[0].getElementsByTagName("adminDong")[0].childNodes[0].nodeValue;
         address += adminDong+"\n";
      }
      // 출력 좌표에 해당하는 리 명칭
      if($intRate[0].getElementsByTagName("ri").length>0){
         ri = $intRate[0].getElementsByTagName("ri")[0].childNodes[0].nodeValue;
         address += ri+"\n";
      }
      // 출력 좌표에 해당하는 지번 명칭
      if($intRate[0].getElementsByTagName("bunji").length>0){
         bunji = $intRate[0].getElementsByTagName("bunji")[0].childNodes[0].nodeValue;
         address += bunji+"\n";
      }
      // 출력 좌표에 해당하는 지번 명칭
      if($intRate[0].getElementsByTagName("buildingName").length>0){
         buildingName = $intRate[0].getElementsByTagName("buildingName")[0].childNodes[0].nodeValue;
         address += buildingName+"\n";
      }
      // 출력 좌표에 해당하는 지번 명칭
      if($intRate[0].getElementsByTagName("buildingDong").length>0){
         buildingDong = $intRate[0].getElementsByTagName("buildingDong")[0].childNodes[0].nodeValue;
         address += buildingDong+"\n";
      }
      if($intRate[0].getElementsByTagName("lat").length>0){
             this.resultlat_s =$intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue+"\n" ;
             resultlat_s2=this.resultlat_s
          }
      if($intRate[0].getElementsByTagName("lon").length>0){
             this.resultlon_s =$intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue+"\n" ;
             resultlon_s2=this.resultlon_s
          }
      // 검색 결과 표출
       var docs = "< a style='color:orange' href='#webservice/docs/fullTextGeocoding' >Docs< /a >"
            $("#result").html("위도 : "+this.resultlat_s+" 경도 : " +this.resultlon_s );      
       }
},
//요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
error:function(request,status,error){
   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
}
});
}

function fun1() {
   
      //입력한 문자열을 읽어온다.
      var start = document.getElementById("two").value


// 2. API 사용요청
$.ajax({
   method:"GET",
   url:"https://api2.sktelecom.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result", //FullTextGeocoding api 요청 url입니다.
   async:false,
   data:{
      "coordType" : "WGS84GEO",//지구 위의 위치를 나타내는 좌표 타입입니다.
      "fullAddr" : start, //주소 정보 입니다, 도로명 주소 표준 표기 방법을 지원합니다.  
      "page" : "1",//페이지 번호 입니다.
      "count" : "20",//페이지당 출력 갯수 입니다.
      "appKey" : "f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b",//실행을 위한 키 입니다. 발급받으신 AppKey를 입력하세요.
   },
   //데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
   success:function(response){
      prtcl = response;
      
      // 3. 마커 찍기
      var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String   
      xmlDoc = $.parseXML( prtclString ),
      $xml = $( xmlDoc ),
      $intRate = $xml.find("coordinate");
      //검색 결과 정보가 없을 때 처리
      if($intRate.length==0){
         //예외처리를 위한 파싱 데이터
         $intError = $xml.find("error");
               
         // 주소가 올바르지 않을 경우 예외처리
         if($intError.context.all[0].nodeName == "error"){
            $("#result").text("요청 데이터가 올바르지 않습니다.");
         }
      }   
                     
      var lon, lat;
      if($intRate[0].getElementsByTagName("lon").length>0){//구주소
         lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
            lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
      }else{//신주소
         lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
         lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
      }
           
      var markerStartLayer = new Tmap.Layer.Markers("marker");//마커 레이어 생성
      map.addLayer(markerStartLayer);//map에 마커 레이어 추가
           
        var size = new Tmap.Size(24, 38);//아이콘 크기 설정
      var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
      var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_a.png' />", size, offset);//마커 아이콘 설정
      var marker_s = new Tmap.Marker(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
      markerStartLayer.addMarker(marker_s);//마커 레이어에 마커 추가
      
      map.setCenter(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점을 설정합니다.
      
      //검색 결과 표출
      var matchFlag, newMatchFlag;
        //검색 결과 주소를 담을 변수
        var address = '', newAddress = '';
        var city, gu_gun, eup_myun, legalDong, adminDong, ri, bunji;
        var buildingName, buildingDong, newRoadName, newBuildingIndex, newBuildingName, newBuildingDong;
      //새주소일 때 검색 결과 표출
      //새주소인 경우 newMatchFlag가 응닶값으로 온다
      if($intRate[0].getElementsByTagName("newMatchFlag").length>0){
         // 새(도로명) 주소 좌표 매칭 구분 코드
         newMatchFlag = $intRate[0].getElementsByTagName("newMatchFlag")[0].childNodes[0].nodeValue;
         
         // 시/도 명칭
         if($intRate[0].getElementsByTagName("city_do").length>0){
            city = $intRate[0].getElementsByTagName("city_do")[0].childNodes[0].nodeValue;
            newAddress += city+"\n";
         }
         // 군/구 명칭
         if($intRate[0].getElementsByTagName("gu_gun").length>0){
            gu_gun = $intRate[0].getElementsByTagName("gu_gun")[0].childNodes[0].nodeValue;
            newAddress += gu_gun+"\n";
         }
         // 읍면동 명칭
         if($intRate[0].getElementsByTagName("eup_myun").length>0){
            eup_myun = $intRate[0].getElementsByTagName("eup_myun")[0].childNodes[0].nodeValue;
            newAddress += eup_myun+"\n";
         }
         // 출력 좌표에 해당하는 법정동 명칭
         if($intRate[0].getElementsByTagName("legalDong").length>0){
            legalDong = $intRate[0].getElementsByTagName("legalDong")[0].childNodes[0].nodeValue;
            newAddress += legalDong+"\n";
         }
         // 출력 좌표에 해당하는 법정동 명칭
         if($intRate[0].getElementsByTagName("adminDong").length>0){
            adminDong = $intRate[0].getElementsByTagName("adminDong")[0].childNodes[0].nodeValue;
            newAddress += adminDong+"\n";
         }
         // 출력 좌표에 해당하는 리 명칭
         if($intRate[0].getElementsByTagName("ri").length>0){
            ri = $intRate[0].getElementsByTagName("ri")[0].childNodes[0].nodeValue;
            newAddress += ri+"\n";
         }
         // 출력 좌표에 해당하는 지번 명칭
         if($intRate[0].getElementsByTagName("bunji").length>0){
            bunji = $intRate[0].getElementsByTagName("bunji")[0].childNodes[0].nodeValue;
            newAddress += bunji+"\n";
         }
         // 새(도로명) 주소 매칭을 한 경우, 길 이름을 반환
         if($intRate[0].getElementsByTagName("newRoadName").length>0){
            newRoadName = $intRate[0].getElementsByTagName("newRoadName")[0].childNodes[0].nodeValue;
            newAddress += newRoadName+"\n";
         }
         // 새(도로명) 주소 매칭을 한 경우, 건물 번호를 반환
         if($intRate[0].getElementsByTagName("newBuildingIndex").length>0){
            newBuildingIndex = $intRate[0].getElementsByTagName("newBuildingIndex")[0].childNodes[0].nodeValue;
            newAddress += newBuildingIndex+"\n";
         }
         // 새(도로명) 주소 건물명 매칭을 한 경우, 건물 이름을 반환
         if($intRate[0].getElementsByTagName("newBuildingName").length>0){
            newBuildingName = $intRate[0].getElementsByTagName("newBuildingName")[0].childNodes[0].nodeValue;
            newAddress += newBuildingName+"\n";
         }
         // 새주소 건물을 매칭한 경우 새주소 건물 동을 반환
         if($intRate[0].getElementsByTagName("newBuildingDong").length>0){
            newBuildingDong = $intRate[0].getElementsByTagName("newBuildingDong")[0].childNodes[0].nodeValue;
            newAddress += newBuildingDong+"\n";
         }
         if($intRate[0].getElementsByTagName("newLat").length>0){
                this.resultlat_e =$intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue+"\n" ;
                resultlat_e2=this.resultlat_e
             }
         if($intRate[0].getElementsByTagName("newLon").length>0){
                this.resultlon_e =$intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue+"\n" ;
                resultlon_e2=this.resultlon_e
             }
         // 검색 결과 표출
          var docs = "< a style='color:orange' href='#webservice/docs/fullTextGeocoding' >Docs< /a >"
               $("#result").html("위도 : "+this.resultlat_e+" 경도 : " +this.resultlon_e );      
          }
      
      //구주소일 때 검색 결과 표출
      //구주소인 경우 MatchFlag가 응닶값으로 온다
      if($intRate[0].getElementsByTagName("matchFlag").length>0){
         // 매칭 구분 코드
         matchFlag = $intRate[0].getElementsByTagName("matchFlag")[0].childNodes[0].nodeValue;
         
         // 시/도 명칭
         if($intRate[0].getElementsByTagName("city_do").length>0){
            city = $intRate[0].getElementsByTagName("city_do")[0].childNodes[0].nodeValue;
            address += city+"\n";
         }
         // 군/구 명칭
         if($intRate[0].getElementsByTagName("gu_gun").length>0){
            gu_gun = $intRate[0].getElementsByTagName("gu_gun")[0].childNodes[0].nodeValue;
            address += gu_gun+"\n";
         }
         // 읍면동 명칭
         if($intRate[0].getElementsByTagName("eup_myun").length>0){
            eup_myun = $intRate[0].getElementsByTagName("eup_myun")[0].childNodes[0].nodeValue;
            address += eup_myun+"\n";
         }
         // 출력 좌표에 해당하는 법정동 명칭
         if($intRate[0].getElementsByTagName("legalDong").length>0){
            legalDong = $intRate[0].getElementsByTagName("legalDong")[0].childNodes[0].nodeValue;
            address += legalDong+"\n";
         }
         // 출력 좌표에 해당하는 법정동 명칭
         if($intRate[0].getElementsByTagName("adminDong").length>0){
            adminDong = $intRate[0].getElementsByTagName("adminDong")[0].childNodes[0].nodeValue;
            address += adminDong+"\n";
         }
         // 출력 좌표에 해당하는 리 명칭
         if($intRate[0].getElementsByTagName("ri").length>0){
            ri = $intRate[0].getElementsByTagName("ri")[0].childNodes[0].nodeValue;
            address += ri+"\n";
         }
         // 출력 좌표에 해당하는 지번 명칭
         if($intRate[0].getElementsByTagName("bunji").length>0){
            bunji = $intRate[0].getElementsByTagName("bunji")[0].childNodes[0].nodeValue;
            address += bunji+"\n";
         }
         // 출력 좌표에 해당하는 지번 명칭
         if($intRate[0].getElementsByTagName("buildingName").length>0){
            buildingName = $intRate[0].getElementsByTagName("buildingName")[0].childNodes[0].nodeValue;
            address += buildingName+"\n";
         }
         // 출력 좌표에 해당하는 지번 명칭
         if($intRate[0].getElementsByTagName("buildingDong").length>0){
            buildingDong = $intRate[0].getElementsByTagName("buildingDong")[0].childNodes[0].nodeValue;
            address += buildingDong+"\n";
         }
         if($intRate[0].getElementsByTagName("buildingDong").length>0){
            buildingDong = $intRate[0].getElementsByTagName("buildingDong")[0].childNodes[0].nodeValue;
            address += buildingDong+"\n";
         }
         if($intRate[0].getElementsByTagName("lat").length>0){
                this.resultlat_e =$intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue+"\n" ;
                resultlat_e2=this.resultlat_e
             }
         if($intRate[0].getElementsByTagName("lon").length>0){
                this.resultlon_e =$intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue+"\n" ;
                resultlon_e2=this.resultlon_e
             }
         // 검색 결과 표출
         
          var docs = "< a style='color:orange' href='#webservice/docs/fullTextGeocoding' >Docs< /a >"
               $("#result").html("위도 : "+this.resultlat_e+"경도 : " +this.resultlon_e );      
          }
   },
   //요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
   error:function(request,status,error){
      console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
   }
   
});
}



function div_sh(dd) {
	var headers = {}; 
	headers["appKey"]="f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b";//실행을 위한 키 입니다. 발급받으신 AppKey를 입력하세요.
	var search = dd;
//	alert(this.resultlat_s2+"//"+this.resultlon_s2+"//"+this.resultlat_e2+"//"+this.resultlon_e2);
	$.ajax({
	   
	   method:"POST",
	   headers : headers,
	   url:"https://api2.sktelecom.com/tmap/routes?version=1&format=xml",//자동차 경로안내 api 요청 url입니다.
	   async:false,
	   data:{
	      //출발지 위경도 좌표입니다.
	      startX : resultlon_s2.toString(),
	      startY : resultlat_s2.toString(),
	      //목적지 위경도 좌표입니다.
	      endX : resultlon_e2.toString(),
	      endY : resultlat_e2.toString(),
	      //출발지, 경유지, 목적지 좌표계 유형을 지정합니다.
	      reqCoordType : "WGS84GEO",
	      resCoordType : "EPSG3857",
	      //각도입니다.
	      angle : "172",
	      //경로 탐색 옵션 입니다.
	      searchOption : search
	   },
	   //데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
	   success:function(response){
	      prtcl = response;
	      
	      // 결과 출력
	      var innerHtml ="";
	      var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String   
	       xmlDoc = $.parseXML( prtclString ),
	       $xml = $( xmlDoc ),
	   $intRate = $xml.find("Document");
	   $intRate2 = $xml.find("Placemark");
	   
	   var tdistance = ($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue/1000).toFixed(1);
	   var ttime = ($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0);   
	   var tfare = $intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue;   
	   var taxifare = $intRate[0].getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue;   
	   
	   //콘솔을 선언
	   var console = window.console || {log:function(){}};

	   var roadName='';
	   var roadName2='';
	   //list 선언문
	   var List = [];
	   
	   //로와 거리로 끝나는 정규식 생성 - 보유 데이터의 name속성은 문자열길이가 3부터 7까지 존재.모두 -로 로 끝난다.
	   var ro3 = /^[가-힣][가-힣][로]$/;
	   var ro4 = /^[가-힣][가-힣][가-힣][로]$/;
	   var ro5 = /^[가-힣][가-힣][가-힣][가-힣][로]$/;
	   var ro6 = /^[가-힣][가-힣][가-힣][가-힣][가-힣][로]$/;
	   var ro7 = /^[가-힣][가-힣][가-힣][가-힣][가-힣][가-힣][로]$/;
	   
	   //로 로 끝나는 단어 추출함수
	   function searchRo(roadName){
		   if(roadName=="")
			   return "";
		   if(ro3.test(roadName)){
			   return roadName.match(ro3);
		   }else if(ro4.test(roadName)){
			   return roadName.match(ro4);
		   }else if(ro5.test(roadName)){
			   return roadName.match(ro5);
		   }else if(ro6.test(roadName)){
			   return roadName.match(ro6);
		   }else if(ro7.test(roadName)){
			   return roadName.match(ro7);
		   }else
			   return "";
		   }
	   
	   //중복값 제거
	   function uniqArr(arr) {
	       var result = [];
	       for (var i = 0; i < arr.length; i++) {
	           if (result.length == 0) {
	        	   result.push(arr[i]);
	           } else {
	               var flg = true;
	               for (var j = 0; j < result.length; j++) {
	                   if (String(result[j]) == String(arr[i])) {
	                	   //console.log("걸러짐");
	                       flg = false;
	                       break;
	                   }
	               }
	               if (flg) {
	            	   
	            	   result.push(String(arr[i]));
	               }
	           }
	       }
	       return result;
	   }
	   
	  

	   var roName;
	   //i의 갯수를 1000으로하고 값이 null이 나오면 종료되게 한다. 
	   for (let a=1 ; a <1000 ;a++ ){
	         //document.write(roadName);

	      if(roadName=='목적지'){
	         break;
	      }
	       roadName =$intRate2[a].getElementsByTagName("name")[0].childNodes[0].nodeValue;
	      //공백제거
	      roadName=roadName.replace(/(\s*)/g,"");
	      //console.log(roadName);
	      //-로 로 끝나는 문자열 반환
	      roName = searchRo(roadName);
	      //console.log(roName);
	       //값 넣기
	       if(roName!=""){
	      	List.push(roName);
	       }
	       
	   }
	   
	 	//중복값 제거
	   var uniqList = uniqArr(List);
	 	//alert(uniqList);
	 	var namestring="";
	 	for(var i=0;i<uniqList.length;i++){
	 		namestring+=uniqList[i];
	 		if(i<uniqList.length-1){
	 			namestring+="q";
	 		}
	 	}
	 	console.log(namestring);
	 	
	 	
	 	//alert(namestring);

	 	
	 	
	 	
	 	var start = document.getElementById("one").value;
	 	var end = document.getElementById("two").value;
	 	
	 	//값 넣기
	 	$('input[name=namestring]').attr('value',namestring);
	 	$('input[name=startlng]').attr('value',resultlon_s2.toString());
	 	$('input[name=startlat]').attr('value',resultlat_s2.toString());
	 	$('input[name=endlng]').attr('value',resultlon_e2.toString());
	 	$('input[name=endlat]').attr('value',resultlat_e2.toString());
	 	$('input[name=start]').attr('value',start);
	 	$('input[name=end]').attr('value',end);
	 	$('input[name=searchoption]').attr('value',dd);
	 	$('input[name=tdistance]').attr('value',tdistance );
	 	$('input[name=ttime]').attr('value',ttime );
	 	$('input[name=tfare]').attr('value',tfare );
	 	$('input[name=taxifare]').attr('value',taxifare );
	 	//값 찾기 
	   for(var a in uniqList) {
	       console.log(uniqList[a]+" ");
	      
	   }   
	   
	   
	   
	   
	   $("#result").text("총 거리 : "+tdistance+"km 총 시간 : "+ttime+"분 통행 요금: "+tfare+"원 택시요금 : "+taxifare+"원, "+search );
	      
	   prtcl=new Tmap.Format.KML({extractStyles:true, extractAttributes:true}).read(prtcl);//데이터(prtcl)를 읽고, 벡터 도형(feature) 목록을 리턴합니다.
	   
	   routeLayer.removeAllFeatures();//레이어의 모든 도형을 지웁니다.
	   
	   //표준 데이터 포맷인 KML을 Read/Write 하는 클래스 입니다.
	   //벡터 도형(Feature)이 추가되기 직전에 이벤트가 발생합니다.
	   routeLayer.events.register("beforefeatureadded", routeLayer, onBeforeFeatureAdded);
	           function onBeforeFeatureAdded(e) {
	                 var style = {};
	                 switch (e.feature.attributes.styleUrl) {
	                 case "#pointStyle":
	                    style.externalGraphic = "http://topopen.tmap.co.kr/imgs/point.png"; //렌더링 포인트에 사용될 외부 이미지 파일의 url입니다.
	                    style.graphicHeight = 16; //외부 이미지 파일의 크기 설정을 위한 픽셀 높이입니다.
	                    style.graphicOpacity = 1; //외부 이미지 파일의 투명도 (0-1)입니다.
	                    style.graphicWidth = 16; //외부 이미지 파일의 크기 설정을 위한 픽셀 폭입니다.
	                 break;
	                 default:
	                    style.strokeColor = "#ff0000";//stroke에 적용될 16진수 color
	                    style.strokeOpacity = "1";//stroke의 투명도(0~1)
	                    
	                    style.strokeWidth = "5";//stroke의 넓이(pixel 단위)
	                 };
	              e.feature.style = style;
	           }
	   
	   routeLayer.addFeatures(prtcl); //레이어에 도형을 등록합니다.
	   
	   map.zoomToExtent(routeLayer.getDataExtent());//map의 zoom을 routeLayer의 영역에 맞게 변경합니다.   
	},
	//요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
	error:function(request,status,error){
	   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	}
	});
	} 








function div_sh2(dd) {
var headers = {}; 
headers["appKey"]="f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b";//실행을 위한 키 입니다. 발급받으신 AppKey를 입력하세요.
var search =0;
if(dd>12){
	search = dd-13;
}
else {
search = dd;
}
alert(this.resultlat_s2+"//"+this.resultlon_s2+"//"+this.resultlat_e2+"//"+this.resultlon_e2);
$.ajax({
   
   method:"POST",
   headers : headers,
   url:"https://api2.sktelecom.com/tmap/routes?version=1&format=xml",//자동차 경로안내 api 요청 url입니다.
   async:false,
   data:{
      //출발지 위경도 좌표입니다.
      startX : resultlon_s2.toString(),
      startY : resultlat_s2.toString(),
      //목적지 위경도 좌표입니다.
      endX : resultlon_e2.toString(),
      endY : resultlat_e2.toString(),
      //출발지, 경유지, 목적지 좌표계 유형을 지정합니다.
      reqCoordType : "WGS84GEO",
      resCoordType : "EPSG3857",
      //각도입니다.
      angle : "172",
      //경로 탐색 옵션 입니다.
      searchOption : search
   },
   //데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
   success:function(response){
      prtcl = response;
      
      // 결과 출력
      var innerHtml ="";
      var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String   
       xmlDoc = $.parseXML( prtclString ),
       $xml = $( xmlDoc ),
   $intRate = $xml.find("Document");
   $intRate2 = $xml.find("Placemark");
   
   var tdistance = ($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue/1000).toFixed(1);
   var ttime = ($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0);   
   var tfare = $intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue;   
   var taxifare = $intRate[0].getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue;   
   
   //콘솔을 선언
   var console = window.console || {log:function(){}};

   var roadName='';
   var roadName2='';
   //list 선언문
   var List = [];
   var List1 = [];
   var List2 = [];
   var List3 = [];
   var List4 = [];
   var List10 = [];
   var List12 = [];

   
   
   //로와 거리로 끝나는 정규식 생성 - 보유 데이터의 name속성은 문자열길이가 3부터 7까지 존재.모두 -로 로 끝난다.
   var ro3 = /^[가-힣][가-힣][로]$/;
   var ro4 = /^[가-힣][가-힣][가-힣][로]$/;
   var ro5 = /^[가-힣][가-힣][가-힣][가-힣][로]$/;
   var ro6 = /^[가-힣][가-힣][가-힣][가-힣][가-힣][로]$/;
   var ro7 = /^[가-힣][가-힣][가-힣][가-힣][가-힣][가-힣][로]$/;
   
   //로 로 끝나는 단어 추출함수
   function searchRo(roadName){
	   if(roadName=="")
		   return "";
	   if(ro3.test(roadName)){
		   return roadName.match(ro3);
	   }else if(ro4.test(roadName)){
		   return roadName.match(ro4);
	   }else if(ro5.test(roadName)){
		   return roadName.match(ro5);
	   }else if(ro6.test(roadName)){
		   return roadName.match(ro6);
	   }else if(ro7.test(roadName)){
		   return roadName.match(ro7);
	   }else
		   return "";
	   }
   
   //중복값 제거
   function uniqArr(arr) {
       var result = [];
       for (var i = 0; i < arr.length; i++) {
           if (result.length == 0) {
        	   result.push(arr[i]);
           } else {
               var flg = true;
               for (var j = 0; j < result.length; j++) {
                   if (String(result[j]) == String(arr[i])) {
                	   //console.log("걸러짐");
                       flg = false;
                       break;
                   }
               }
               if (flg) {
            	   
            	   result.push(String(arr[i]));
               }
           }
       }
       return result;
   }
   
  

   var roName;
   
   
   
   
   
   //i의 갯수를 1000으로하고 값이 null이 나오면 종료되게 한다. 
   for (let a=1 ; a <1000 ;a++ ){
         //document.write(roadName);

      if(roadName=='목적지'){
         break;
      }
       roadName =$intRate2[a].getElementsByTagName("name")[0].childNodes[0].nodeValue;
      //공백제거
      roadName=roadName.replace(/(\s*)/g,"");
      //console.log(roadName);
      //-로 로 끝나는 문자열 반환
      roName = searchRo(roadName);
      //console.log(roName);
       //값 넣기
       
       if(dd==0){
       if(roName!=""){
      	List.push(roName);
       }
       
	   }
       else if(dd==1){
	   if(roName!=""){
	  	List1.push(roName);
	   }
	}
       else if(dd==2){
		   if(roName!=""){
		  	List2.push(roName);
		   }
		}
       else if(dd==3){
		   if(roName!=""){
		  	List3.push(roName);
		   }
		}
       else if(dd==4){
		   if(roName!=""){
		  	List4.push(roName);
		   }
		}
       else if(dd==10){
		   if(roName!=""){
		  	List10.push(roName);
		   }
		}
       else if(dd==12){
		   if(roName!=""){
		  	List12.push(roName);
		   }
		}
   }
   
 	//중복값 제거
   
 

 	//alert(uniqList);

 	
 	if(dd==0){
 	 	var namestring="";
 	 	 var uniqList = uniqArr(List);
 	for(var i=0;i<uniqList.length;i++){
 		namestring+=uniqList[i];
 		if(i<uniqList.length-1){
 			namestring+="q";
 		}
 	}
 	}
 	
 	if(dd==1){
 	   var uniqList1 = uniqArr(List1);
 	 	var namestring1="";
 	for(var i=0;i<uniqList1.length;i++){
 		namestring1+=uniqList1[i];
 		if(i<uniqList1.length-1){
 			namestring1+="q";
 		}
 	}
 	}
 	
 	if(dd==2){
 	    var uniqList2 = uniqArr(List2);
 	 	var namestring2="";
 	for(var i=0;i<uniqList.length;i++){
 		namestring2+=uniqList2[i];
 		if(i<uniqList2.length-1){
 			namestring2+="q";
 		}
 	}
 	}
 	
 	if(dd==3){
 	    var uniqList3 = uniqArr(List3);
 	 	var namestring3="";
 	for(var i=0;i<uniqList3.length;i++){
 		namestring3+=uniqList3[i];
 		if(i<uniqList3.length-1){
 			namestring3+="q";
 		}
 	}
 	}
 	
 	if(dd==4){
 	   var uniqList4 = uniqArr(List4);
 	 	var namestring4="";
 	for(var i=0;i<uniqList4.length;i++){
 		namestring4+=uniqList4[i];
 		if(i<uniqList4.length-1){
 			namestring4+="q";
 		}
 	}
 	}
 	

 	
 	if(dd==10){
 	    var uniqList10 = uniqArr(List10);
 	 	var namestring10="";
 	for(var i=0;i<uniqList10.length;i++){
 		namestring10+=uniqList10[i];
 		if(i<uniqList10.length-1){
 			namestring10+="q";
 		}
 	}
 	}
 	
 	if(dd==12){
		  var uniqList12 = uniqArr(List12);
		 	var namestring12="";
	for(var i=0;i<uniqList12.length;i++){
		namestring12+=uniqList12[i];
		if(i<uniqList12.length-1){
			namestring12+="q";
		}
	}
	}
 	
 	/* 
 	switch (dd){
 	case 0 :
 	 	alert("00000"+namestring);
 	break;
 	case 1 :
 	 	alert("11111"+namestring1);
 	break;
 	case 2 :
 	 	alert("22222"+namestring2);
 	break;
 	case 3 : 
 	 	alert("33333"+namestring3);
 	break;
 	case 4 :
 	 	alert("4444444"+namestring4);
 	break;
 	case 10 :
 	 	alert("1010101010"+namestring10);
 	 	break;
 	case 12 :
 	 	alert("12121212"+namestring12);
 	 	break;
 	default :
 	 	alert("damn it!");
 	}
 	
 	 */
 	 
 	switch (dd){
 	case 0 :
 		totalnamestring=namestring;
 	break;
 	case 1 :
 		totalnamestring=totalnamestring+"w"+namestring1;
 	break;
 	case 2 :
 		totalnamestring=totalnamestring+"w"+namestring2;
 	break;
 	case 3 : 
 		totalnamestring=totalnamestring+"w"+namestring3;
 	break;
 	case 4 :
 		totalnamestring=totalnamestring+"w"+namestring4;
 	break;
 	case 10 :
 		totalnamestring=totalnamestring+"w"+namestring10;
 	 	break;
 	case 12 :
 		totalnamestring=totalnamestring+"w"+namestring12;
 	 	break;
 	default :
 	 	alert("damn it!");
 	}
 	 
 	 
 
 	
 	
 	//alert(totalnamestring);
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	var start = document.getElementById("one").value;
 	var end = document.getElementById("two").value;
 	
 	//값 넣기
 	$('input[name=totalnamestring]').attr('value',totalnamestring);
 	

 	
 	

 	//값 찾기 
   for(var a in uniqList) {
       console.log(uniqList[a]+" ");
      
   }   
   
   
   
   $("#result").text("총 거리 : "+tdistance+"km 총 시간 : "+ttime+"분 통행 요금: "+tfare+"원 택시요금 : "+taxifare+"원, "+search );
     
   
   
   
   prtcl=new Tmap.Format.KML({extractStyles:true, extractAttributes:true}).read(prtcl);//데이터(prtcl)를 읽고, 벡터 도형(feature) 목록을 리턴합니다.
   routeLayer.removeAllFeatures();//레이어의 모든 도형을 지웁니다.
   
   //표준 데이터 포맷인 KML을 Read/Write 하는 클래스 입니다.
   //벡터 도형(Feature)이 추가되기 직전에 이벤트가 발생합니다.
   routeLayer.events.register("beforefeatureadded", routeLayer, onBeforeFeatureAdded);
           function onBeforeFeatureAdded(e) {
                 var style = {};
                 switch (e.feature.attributes.styleUrl) {
                 case "#pointStyle":
                    style.externalGraphic = "http://topopen.tmap.co.kr/imgs/point.png"; //렌더링 포인트에 사용될 외부 이미지 파일의 url입니다.
                    style.graphicHeight = 16; //외부 이미지 파일의 크기 설정을 위한 픽셀 높이입니다.
                    style.graphicOpacity = 1; //외부 이미지 파일의 투명도 (0-1)입니다.
                    style.graphicWidth = 16; //외부 이미지 파일의 크기 설정을 위한 픽셀 폭입니다.
                 break;
                 default:
                    style.strokeColor = "#ff0000";//stroke에 적용될 16진수 color
                    style.strokeOpacity = "1";//stroke의 투명도(0~1)
                    
                    style.strokeWidth = "5";//stroke의 넓이(pixel 단위)
                 };
              e.feature.style = style;
           }
   
   routeLayer.addFeatures(prtcl); //레이어에 도형을 등록합니다.
   
   map.zoomToExtent(routeLayer.getDataExtent());//map의 zoom을 routeLayer의 영역에 맞게 변경합니다.   
},
//요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
error:function(request,status,error){
   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
}
});
} 







</script>

<!--고정시키는 부분  -->
<c:if test="${not empty requestScope.SearchOption }">
<script>

(function(){
   div_sh(${requestScope.SearchOption});
   })()
document.getElementById("searchsection").click();
</script>
</c:if>		

<div class="w3-bar w3-large">
      <a href="#rooms" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><h4>Search Option</h4></a>
		</div>
		<div class="w3-row-padding w3-col w3-margin-top">
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-1-set" value="0" onclick="div_sh(0);"><label
					for="radio-1-set">교&nbsp;&nbsp;통&nbsp;&nbsp;최&nbsp;&nbsp;적&nbsp;+&nbsp;추&nbsp;&nbsp;천</label>
			</div>
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-2-set" value="1" onclick="div_sh(1);"><label
					for="radio-2-set">교통최적+무료우선</label>
			</div>
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-3-set" value="2" onclick="div_sh(2);"><label
					for="radio-3-set">교통최적+최소시간</label>
			</div>
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-4-set" value="3" onclick="div_sh(3);"><label
					for="radio-4-set">교 통 최 적 + 초 보</label>
			</div>
			</div>
			<div class="w3-row-padding w3-col w3-margin-top">
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-5-set" value="4" onclick="div_sh(4);"><label
					for="radio-5-set">교통최적+고속도로우선</label>
			</div>
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-6-set" value="10" onclick="div_sh(10);"><label
					for="radio-6-set">&nbsp;  최&nbsp;&nbsp;&nbsp;&nbsp;단 &nbsp;&nbsp;&nbsp;거 &nbsp;&nbsp;&nbsp;&nbsp;리  &nbsp;</label>
			</div>
			<div class="w3-col m3">
				<button type="radio" checked="" class="btn btn-outline-primary btn-lg" name="ww"
					id="radio-7-set" value="12" onclick="div_sh(12);"><label
					for="radio-7-set">이 륜 차 도 로 우 선</label>
			</div>
			<br>
		</div>
<br>

<br>
<c:if test="${requestScope.RiskGrade==0.0 }">

</c:if>

<br>

<c:if test="${requestScope.RiskGrade!=0.0 }">
 
			<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "light",
  "dataProvider": [ {
    "country": "사망자수",
    "value": ${requestScope.DeadNum }
  }, {
    "country": "중상자수",
    "value": ${requestScope.CriticalNum }
  }, {
    "country": "경상자수",
    "value": ${requestScope.StableNum }
  }, {
    "country": "부상신고자수",
    "value": ${requestScope.ClaimantNum }
  } ],
  "valueField": "value",
  "titleField": "country",
  "outlineAlpha": 0.4,
  "depth3D": 15,
  "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
  "angle": 10,
  "export": {
    "enabled": true
  }
} );
</script>
<script>
var chart2 = AmCharts.makeChart("gaugediv", {
  "theme": "none",
  "type": "gauge",
  "axes": [{
    "topTextFontSize": 20,
    "topTextYOffset": 70,
    "axisColor": "#31d6ea",
    "axisThickness": 1,
    "endValue": 100,
    "gridInside": true,
    "inside": true,
    "radius": "55%",
    "valueInterval": 10,
    "tickColor": "#67b7dc",
    "startAngle": -90,
    "endAngle": 90,
    "unit": "%",
    "bandOutlineAlpha": 0,
    "bands": [{
      "color": "#1ee83c",
      "endValue": 100,
      "innerRadius": "105%",
      "radius": "170%",
      "gradientRatio": [0.5, 0, -0.5],
      "startValue": 0
    }, {
      "color": "#e22b2b",
      "endValue": 0,
      "innerRadius": "105%",
      "radius": "170%",
      "gradientRatio": [0.5, 0, -0.5],
      "startValue": 0
    }]
  }],
  "arrows": [{
    "alpha": 1,
    "innerRadius": "35%",
    "nailRadius": 0,
    "radius": "170%"
  }]
});

setInterval(randomValue, 2000);

// set random value
function randomValue() {
  var value = ${requestScope.RiskRatio};
  value=(value/16).toFixed(4)*100;
  chart2.arrows[0].setValue(value);
  chart2.axes[0].setTopText(value+" %");
  // adjust darker band to new value
  chart2.axes[0].bands[1].setEndValue(value);
}
</script>




<script>
var chart4 = AmCharts.makeChart("gaugediv2", {
  "theme": "none",
  "type": "gauge",
  "axes": [{
    "topTextFontSize": 20,
    "topTextYOffset": 70,
    "axisColor": "#31d6ea",
    "axisThickness": 1,
    "endValue": 4,
    "gridInside": true,
    "inside": true,
    "radius": "55%",
    "valueInterval": 0.5,
    "tickColor": "#67b7dc",
    "startAngle": -90,
    "endAngle": 90,
    "unit": "등급",
    "bandOutlineAlpha": 0,
    "bands": [{
      "color": "#1ee83c",
      "endValue": 4,
      "innerRadius": "105%",
      "radius": "170%",
      "gradientRatio": [0.5, 0, -0.5],
      "startValue": 0
    }, {
      "color": "#e22b2b",
      "endValue": 0,
      "innerRadius": "105%",
      "radius": "170%",
      "gradientRatio": [0.5, 0, -0.5],
      "startValue": 0
    }]
  }],
  "arrows": [{
    "alpha": 1,
    "innerRadius": "35%",
    "nailRadius": 0,
    "radius": "170%"
  }]
});

setInterval(randomValue2, 2000);

// set random value
function randomValue2() {
  var value2 = ${requestScope.RiskGrade};
  value2=(value2);
  chart4.arrows[0].setValue(value2);
  chart4.axes[0].setTopText(value2);
  // adjust darker band to new value
  chart4.axes[0].bands[1].setEndValue(value2);
}
</script>




<!-- total 차트 -->









<!-- 
<div class="w3-row-padding w3-padding-16">
<div id="gaugediv" class="w3-third w3-margin-top" style="width:50%"></div>
<div id="chartdiv" class="w3-third w3-margin-bottom" style="width:50%"></div>
</div>
-->

<div class="w3-container" style="padding: 64px 16px" id="about">
      <div class="tab">
      
       <button class="tablink" onclick="openPage('RouteInfo', this, 'red')">해당 경로 데이터</button>
<button class="tablink" onclick="openPage('RiskPercent', this, 'green')" id="defaultOpen">평균 위험도</button>
<button class="tablink" onclick="openPage('AccidentInfo', this, 'blue')">사고 평균 데이터</button>
<button class="tablink" onclick="openPage('About', this, 'orange')">전체경로 데이터 분석</button>
         
      </div>
      </div>
      
		<div class="w3-margin-left w3-center">




				<div id="RouteInfo" class="tabcontent">

					<div class="row">
						<div class="column"  ">
						<div class="card" >


							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<h4>선택 경로 : ${requestScope.SearchOption }</h4>
							&nbsp;&nbsp;&nbsp;
							<h2><%@ page import="java.util.*, java.text.*"%>
								<%
									java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("HH:mm");
										String time = formatter.format(new java.util.Date());
										out.println("현재 시간 : " + time);
								%>
							</h2>
							<br>
							<h1>
								<font color="green">${requestScope.TTime } 분</font>
							</h1>
							
							<br><br><br><br>
							<br>
							<br>
							<br>
							<br>
							<br>
						
						

						</div>
						</div>
						
						
						
						<div class="column"  ">
						<div class="card" >
							<br>
							<br>
							<br>
							<c:set var="RiskRatio_icon" value="${requestScope.RiskRatio }"></c:set>

							<c:choose>
								<c:when test="${RiskRatio_icon <= 3.0}">
									<img class="w3-image" src="img/kiss.png" alt="The main"
										style="width: 70%; height: 70%; align:right;">
									<br>
									<h1>
										<font color="green">매우 안전-!</font>
									</h1>
								</c:when>
								<c:when test="${RiskRatio_icon <= 6.0}">
									<img class="w3-image" src="img/happiness2.png" alt="The main"
										style="width: 70%; height: 70%;align:right;">
									<br>
									<h1>
										<font color="green">안전-!</font>
									</h1>
								</c:when>
								<c:when test="${RiskRatio_icon <= 9.0}">
									<img class="w3-image" src="img/happiness.png" alt="The main"
										style="width: 70%; height: 70%; align:right;">
									<br>
									<br>
									<br>
									<h1>
										<font color="green">보통</font>
									</h1>
								</c:when>
								<c:when test="${RiskRatio_icon <= 12.0}">
									<img class="w3-image" src="img/sad.png" alt="The main"
										style="width: 70%; height: 70%; align:right;">
									<br>
									<h1>
										<font color="green">위험-!</font>
									</h1>
								</c:when>
								<c:when test="${RiskRatio_icon <= 15.0}">
									<img class="w3-image" src="img/angry.png" alt="The main"
										style="width: 70%; height: 70%; align:right;">
									<br>
									<h1>
										<font color="green">매우 위험-!</font>
									</h1>
								</c:when>
								<c:when test="${RiskRatio_icon <= 35.0}">
									<img class="w3-image" src="img/dead.png" alt="The main"
										style="width: 70%; height: 70%;  align:center;">
									<br>
									<h1>
										<font color="green">죽음의 길-!</font>
									</h1>
								</c:when>

							</c:choose>

						</div>
						</div>
						
						
						
						<div class="column"  ">
						<div class="card" >
							<p id="SearchOption">
							<h4>
								경로 유형 : ${requestScope.SearchOption }번 째 경로
								</p>
							</h4>
							<br>
							<br>

							<p id="RiskRatio">
							<h4>
								도로별 평균 위험도 : ${requestScope.RiskRatio }
								</p>
							</h4>
							<br>
							<br>

							<p id="RiskGrade">
							<h4>
								도로별 평균 위험 등급 : ${requestScope.RiskGrade } 등급
								</p>
							</h4>
							<br>
							<br>

							<p id="AccidentNum">
							<h4>
								총 거리 : ${requestScope.TDistance  } km
								</p>
							</h4>
							<br>
							<br>

							<p id="TTime">
							<h4>
								총 시간 : ${requestScope.TTime  } 분
								</p>
							</h4>
							<br>
							<br>

							<p id="TFare">
							<h4>
								통행 비용 : ${requestScope.TFare } 원
								</p>
							</h4>
							<br>
							<br>

							<p id="TaxiFare">
							<h4>
								예상 택시 요금 : ${requestScope.TaxiFare  } 원
								</p>
							</h4>
							<br>
						</div>
					</div>
					</div>
					</div>



					<div id="RiskPercent" class="tabcontent">
						<div class="w3-row-padding w3-padding-16">
							<div id="gaugediv" class="w3-third w3-margin-top"
								style="width: 50%"></div>
							<div id="gaugediv2" class="w3-third w3-margin-top"
								style="width: 50%"></div>

						</div>
					</div>

					<div id="AccidentInfo" class="tabcontent">
						<div class="w3-row-padding w3-padding-16">
							<div id="chartdiv" class="w3-third w3-margin-bottom"
								style="width: 100%"></div>

						</div>
					</div>
					<div id="About" class="tabcontent">
						<div class="w3-row-padding w3-padding-16">
							<div id="chart3" style="width: 100%"></div>
							<script>


var chart3 = Highcharts.chart('chart3', {
  title: {
    text: '     　　　　　　　   경로 별 사고 평균 '
  },
  xAxis: {
    categories: ['경로 1 ', '경로 2', '경로 3', '경로 4', '경로 5','경로 6', '경로 7']
  },
  labels: {
    items: [{
      html: '',
      style: {
        left: '50px',
        top: '18px',
        color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
      }
    }]
  },
  series: [{
    type: 'column',
    name: '사망자수',
    data: [${requestScope.AccidentNum }, ${requestScope.DeadNum }, ${requestScope.CriticalNum }, ${requestScope.StableNum }, ${requestScope.ClaimantNum },5,3]
  }, {
    type: 'column',
    name: '중상자수',
    data: [2, 3, 5, 7, 6,7,6]
  }, {
    type: 'column',
    name: '경상자수',
    data: [4, 3, 3, 9, 2,5,1]
  },{
	    type: 'column',
	    name: '부상신고자수',
	    data: [4, 3, 3, 9, 3,5,1]
	  },
  
	

  {
    type: 'spline',
    name: '사고건수',
    data: [3, 2.67, 3, 6.33, 3.33,2.5,4.5],
    marker: {
      lineWidth: 2,
      lineColor: Highcharts.getOptions().colors[3],
      fillColor: 'white'
    }
  }, ]
});


</script>


						</div>
					</div>



				</div></c:if>




<!-- Footer -->
<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div><!-- copyright -->
			<h3>SOLIDIUM.</h3>
			<p>Phone : 010-3967-3325, 010-9003-4096, 010-7202-8295 Copyright(c) 2018   Email : glee1228@naver.com   <a href="localhost:8088/Security_Navigation_Web/main.jsp" target="_blank" class="w3-hover-text-green"> www.solidium.com </a>Allright Reserved.</p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->


<div id="id01" class="modal">

  <form class="modal-content animate" action="cont">
  <input type="hidden"name="command" value="login">
    <div class="imgcontainer" >
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2>SOLIDIUM<br>: search the safety route</h2>
    </div>

    <div class="container">
      <label for="id"><b>UserID</b></label><br>
       <input type="text" placeholder="Enter ID" name="id" required><br>

      <label for="pw"><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="pw" required>
      
    </div>

    <div class="container w3-center" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    	<button type="submit" class="loginbtn">Login</button>
    </div>
  </form>
</div>

<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="cont">
  <input type="hidden"name="command" value="signup">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="id"><b>Email</b></label><br>
      <input type="text" placeholder="Enter Id" name="id" required><br>

      <label for="pw"><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="pw" required><br>

      <label for="pw-repeat"><b>Repeat Password</b></label><br>
      <input type="password" placeholder="Repeat Password" name="pw-repeat" required><br>
      
      <label for="name"><b>Name</b></label><br>
      <input type="text" placeholder="Enter Name" name="name" required><br>
      
      <div class="clearfix w3-center">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="w3-bar-item w3-button"><i class="fa fa-user-plus"></i>Sign Up</button>
      </div>
     
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
    
}
</script>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>


</body>
</html>
