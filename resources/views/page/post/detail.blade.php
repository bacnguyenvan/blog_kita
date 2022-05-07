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

    <link rel="stylesheet" type="text/css" href="{{asset('styles.css')}}">

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
                <a class="navbar-brand" href="{{route("home")}}" style="width:20%"><img src="{{asset('img/logo/kita.png')}}"
                    style="width:100%"></a>


                <div class="collapse navbar-collapse justify-content-end" id="navbarTogglerDemo03">
                    
                </div>
            </div>
        </nav>

        <!-- Hero Section -->
        <div class="container" id="hero">
            <div class="row justify-content-end">
                <div class="col-lg-6 hero-img-container">
                    <div class="hero-img">
                        <!-- hero img -->
                        <img src="{{asset('img/hero-img-2.jpeg')}}">
                    </div>
                </div>

                <div class="col-lg-9">
                    <div class="hero-title">
                        <h1>{{$post->title}}</h1>
                    </div>

                </div>
                <!-- hero meta -->
                <div class="col-lg-6">
                    <div class="hero-meta">
                        <div class="author">
                            <div class="author-meta">
                                <p>{{$post->content}}</p>
                            </div>
                        </div>
                        <span class="date mt-2">25th January, 2019</span>
                        <div class="tags mt-2">
                            <a href=""><span class="badge badge-pill p-2 badge-light">#Travel</span></a>
                            <a href="">
                                <span class="badge badge-pill p-2 badge-light">#Flight</span></a>
                            <a href="">
                                <span class="badge badge-pill p-2 badge-light">#Vlogger</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Content -->
    <div class="container mt-5" id="content">
        <div class="row justify-content-center">
            <!-- Share buttons -->
            <div class="col-lg-1 text-left mb-3 fixed" id="social-share">
                <a class="btn  btn-light m-2" href="#"><i class="fab fa-facebook-f"></i></a>
                <a class="btn  btn-light m-2" href="#"><i class="fab fa-google"></i></a>
                <a class="btn  btn-light m-2" href="#"><i class="fab fa-twitter"></i></a>
            </div>

            <!-- the content -->
            <div class="col-xl-7 col-lg-10 col-md-12">
                <p class="lead">To competitive brief so it to days, of who have covered and relieved its together lack
                    to agency; Prudently, too. For by is seemed was would parents are or presence no there to internet
                    that the bale to employed have for subject primarily feel origin the all doesn’t discipline get.</p>

                <p>A laminated is values, the anyone is to found was. Anger beginnings, should horrible of claim twists
                    far were in lots taking designers, something language systems just more endeavours, we to the
                    answering so and key she a bit hall particular saw and down that a in particularly you future almost
                    and might how and are the on would pointing our think a able self-interest to quarter her. </p>

                <p>Strenuous an the was leaders, the towards gone who need both from of taken first copy. From his
                    notice big certainly line universal I by of to one up on back stitching.</p>

                <h3>Our another and princesses by the text</h3>

                <p>Mouth. Our another and princesses by the text, entered commissaries. Discipline set five they
                    understand they’re once without. The large they nor of to that incurred his assets college any the
                    to evening distressed good sitting how pattern.</p>

                <p>And us, review, or that bedding a chief own, commissaries. Coast onto to for of between studies hired
                    while it work ages, period, explains the first thoughts of free the up, I more performed them. Might
                    should film text past with from should day are room. Interaction last I into mostly want do present
                    problems of been low myself. Wellfeigned part the.</p>
            </div>

            <div class="col-lg-10 mt-3">
                <hr>
            </div>
        </div>
    </div>


    <!-- Related Article Grid -->

    <div class="container mt-3 mb-5" id="article-grid">
        <div class="row">

            <div class="col-xl-6 col-lg-12 text-center">
                <a href="{{route('post-detail', $post_next->id)}}">
                    <div class="article-card">
                        <div class="article-img">
                            <img src='{{asset("$post_next->avatar")}}'>
                        </div>

                        <div class="article-meta text-left">
                            <h2>{{$post_next->title}}</h2>
                            <p>{{$post_next->content}}</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-xl-6 col-lg-12 text-center">
                <a href="{{route('post-detail', $post_previous->id)}}">
                    <div class="article-card">
                        <div class="article-img">
                            <img src='{{asset("$post_previous->avatar")}}'>
                        </div>

                        <div class="article-meta text-left">
                            <h2>{{$post_previous->title}}</h2>
                            <p>{{$post_previous->content}}</p>
                        </div>
                    </div>
                </a>
            </div>

        </div>
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