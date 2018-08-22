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
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #616161;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
}

button:hover {
    opacity: 0.8;
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
/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #d1d1d1;
    background-color: #ffffff;
}

/* Style the buttons inside the tab */
.tab button {

    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 22px;
    font-color: #FFFFFF;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content  - about style*/
.tabcontent {
    display: none;
    padding: 6px 12px;
    -webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
}

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
  <a href="#rooms" class="w3-bar-item w3-button w3-mobile">SEARCH</a>
       <a class ="w3-bar-item w3-button" onclick="document.getElementById('id02').style.display='block'" >SIGNUP</a>
      <a class ="w3-bar-item w3-button" onclick="document.getElementById('id01').style.display='block'" >LOGIN</a>
  <a href="#rooms" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile">SEARCH NOW</a>
	   
    
</div>


<!-- Header -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
  
  <img class="w3-image" src="img/main1.jpg" alt="The main" style="min-width:1000px" width="1500" height="600">
  
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <!-- <div class="w3-container w3-black">
      <h2><i class="fa fa-map w3-margin-right"></i>Hotel Name</h2>
    </div>
 -->    <p>
 	<img src="img/SOLIDIUM4.png" align="center" class="w3-image w3-center" style="min-width:500px" width="680" height="325">
      </p>
      <!-- <form action="/action_page.php" target="_blank"> -->
       <!--  <div class="w3-row-padding" style="margin:0 -16px;"> -->
        <!--   <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-calendar-o"></i> 출발</label>
            <input class="w3-input w3-border" type="text" placeholder="출발지" name="CheckIn" required>
          </div>
          <div class="w3-half">
            <label><i class="fa fa-calendar-o"></i> 도착</label>
            <input class="w3-input w3-border" type="text" placeholder="도착지" name="CheckOut" required>
          </div>
        </div>
        <div class="w3-row-padding" style="margin:8px -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-male"></i> Adults</label>
            <input class="w3-input w3-border" type="number" value="1" name="Adults" min="1" max="6">
          </div>
          <div class="w3-half">
            <label><i class="fa fa-child"></i> Kids</label>
          <input class="w3-input w3-border" type="number" value="0" name="Kids" min="0" max="6">
          </div>
        </div>
        <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-search w3-margin-right"></i> Search availability</button>
      </form>
    </div>
  </div> -->
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>SEARCH NOW </h3>
    <p>We always search the safety route where you are.</p>
  </div>
  
  <div class="w3-row-padding">
    <div class="w3-col m3">
      <label><i class="fa fa-cal"></i> 출발</label>
      <input class="w3-input w3-border" type="text" id="one" placeholder="출발지">
    	
    </div>
			<div class="w3-col m1 ">
				<button onclick="fun()">출발지</button>
				<br>
			</div>
			<div class="w3-col m3">
				<label><i class="fa fa-calendar-o"></i> 도착</label> <input
					class="w3-input w3-border" type="text" id="two" placeholder="도착지">

			</div>
			<div class="w3-col m1 ">
				<button onclick="fun1()">도착지</button>
				<br>
			</div>
			<form action="cont" method="GET">
				<div class="w3-col m3">
					<label><i class="fa fa-search"></i> Search</label>

					<div class="w3-col m2">
						<input type="hidden"  name="namestring" value="">
						<input type="hidden" name="command" value="avgRoute">
						<input type="hidden" name="startlat" value="">
						<input type="hidden" name="startlng" value="">
						<input type="hidden" name="endlat" value="">
						<input type="hidden" name="endlng" value="">
						<input type="hidden" name="start" value="">
						<input type="hidden" name="end" value="">
					</div>
					<button type="submit" class="w3-button w3-block w3-black">Search</button>
				</div>
			</form>

		</div>

<div id="map_div" class=" w3-padding w3-col w3-container" style="max-width:1200px" width="680" height="550"; >
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b"></script>


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
   
   var tDistance = "총 거리 : "+($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue/1000).toFixed(1)+"km,";
   var tTime = " 총 시간 : "+($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0)+"분,";   
   var tFare = " 총 요금 : "+$intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue+"원,";   
   var taxiFare = " 예상 택시 요금 : "+$intRate[0].getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue+"원";   
   
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
 	
 	//값 찾기 
   for(var a in uniqList) {
       console.log(uniqList[a]+" ");
      
   }   
   
   
   
   
   $("#result").text(tDistance+tTime+tFare+taxiFare+", "+search );
      
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
		<div class="w3-bar w3-large">
      <a href="#rooms" class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"><h4>Search Option</h4></a>
		</div>
		<div class="w3-row-padding w3-col w3-margin-top">
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-1-set" value="0" onclick="div_sh(0);"><label
					for="radio-1-set">교통최적+추천</label>
			</div>
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-2-set" value="1" onclick="div_sh(1);"><label
					for="radio-2-set">교통최적+무료우선</label>
			</div>
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-3-set" value="2" onclick="div_sh(2);"><label
					for="radio-3-set">교통최적+최소시간</label>
			</div>
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-4-set" value="3" onclick="div_sh(3);"><label
					for="radio-4-set">교통최적+초보</label>
			</div>
			</div>
			<div class="w3-row-padding w3-col w3-margin-top">
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-5-set" value="4" onclick="div_sh(4);"><label
					for="radio-5-set">교통최적+고속도로우선</label>
			</div>
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-6-set" value="10" onclick="div_sh(10);"><label
					for="radio-6-set">최단거리</label>
			</div>
			<div class="w3-col m3">
				<input type="radio" checked="" class="regular-radio" name="ww"
					id="radio-7-set" value="12" onclick="div_sh(12);"><label
					for="radio-7-set">이륜차도로우선</label>
			</div>
			<br>
		</div>

<br>
<c:if test="${requestScope.RiskGrade==0.0 }">

</c:if>

<br>
<c:if test="${requestScope.RiskGrade!=0.0 }">
<p id="msg">${requestScope.msg }</p>
<p id="RiskRatio"><h4>도로별 평균 위험도</h4>${requestScope.RiskRatio }</p>
<p id="RiskGrade"><h4>도로별 평균 위험 등급</h4>${requestScope.RiskGrade }</p>
<p id="AccidentNum"><h4>도로별 평균 사고건수</h4>${requestScope.AccidentNum }</p>
<p id="DeadNum"><h4>도로별 평균 사망자 수</h4>${requestScope.DeadNum }</p>
<p id="CriticalNum"><h4>도로별 평균 중상자 수</h4>${requestScope.CriticalNum }</p>
<p id="StableNum"><h4>도로별 평균 경상자 수</h4>${requestScope.StableNum }</p>
<p id="ClaimantNum"><h4>도로별 평균 부상신고자 수</h4>${requestScope.ClaimantNum }</p>
<p id="Start"><h4>출발지</h4>${requestScope.Start }</p>
<p id="End"><h4>목적지</h4>${requestScope.End }</p>
<p id="StartLat"><h4>출발지 위도</h4>${requestScope.StartLat }</p>
<p id="StartLng"><h4>출발지 경도</h4>${requestScope.StartLng }</p>
<p id="EndLat"><h4>목적지 위도</h4>${requestScope.EndLat }</p>
<p id="EndLng"><h4>목적지 경도</h4>${requestScope.EndLng }</p>

</c:if>
  <div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="/w3images/room_single.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Single Room</h3>
        <h6 class="w3-opacity">From $99</h6>
        <p>Single bed</p>
        <p>15m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="/w3images/room_double.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Double Room</h3>
        <h6 class="w3-opacity">From $149</h6>
        <p>Queen-size bed</p>
        <p>25m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="/w3images/room_deluxe.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Deluxe Room</h3>
        <h6 class="w3-opacity">From $199</h6>
        <p>King-size bed</p>
        <p>40m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
  </div>

  <div class="w3-row-padding" id="about">
    <div class="w3-col l4 m7">
      <h3>About</h3>
      <h6>Our hotel is one of a kind. It is truely amazing. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</h6>
    <p>We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
    </div>
    <div class="w3-col l8 m5">
      <div id="googleMap" style="width:100%;height:400px;" class="w3-grayscale"></div>
    </div>
  </div>
  
  <div class="w3-row w3-large w3-center" style="margin:32px 0">
    <div class="w3-third"><i class="fa fa-map-marker w3-text-red"></i> 423 Some adr, Chicago, US</div>
    <div class="w3-third"><i class="fa fa-phone w3-text-red"></i> Phone: +00 151515</div>
    <div class="w3-third"><i class="fa fa-envelope w3-text-red"></i> Email: mail@mail.com</div>
  </div>

  <div class="w3-panel w3-black w3-leftbar w3-padding-32">
    <h6><i class="fa fa-info w3-deep-orange w3-padding w3-margin-right"></i> On demand, we can offer playstation, babycall, children care, dog equipment, etc.</h6>
  </div>

  <div class="w3-container">
    <h3>Our Hotels</h3>
    <h6>You can find our hotels anywhere in the world:</h6>
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="/w3images/cinqueterre.jpg" alt="Cinque Terre" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Cinque Terre</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="/w3images/newyork2.jpg" alt="New York" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">New York</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="/w3images/sanfran.jpg" alt="San Francisco" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">San Francisco</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="/w3images/pisa.jpg" alt="Pisa" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Pisa</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="/w3images/paris.jpg" alt="Paris" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Paris</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="w3-container w3-padding-32 w3-black w3-opacity w3-card w3-hover-opacity-off" style="margin:32px 0;">
    <h2>Get the best offers first!</h2>
    <p>Join our newsletter.</p>
    <label>E-mail</label>
    <input class="w3-input w3-border" type="text" placeholder="Your Email address">
    <button type="button" class="w3-button w3-black w3-margin-top">Subscribe</button>
  </div>

  <div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="fa fa-map-marker w3-text-red" style="width:30px"></i> Chicago, US<br>
    <i class="fa fa-phone w3-text-red" style="width:30px"></i> Phone: +00 151515<br>
    <i class="fa fa-envelope w3-text-red" style="width:30px"> </i> Email: mail@mail.com<br>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p><button class="w3-button w3-black w3-padding-large" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>

<!-- End page content -->
</div>





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
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">w3.css</a></p>
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

<!-- copyright -->
<div class="w3-container w3-light-grey">
			<h3>SOLIDIUM.</h3>
			<p>Phone : 010-3967-3325, 010-9003-4096 Copyright(c) 2018   Email : glee1228@naver.com    www.solidium.com Allright Reserved.</p>
</div>
</body>
</html>
