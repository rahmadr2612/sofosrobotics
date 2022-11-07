<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Sofosrobotics</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="{{ asset('assets/landing/vendor/aos/aos.css')}}" rel="stylesheet">
        <link href="{{ asset('assets/landing/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
        <link href="{{ asset('assets/landing/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
        <link href="{{ asset('assets/landing/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
        <link href="{{ asset('assets/landing/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
        <link href="{{ asset('assets/landing/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js">
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js">
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css">

        <!-- Template Main CSS File -->
        <link href="{{ asset('assets/landing/css/style.css')}}" rel="stylesheet">

        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ url('') }}/assets/landing/img/favicon.png">
        
        <link rel="apple-touch-icon" sizes="57x57" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="{{ url('') }}/assets/landing/img/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="{{ url('') }}/assets/landing/img/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="{{ url('') }}/assets/landing/img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="{{ url('') }}/assets/landing/img/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="{{ url('') }}/assets/landing/img/favicon/favicon-16x16.png">
        <link rel="manifest" href="{{ url('') }}/assets/landing/img/favicon/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="{{ url('') }}/assets/landing/img/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">

    </head>

    <body>

        <!-- ======= Header ======= -->
        @include('layout.landing.header')
        <!-- End Header -->

        
        @yield('content')
    

        <!-- ======= Footer ======= -->
        @include('layout.landing.footer')
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="{{ asset('assets/landing/vendor/purecounter/purecounter.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/aos/aos.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/glightbox/js/glightbox.min.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/swiper/swiper-bundle.min.js')}}"></script>
        <script src="{{ asset('assets/landing/vendor/php-email-form/validate.js')}}"></script>

        <!-- Template Main JS File -->
        <script src="{{ asset('assets/landing/js/main.js')}}"></script>

    </body>

</html>