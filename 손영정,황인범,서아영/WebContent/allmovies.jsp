<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
   <title>actor</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      
      <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
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

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
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
    width: 80%; /* Could be more or less, depending on screen size */
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
</style>
</head>
<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>MEDIUM</strong> by multicampus</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>




							<!-- Section -->
								<section>
									<header class="major">
										<h2>��ü��ȭ</h2>
									</header>
									<div class="posts">
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180711_9/1531285562987n5VUG_JPEG/movie_image.jpg" alt="" /></a>
											<h3>��ũ������ 2</h3>
											<p>�ִϸ��̼�, �׼�, ����  �̱�  125��  2018 .07.18 ���� �귡�� ����ũ���̱� T. �ڽ�(�� �� / Mr. ��ũ������ ��Ҹ�), �繫�� L. �轼(���̽� ����Ʈ / ������ ��Ҹ�), Ȧ�� ����(�ﷻ �� / �϶�Ƽ�� ��Ҹ�)������ [����] ��ü ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180530_170/1527645793223uhWgz_JPEG/movie_image.jpg" alt="" /></a>
											<h3>��Ʈ�ǰ� �ͽ���</h3>
											<p>�׼�, ����, SF  �̱�  118��  2018 .07.04 ���� ����ư ������ ����(��ı �� / ��Ʈ��), �������� ����(ȣ�� �� ���� / �ͽ���), ����Ŭ ���۶�(��ũ �� �ڻ�)������ [����] 12�� ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180710_211/1531198746645nsdKN_JPEG/movie_image.jpg" alt="" /></a>
											<h3>�� ��</h3>
											<p>�̽��͸�, �׼�  �ѱ�  125��  2018 .06.27 ���� ��������ٹ�(����), ���μ�(���� ��), �����(�̽��� ��)������ [����] 15�� ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180626_178/1530002275230doFpi_JPEG/movie_image.jpg" alt="" /></a>
											<h3>��ī�� ��ũ����</h3>
											<p>�׼�, ����, ���  �̱�  102��  2018 .07.11 ���� �ν� ���� �͹������ ����(�� �ҿ�), �Ϻ� ķ��(��� �ҿ�)������ [����] 12�� ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180716_246/1531720328953yeuAD_JPEG/movie_image.jpg" alt="" /></a>
											<h3>�� ��</h3>
											<p>����, �׼�  �ѱ�  123�� 2018 .07.18 �簳��, 2018 .05.22 ���� ���ؿ�������(��ȣ), ���ؿ�(��), ������(���ϸ�)������ [����] 15�� ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											</ul>
										</article>
										<article>
											<a href="#" class="image"><img src="https://movie-phinf.pstatic.net/20180719_126/1531964488288QP3K8_JPEG/movie_image.jpg" alt="" /></a>
											<h3>ȣ�� �Ƹ��׹̽�</h3>
											<p>�׼�, ����, ������  �̱�  94��  2018 .07.18 ���� ��� �Ǿ���� ������(�� �丶��), ���̺� ��Ƽ��Ÿ(��������Ʈ), ���Ǿ� ���ڶ�(�Ͻ�)������ [����] 15�� ������</p>
											<ul class="actions">
												<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">more</button></li>
											</ul>
										</article>
									</div>
									<ul class="actions">
										<li><a href="allmovies_next" class="button">Next</a></li>
								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
							<nav id="menu">
								<header class="major">
									<h2>Menu</h2>
								</header>
								<ul>
									<li><a href="allmovies.jsp">��ü��ȭ</a></li>
									<li>
										<span class="opener">�帣��</span>
										<ul>
											<li><a href="genre_documentary.jsp">��ť���͸�/���/����</a></li>
											<li><a href="genre_animation.jsp">�ִϸ��̼�</a></li>
											<li><a href="genre_action.jsp">�׼�/����/����/��庥ó</a></li>
											<li><a href="genre_romance.jsp">���/�θǽ�</a></li>
											<li><a href="genre_horror.jsp">������/����/�̽��͸�</a></li>
											<li><a href="genre_comedy.jsp">�ڹ̵�</a></li>
											<li><a href="genre_sf.jsp">SF/��Ÿ��</a></li>
											<li><a href="genre_musical.jsp">������/����</a></li>
											<li><a href="genre_historic.jsp">���/���α�</a></li>
											<li><a href="genre_etc.jsp">��Ÿ</a></li>

										</ul>
									</li>

										<li><a href="moviecom.jsp">��ȭ��</a></li>
										<li><a href="director.jsp">����</a></li>
										<li><a href="actor.jsp">���</a></li>
										<li><a href="ranking.jsp">���� ��ŷ</a></li>
										<li><a href="login.jsp">�α����ϱ�</a></li>
										<li><a href="signin.jsp">ȸ������</a></li>
								</ul>
							</nav>



<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="" alt="" class="avatar">
    </div>

    <div class="container">
<div id="curve_chart"></div>
    
    </div>

    <div class="container" style="background-color:#f1f1f1">
    
    </div>
  </form>
</div>

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

 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart2);

      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
      <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart2);

  
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
          google.charts.load('current', {'packages':['corechart']});
          google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['DATE',    'PROFIT',          ' AUD'],
              ['02',  1577432900,     2242430000],
              ['03',  2803732821,     3603560000],
              ['04',  5547512752,     6619680000],
              ['05',  6585245521,     8784340000],
              ['06',  8250755852,     9587950000],
              ['07',  9269725052,     10832650000],
              ['08',  10213201652,     11989580000],
              ['09',  10811287452,     12722720000],
              ['10',  11408674652,     13456140000],
              ['11',  12281116355,     14444580000],
              ['12',  13899073271,     16259400000],
              ['13',  15429444771,     17967320000],
              ['14',  16067447571,     18746220000],
              ['15',  16744314271,     19585380000],
              ['16',  17311207971,     20286000000],
              ['17',  17808492671,     20896100000],
              ['18',  18509366310,     21690190000],
              ['19',  19934101945,     23296260000],
              ['20',  21248548945,     24769250000],
              ['21',  21690599145,     25315040000],
              ['22',  22103426845,     25827070000],
                                ]);

            var options = {
              title: 'Company Performance',
              curveType: 'function',
              legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
          }
        </script>









							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
										<li class="fa-phone">(000) 000-0000</li>
										<li class="fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>
			
			

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
