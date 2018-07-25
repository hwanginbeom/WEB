<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
   <title>actor</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Content -->
							<style>
	body {font-family: Arial, Helvetica, sans-serif;}
	* {box-sizing: border-box}

	/* Full-width input fields */
	input[type=text], input[type=password] {
	    width: 100%;
	    padding: 15px;
	    margin: 5px 0 22px 0;
	    display: inline-block;
	    border: none;
	    background: #f1f1f1;
	}

	input[type=text]:focus, input[type=password]:focus {
	    background-color: #ddd;
	    outline: none;
	}

	hr {
	    border: 1px solid #f1f1f1;
	    margin-bottom: 25px;
	}

	/* Set a style for all buttons */
	button {
	    background-color: #f1f1f1;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    cursor: pointer;
	    width: 100%;
	    opacity: 0.9;
	}

	button:hover {
	    opacity:1;
	}

	/* Extra styles for the cancel button */
	.cancelbtn {
	    padding: 14px 20px;
	    background-color: #f44336;
	}

	/* Float cancel and signup buttons and add an equal width */
	.cancelbtn, .signupbtn {
	  float: left;
	  width: 50%;
	}

	/* Add padding to container elements */
	.container {
	    padding: 16px;
	}

	/* Clear floats */
	.clearfix::after {
	    content: "";
	    clear: both;
	    display: table;
	}

	/* Change styles for cancel button and signup button on extra small screens */
	@media screen and (max-width: 300px) {
	    .cancelbtn, .signupbtn {
	       width: 100%;
	    }
	}
	</style>
	<body>

   <form action="/action_page.php" style="border:1px solid #ccc">
     <div class="container">
       <h1>회원가입</h1>
       <p>Please fill in this form to create an account.</p>
       <hr>

       <label for="id"><b>Id</b></label>
       <input type="text" placeholder="Enter Id" name="Id" required>

       <label for="psw"><b>Password</b></label>
       <input type="password" placeholder="Enter Password" name="psw" required>

       <label for="e-mail"><b>E-mail</b></label>
       <input type="text" placeholder="Enter e-mail" name="e-mail" required>

       <label>
         <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
       </label>


	    <div class="clearfix">
	      <button type="button" class="cancelbtn">Cancel</button>
	      <button type="submit" class="signupbtn">Sign Up</button>
	    </div>
	  </div>
	</form>

	</body>
	</html>

</body>


	</body>
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
									<li><a href="allmovies.jsp">전체영화</a></li>
									<li>
										<span class="opener">장르별</span>
										<ul>
											<li><a href="genre_documentary.jsp">다큐멘터리/드라마/가족</a></li>
											<li><a href="genre_animation.jsp">애니메이션</a></li>
											<li><a href="genre_action.jsp">액션/전쟁/범죄/어드벤처</a></li>
											<li><a href="genre_romance.jsp">멜로/로맨스</a></li>
											<li><a href="genre_horror.jsp">스릴러/공포/미스터리</a></li>
											<li><a href="genre_comedy.jsp">코미디</a></li>
											<li><a href="genre_sf.jsp">SF/판타지</a></li>
											<li><a href="genre_musical.jsp">뮤지컬/공연</a></li>
											<li><a href="genre_historic.jsp">사극/서부극</a></li>
											<li><a href="genre_etc.jsp">기타</a></li>

										</ul>
									</li>

										<li><a href="moviecom.jsp">영화사</a></li>
										<li><a href="director.jsp">감독</a></li>
										<li><a href="actor.jsp">배우</a></li>
										<li><a href="ranking.jsp">금주 랭킹</a></li>
										<li><a href="login.jsp">로그인하기</a></li>
										<li><a href="signin.jsp">회원가입</a></li>
								</ul>
							</nav>



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
