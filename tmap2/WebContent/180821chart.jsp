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

<div id="totalchart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>


<script>

Highcharts.chart('totalchart', {
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


</script>


</body>
</html>