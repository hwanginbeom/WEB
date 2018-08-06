<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>simpleMap</title>
        <script src="https://api2.sktelecom.com/tmap/js?version=1&format=javascript&appKey=ec633e08-ce42-48a8-9674-a3e09c7bea73
        "></script>
        
        
        <script type="text/javascript">
        function initTmap(){
        	var map = new Tmap.Map({div:'map_div', width:'934px', height:'452px'});
        	map.setCenter(new Tmap.LonLat( 126.979979, 37.564432).transform("EPSG:4326", "EPSG:3857"), 12);
        	
        	//¼±
        	var pointList = [];
        	pointList.push(new Tmap.Geometry.Point(126.874257, 37.582697).transform("EPSG:4326", "EPSG:3857"));
        	pointList.push(new Tmap.Geometry.Point(126.891438, 37.571954).transform("EPSG:4326", "EPSG:3857"));
        	
        	var lineString = new Tmap.Geometry.LineString(pointList);
        	var style_bold = {strokeWidth: 6,strokeColor:"#3300FF" };
        	var mLineFeature = new Tmap.Feature.Vector(lineString, null, style_bold);
        	 
        	var vectorLayer = new Tmap.Layer.Vector("vectorLayerID");
        	map.addLayer(vectorLayer);
        	 
        	vectorLayer.addFeatures([mLineFeature]);
        }

		</script>
    </head>
    <body onload="initTmap()">
        <div id="map_div">
        </div>        
    </body>
</html>	