
<!doctype html>
<html lang="en">

<head>

    
    <meta charset="utf-8" />
    <title>Register | Sofosrobotics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="/dalam/images/favicon.ico">

    <!-- Bootstrap Css -->
    <link href="{{ url('') }}/assets/admin/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ url('') }}/assets/admin/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ url('') }}/assets/admin/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>


<body class="authentication-bg bg-primary">
    <div class="home-center">
        <div class="home-desc-center">

            <div class="container">

                <div class="home-btn"><a href="/" class="text-white router-link-active"><i
                            class="fas fa-home h2"></i></a></div>


                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card">
                            <div class="card-body">
                                <div class="px-2 py-3">
                                    <div class="text-center">
                                        <a href="index.html">
                                        <img src="{{ asset('assets/image/logo-udinus.jpg')}}" height="110" alt="logo">
                                        </a>
                                        <h5 class="text-primary mb-2 mt-4">SOFOSROBOTICS</h5>
                                        <p class="text-muted">Sign Up to continue to access</p>
                                    </div>

                                    @if (session()->has('sukses')) 
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">

                                        {{-- pesan --}}
                                        {{-- <strong>Holy guacamole!</strong> You should check in on some of those fields below. --}}

                                        {{ session('sukses') }}

                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                    @endif

                                    @if (session()->has('gagal')) 
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">

                                        {{-- pesan --}}
                                        {{-- <strong>Holy guacamole!</strong> You should check in on some of those fields below. --}}

                                        {{ session('gagal') }}

                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                    @endif

                                    <form class="form-horizontal mt-4 pt-2" action="{{ url('') }}/register/registerProses" method="post">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="username">Email</label>
                                            <input name="email" type="text" class="form-control @error('email') is-invalid @enderror" id="username" placeholder="Enter email" autofocus value="{{ old('email') }}">
                                            @error('email')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="mb-3">
                                            <label for="username">Username</label>
                                            <input name="username" type="text" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="Enter Username" autofocus value="{{ old('username') }}">
                                            @error('username')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="userpassword">Password</label>
                                            <input name="password" type="password" class="form-control @error('password') is-invalid @enderror" id="userpassword" placeholder="Enter password" autofocus value="{{ old('password') }}">
                                            @error('password')
                                                <div class="invalid-feedback">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="customControlInline">
                                                <label class="form-label" for="customControlInline">Remember me</label>
                                            </div>
                                        </div>

                                        <div>
                                            <button class="btn btn-primary w-100 waves-effect waves-light" type="submit">Sign Up</button>
                                        </div>
                                  
                                </div>
                            </div>
                        </div>

                        <div class="mt-5 text-center text-white">
                            <p>Already registered ?<a href="/login" class="fw-bold text-white"> Login</a> </p>
                            <p>© <script>document.write(new Date().getFullYear())</script> Fakultas Teknik UDINUS</p>
                        </div>
                    </div>
                </div>

            </div>


        </div>
        <!-- End Log In page -->
    </div>

    <!-- JAVASCRIPT -->
    <script src="{{ url('') }}/dalam/libs/jquery/jquery.min.js"></script>
    <script src="{{ url('') }}/dalam/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{ url('') }}/dalam/libs/metismenu/metisMenu.min.js"></script>
    <script src="{{ url('') }}/dalam/libs/simplebar/simplebar.min.js"></script>
    <script src="{{ url('') }}/dalam/libs/node-waves/waves.min.js"></script>

    <script src="{{ url('') }}/dalam/js/app.js"></script>

</body>

</html>