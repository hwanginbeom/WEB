<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

</head>
<body>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	<div class="container">
		<h2>Activate Modal with JavaScript</h2>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" id="myBtn">Search</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">


				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">경로에 따른 위험도 분석</h4>
					</div>
					<div class="modal-body">
						<p>그래프는 안됩니까? </p>
						




					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
					
				</div>

				

			</div>
		</div>

	</div>

	<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});





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




</script>


</body>
</html>