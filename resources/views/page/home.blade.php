<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

	<!-- Fontawesome -->

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

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
            @foreach($posts as $post)
                <div class="col-xl-6 col-lg-12 text-center">
                    <a href="{{route('post-detail', $post->id)}}">
                        <div class="article-card">
                            <div class="article-img">
                                <img src="{{$post->avatar}}">
                            </div>

                            <div class="article-meta text-left">
                                <h2>{{$post->title}}</h2>
                                <p>{{$post->content}}</p>
                                <p><i>{{$post->place}}, ngày {{Date('d/m/Y', strtotime($post->start_trip))}}</i></p>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>

</html>