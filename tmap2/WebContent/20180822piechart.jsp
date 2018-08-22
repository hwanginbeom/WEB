<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}												
</style>

<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "light",
  "dataProvider": [ {
    "country": "����ڼ�",
    "value": 25
  }, {
    "country": "�߻��ڼ�",
    "value": 10
  }, {
    "country": "����ڼ�",
    "value": 15
  }, {
    "country": "�λ��ڼ�",
    "value": 25
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


  		<img class="w3-image" src="img/kiss.png" alt="The main" style="min-width:1000px" width="1500" height="600">
		<img src="img/main1.jpg">

<!-- HTML -->
<div id="chartdiv">
  		<img src="img\\main1.jpg">
</div>
</body>
</html>