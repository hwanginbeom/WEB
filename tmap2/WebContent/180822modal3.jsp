<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



<link href="https://www.amcharts.com/lib/3/plugins/export/export.css" media="all" rel="stylesheet" type="text/css" />
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<style>

#chartdiv {
    width: 300px;
    height: 200px;
}

/**
 * Modal related
 */
.modal, .modal .shade {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100000;
}

.modal .shade {
  background: #000;
  opacity: 0.7;
  z-index: 1;
}

.modal .chart {
  width: 90%!important;
  height: 90%!important;
  top: 5%;
  left: 5%;
  position: absolute;
  background: #fff!important;
  z-index: 2;
  border-radius: 5px;
}

.amcharts-export-menu {
  display: none;
}

.modal .amcharts-export-menu {
  display: block;
}

</style>

<script>


var chart = AmCharts.makeChart( "chartdiv", {
	  "type": "serial",
	  "rotate": true,
	  "dataProvider": [ {
	    "category": "Elapsed",
	    "value": 31,
	    "color": "#fa3a2e"
	  }, {
	    "category": "Overal",
	    "value": 18,
	    "color": "#faac2f"
	  } ],
	  "graphs": [ {
	    "fillAlphas": 1,
	    "lineAlpha": 0,
	    "fillColorsField": "color",
	    "type": "column",
	    "valueField": "value"
	  } ],
	  "categoryField": "category",
	  "categoryAxis": {
	    "axisAlpha": 0,
	    "gridAlpha": 0.2,
	    "gridPosition": "start"
	  },
	  "valueAxes": [ {
	    "axisAlpha": 0,
	    "gridAlpha": 0.2
	  } ],
	  "export": {
	    "enabled": true
	  }
	} );

	function showPopup( id ) {
	  var chart = $( "#" + id );
	  var modal = $( "<div>" ).addClass( "modal" );
	  var shade = $( "<div>" ).addClass( "shade" ).appendTo( modal ).on( "click", close );
	  var placeholder = $( "<div>" ).prop( "id", id + "_placeholder" ).hide().insertBefore( chart );
	  $( document.body ).append( modal );
	  chart.appendTo( modal ).addClass( "chart" );

	  function close() {
	    chart.insertAfter( placeholder ).removeClass( "chart" );
	    placeholder.remove();
	    modal.remove();
	  }
	}

</script>


<input type="button" value="click to enlarge" onclick="showPopup('chartdiv');" />
<div id="chartdiv"></div>



</body>
</html>