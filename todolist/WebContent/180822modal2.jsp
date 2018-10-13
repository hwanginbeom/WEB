<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>

<script>

window.onload = function () {

var options = {


		Highcharts.chart('container', {
		  title: {
		    text: '경로 별 사고 평균 '
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
		    data: [3, 2, 1, 3, 4,5,3]
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


$("#showChart").click(function() {
	
	$("#dialogBox").dialog({
		open: function(event,ui) {
			$(".ui-widget-overlay").bind("click", function(event,ui) {         
				$("#dialogBox").dialog("close");
			});
		},
		closeOnEscape: true,
		draggable: false,
		resizable: false,
		title: "GDP Growth Rate",
		width: 700,
		modal: true,
		show: 500
	});
	$(".ui-widget-overlay").css({"background-color": "#111111"});
	$("#chartContainer").CanvasJSChart(options);
});

}
</script>
</head>
<body>
<div id="container">
	<button id="showChart">Click to Show Chart in a Pop-up</button>
</div>
<div id="dialogBox" style="display: none;">
	<div id="chartContainer" class="dialog" style="height: 250px; width: 100%;"></div>
</div>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>



</body>
</html>