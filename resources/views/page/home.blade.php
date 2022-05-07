<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<!-- Fontawesome -->

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
		integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

	<link rel="icon" href="/img/logo/bac_logo.png">

	<link rel="stylesheet" type="text/css" href="./styles.css">

	<title>Kita Kmt - Exploring Blogger</title>
</head>

<body>
	<div class="container-fluid" id="header">

		<nav class="navbar navbar-expand-md navbar-light">
			<div class="container">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
					aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="#" style="width:20%"><img src="./img/logo/kita.png"
						style="width:100%"></a>


				<div class="collapse navbar-collapse justify-content-end" id="navbarTogglerDemo03">

				</div>
			</div>
		</nav>

		<!-- hero section -->
		<div class="container" id="hero">
			<div class="row justify-content-end">
				<div class="col-lg-6 hero-img-container">
					<a href="">
						<div class="hero-img">
							<img src="./img/lycafe.jpg">
						</div>
					</a>
				</div>

				<div class="col-lg-9">
					<div class="hero-title">
						<a href="">
							<h1>Adventure is the best way to learn.</h1>
						</a>
					</div>

				</div>

				<div class="col-lg-6">
					<div class="hero-meta">
						<p>Bạn chỉ được sống một lần duy nhất, nhưng nếu bạn sống đúng thì một lần là đủ rồi.</p>
						<div class="author">
							<div class="author-img"><img src="./img/avatar.jpg"></div>
							<div class="author-meta">
								<span class="author-name">Kita Kmt</span>
								<span class="author-tag">Exploring Blogger</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- hero ends -->

	<!-- Article Grid -->

	<div class="container mt-2 mb-2 pt-5 pb-5" id="article-grid">
		<div class="row justify-content-center">
			<div class="col-xl-6 col-lg-12 text-center">
				<a href="./single.html">
					<div class="article-card">
						<div class="article-img">
							<img src="./img/place/namdu.jpg">
						</div>

						<div class="article-meta text-left">
							<h2>Nam Du - Hòn Sơn Islands, thả hồn với thiên nhiên.</h2>
							<p>Ngày anh về với Nam Du. Hòn Dầu xanh mát vi vu bóng dừa.</p>
							<p><i>Kiên Giang, ngày 30/04/2022</i></p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-xl-6 col-lg-12  text-center">
				<a href="./single.html">
					<div class="article-card">
						<div class="article-img">
							<img src="./img/place/binhthuan.jpg">
						</div>

						<div class="article-meta  text-left">
							<h2>Bình Thuận - vùng đất đầy nắng gió.</h2>
							<p>Bình Thuận ơi, Bình Thuận hỡi! Anh về viết vội trăm lời ý thơ.</p>
							<p><i>Bình Thuận, ngày 30/04/2021</i></p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-xl-6 col-lg-12 text-center">
				<a href="./single.html">
					<div class="article-card">
						<div class="article-img">
							<img src="./img/place/angiang.jpg">
						</div>

						<div class="article-meta  text-left">
							<h2>An Giang - man mác hữu tình, thật thà chất phác.</h2>
							<p>Đất An Giang phù sa màu mỡ. Người An Giang muôn thuở hiền lành.</p>
							<p><i>An Giang, ngày 29/04/2020</i></p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-xl-6 col-lg-12 text-center">
				<a href="./single.html">
					<div class="article-card">
						<div class="article-img">
							<img src="./img/place/vungtau.jpg">
						</div>

						<div class="article-meta  text-left">
							<h2>Vũng Tàu - say đắm một tình yêu.</h2>
							<p>Biển xanh cát trắng Vũng Tàu. Dập dềnh bãi Trước, bãi Sau sóng đùa.</p>
							<p><i>Vũng Tàu, ngày 14/04/2018</i></p>
						</div>
					</div>
				</a>
			</div>
		</div> <!-- Article Grid Row Ends -->
	</div> <!-- Article Grid Container Ends -->

	<!-- More articles button -->

	<div class="container text-center pb-3 mb-5">
		<a href="#" class="btn btn-lg btn-light">More Articles</a>
	</div>


	<!-- Footer section  -->

	<footer class="container-fluid mt-1 p-4">
		<div class="container ">
			<div class="row pb-1">
				<!-- Footer logo -->

				<hr>
			</div>
			<hr>

			<!-- copyright text -->
			<div class="row pt-2">
				<div class="col-lg-12 text-center">
					<span>&copy {{date('d-m-Y')}} <a href=""></a> All Rights Received.</span>
				</div>
			</div>
		</div>
	</footer>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>

</html>