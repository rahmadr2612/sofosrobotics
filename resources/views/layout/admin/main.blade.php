
<!doctype html>
<html lang="en">

<head>

    
    <meta charset="utf-8" />
    <title>Sofosrobotics | {{ $title }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
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

    <!-- plugin css -->
    <link href="{{ url('') }}/assets/admin/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="{{ url('') }}/assets/admin/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ url('') }}/assets/admin/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ url('') }}/assets/admin/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        
    <!-- DataTables -->
    <link href="{{ url('') }}/assets/admin/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ url('') }}/assets/admin/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    <!-- Responsive datatable examples -->
    <link href="{{ url('') }}/assets/admin/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    
    <!-- Select2 -->
    <link href="{{ url('') }}/assets/admin/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

</head>


<body>

    <!-- Begin page -->
    <div id="layout-wrapper">

        @include('layout.admin.header')

        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <div data-simplebar class="h-100">


                <div class="user-sidebar text-center">
                    <div class="dropdown">
                        <div class="user-img">
                            <img src="{{ url('') }}/assets/admin/images/users/avatar-7.jpg" alt="" class="rounded-circle">
                            <span class="avatar-online bg-success"></span>
                        </div>
                        <div class="user-info">
                            <h5 class="mt-3 font-size-16 text-white">{{ session('nama') }}</h5>
                            <span class="font-size-13 text-white-50">{{ session('bagian') }}</span>
                        </div>
                    </div>
                </div>



                <!--- Sidemenu -->
                @include('layout.admin.sidebar')
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">

                <!-- start page title -->
                <div class="page-title-box">
                    <div class="container-fluid">
                     <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="page-title">
                                <h4>Dashboard</h4>
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Menu</a></li>
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">{{ $title }}</a></li>
                                        {{-- <li class="breadcrumb-item active">{{ $sub }}</li> --}}
                                    </ol>
                            </div>
                        </div>

                        @yield('button-create')

                     </div>
                    </div>
                 </div>
                 <!-- end page title -->    


                <div class="container-fluid">

                    <div class="page-content-wrapper">
                    
                        @yield('container')

                    </div>


                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            @include('layout.admin.footer')
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->


    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    <script src="{{ url('') }}/assets/admin/libs/jquery/jquery.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/metismenu/metisMenu.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/simplebar/simplebar.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/node-waves/waves.min.js"></script>

    <!-- apexcharts -->
    {{-- <script src="/assets/admin/libs/apexcharts/apexcharts.min.js"></script> --}}

    <!-- Plugins js-->
    <script src="{{ url('') }}/assets/admin/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="{{ url('') }}/assets/admin/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>

    <script src="{{ url('') }}/assets/admin/js/pages/dashboard.init.js"></script>


    <script src="{{ url('') }}/assets/admin/js/app.js"></script>


    @yield('js-library')
    @yield('js-custom')
</body>

</html>