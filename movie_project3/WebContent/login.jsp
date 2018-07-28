<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<head>
		<title>로그인하기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="${pageContext.request.contextPath}/index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Content -->
							<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #f1f1f1;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #ebe3d6;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.login_image {
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

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 200px) {
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
<body>

<h2>Login Form</h2>

	<form action="AllController" method="post">
		<input type="hidden" name="command" value="login">
  		<div class="imgcontainer">
   		 <img src="images/login_image.jpg"  alt="login_image" class="avatar">
  		</div>

  		<div align="center" class="container">
   		 <label for="uname"><b>Username</b></label>
    	<input type="text" placeholder="Enter Username" name="id" required>

    	<label for="psw"><b>Password</b></label>
   		<input type="password" placeholder="Enter Password" name="pw" required>


		
    	<button type="submit"  >Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div align="center" class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

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
									<li><a href="allmovies.html">전체영화</a></li>
									<li>
										<span class="opener">장르별</span>
										<ul>
											<li><a href="genre_documentary.html">다큐멘터리/드라마/가족</a></li>
											<li><a href="genre_animation.html">애니메이션</a></li>
											<li><a href="genre_action.html">액션/전쟁/범죄/어드벤처</a></li>
											<li><a href="genre_romance.html">멜로/로맨스</a></li>
											<li><a href="genre_horror.html">스릴러/공포/미스터리</a></li>
											<li><a href="genre_comedy.html">코미디</a></li>
											<li><a href="genre_sf.html">SF/판타지</a></li>
											<li><a href="genre_musical.html">뮤지컬/공연</a></li>
											<li><a href="genre_historic.html">사극/서부극</a></li>
											<li><a href="genre_etc.html">기타</a></li>

										</ul>
									</li>
									<li>
										<span class="opener">영화사별</span>
										<ul>
											<li><a href="moviecom.html">영화사1</a></li>
											<li><a href="#">영화사2</a></li>
											<li><a href="#">영화사3</a></li>
											<li><a href="#">영화사4</a></li>
										</ul>
									</li>
									<li>
										<span class="opener">감독 별</span>
										<ul>
											<li><a href="director.html">감독1</a></li>
											<li><a href="#">감독2</a></li>
											<li><a href="#">감독3</a></li>
											<li><a href="#">감독4</a></li>
										</ul>
									</li>
									<li>
										<span class="opener">배우 별</span>
										<ul>
											<li><a href="actor.html">배우1</a></li>
											<li><a href="#">배우2</a></li>
											<li><a href="#">배우3</a></li>
											<li><a href="#">배우4</a></li>
										</ul>
									</li>
									<li><a href="ranking.html">금주 랭킹</a></li>
									<li><a href="information.html">정보 요청하기</a></li>
									<li><a href="pick.html">내가 찜한 영화</a></li>
									<li><a href="login.html">로그인하기</a></li>
									<li><a href="signin.html">회원가입</a></li>
								</ul>
							</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>

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
