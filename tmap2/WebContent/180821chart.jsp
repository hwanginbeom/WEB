<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<script type="text/javascript">

Highcharts.chart('container', {
  title: {
    text: 'Combination chart'
  },
  xAxis: {
    categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
  },
  labels: {
    items: [{
      html: 'Total fruit consumption',
      style: {
        left: '50px',
        top: '18px',
        color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
      }
    }]
  },
  series: [{
    type: 'column',
    name: 'Jane',
    data: [3, 2, 1, 3, 4]
  }, {
    type: 'column',
    name: 'John',
    data: [2, 3, 5, 7, 6]
  }, {
    type: 'column',
    name: 'Joe',
    data: [4, 3, 3, 9, 0]
  }, {
    type: 'spline',
    name: 'Average',
    data: [3, 2.67, 3, 6.33, 3.33],
    marker: {
      lineWidth: 2,
      lineColor: Highcharts.getOptions().colors[3],
      fillColor: 'white'
    }
  }, {
    type: 'pie',
    name: 'Total consumption',
    data: [{
      name: 'Jane',
      y: 13,
      color: Highcharts.getOptions().colors[0] // Jane's color
    }, {
      name: 'John',
      y: 23,
      color: Highcharts.getOptions().colors[1] // John's color
    }, {
      name: 'Joe',
      y: 19,
      color: Highcharts.getOptions().colors[2] // Joe's color
    }],
    center: [100, 80],
    size: 100,
    showInLegend: false,
    dataLabels: {
      enabled: false
    }
  }]
});


</script>



</body>
</html>