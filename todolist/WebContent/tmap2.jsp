<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 다중 경로안내 30</title>
</head>
<body>
<div id="map_div" ></div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=f70ef694-e6b4-4f17-b5e6-7255a2b3ab9b"></script>

<p id="result"></p>            
<script>      
// map 생성
// Tmap.map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.                  
map = new Tmap.Map({
   div : 'map_div', // map을 표시해줄 div
   width : "100%", // map의 width 설정
   height : "380px", // map의 height 설정
});
map.setCenter(new Tmap.LonLat("126.9850380932383", "37.566567545861645").transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점으로 설정합니다.

var routeLayer = new Tmap.Layer.Vector("route");//벡터 레이어 생성
var markerLayer = new Tmap.Layer.Markers("start");// 마커 레이어 생성
map.addLayer(routeLayer);//map에 벡터 레이어 추가
map.addLayer(markerLayer);//map에 마커 레이어 추가

// 시작
var size = new Tmap.Size(24, 38);//아이콘 크기 설정
var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png />', size, offset);//마커 아이콘 설정
var marker_s = new Tmap.Marker(new Tmap.LonLat("126.9850380932383", "37.566567545861645").transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
markerLayer.addMarker(marker_s);//마커 레이어에 마커 추가

// 도착
var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png />', size, offset);//마커 아이콘 설정
var marker_e = new Tmap.Marker(new Tmap.LonLat("127.10331814639885", "37.403049076341794").transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
markerLayer.addMarker(marker_e);//마커 레이어에 마커 추가

var headers = {}; 
headers["appKey"]="ec633e08-ce42-48a8-9674-a3e09c7bea73";//실행을 위한 키 입니다. 발급받으신 AppKey를 입력하세요.
$.ajax({
   method:"POST",
   headers : headers,
   url:"https://api2.sktelecom.com/tmap/routes?version=1&format=xml",//자동차 경로안내 api 요청 url입니다.
   async:false,
   data:{
         endX:"129.032714"
               endY:"35.106811"
               startX:"126.982177"
               startY:"37.564686"
               reqCoordType:"WGS84GEO"
               resCoordType:"WGS84GEO"
               tollgateFareOption:"1"
               roadType:"32"
               directionOption:"0"
               endRpFlag:"16"
               endPoiId:"67516"
               gpsTime:"10000"
               angle:"90"
               speed:"60"
               uncetaintyP:"3"
               uncetaintyA:"3"
               uncetaintyAP:"12"
               camOption:"0"
               carType:"0"
               startName:"%EB%A1%AF%EB%8D%B0%EB%B0%B1%ED%99%94%EC%A0%90"
               endName:"%EB%B6%80%EC%82%B0%EC%8B%9C%EC%A4%91%EA%B5%AC%EC%B2%AD"
               searchOption:"0"  
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
       
       var tDistance = "총 거리 : "+($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue/1000).toFixed(1)+"km,";
       var tTime = " 총 시간 : "+($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0)+"분,";   
       var tFare = " 총 요금 : "+$intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue+"원,";   
       var taxiFare = " 예상 택시 요금 : "+$intRate[0].getElementsByTagName("tmap:taxiFare")[0].childNodes[0].nodeValue+"원";   
       var startname = "시작지점 : "+$intRate[1].getElemetsByTagName("tmap:description")[1].childNodes[1].nodeValue+"=>설명입니다";

       $("#result").text(tDistance+tTime+tFare+taxiFare);
      
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



</script>
            
</body>
</html>
-------------------------------------------------------------------------------------------