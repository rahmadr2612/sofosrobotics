
@extends('layout.landing.main')
    
@section('content')

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

        <div class="d-flex justify-content-between align-items-center">
            <h2>Detail Robot {{ $robot->nama }}</h2>
            <ol>
            <li><a href="{{ url('home')}}">Home</a></li>
            <li>Robot {{ $robot->nama }} Details</li>
            </ol>
        </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">
            
        {{-- Kepala --}}
        <div class="row gy-4">

            <div class="col-lg-8 col-md-10">
            {{-- <div class="portfolio-details-slider swiper" data-aos="fade-up" data-aos-delay="100"> --}}
                <div class="portfolio-details-slider swiper">
                <div class="swiper-wrapper align-items-center">

                    <div class="swiper-slide">
                    <div class="col-lg-8 col-md-12 offset-2">
                        <img src="{{ asset('assets/landing/img/robot/robot1.png')}}" width="100%" alt="">
                    </div>
                    </div>

                    <div class="swiper-slide">
                    <div class="col-lg-6 col-md-12 offset-3">
                        <img src="{{ asset('assets/landing/img/robot/robot2.png')}}" width="100%" alt="">
                    </div>
                    </div>

                    <div class="swiper-slide">
                    <div class="col-lg-6 col-md-12 offset-3">
                        <img src="{{ asset('assets/landing/img/robot/robot3.png')}}" width="100%" alt="">
                    </div>
                    </div>

                    <div class="swiper-slide">
                    <div class="col-lg-6 col-md-12 offset-3">
                        <img src="{{ asset('assets/landing/img/robot/robot4.png')}}" width="100%" alt="">
                    </div>
                    </div>

                    <div class="swiper-slide">
                    <div class="col-lg-6 col-md-12 offset-3">
                        <img src="{{ asset('assets/landing/img/robot/robot5.png')}}" width="100%" alt="">
                    </div>
                    </div>

                </div>
                <div class="swiper-pagination"></div>
                </div>
            </div>

            <div class="col-lg-4">
            <div class="portfolio-info">
                <h3>Robot Details</h3>
                <ul>
                    <li><strong>Category</strong>:  {{ $robot->nama }}</li>
                    <li><strong>Product</strong>: Dian Nuswantoro University</li>
                    <li><strong>Duration Project</strong>: 1 Month</li>
                </ul>
            </div><br>
            <div class="portfolio-description">
                <ul>
                    <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#portfolio-description-1">Non consectetur a erat nam at lectus urna duis? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="portfolio-description-1" class="collapse show" data-bs-parent=".portfolio-description">
                        <p>
                            Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                        </p>
                        </div>
                    </li>
            
                    <li data-aos="fade-up" data-aos-delay="200">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#portfolio-description-2" class="collapsed">Feugiat scelerisque varius morbi enim nunc? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="portfolio-description-2" class="collapse" data-bs-parent=".portfolio-description">
                        <p>
                            Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                        </p>
                        </div>
                    </li>
            
                    <li data-aos="fade-up" data-aos-delay="300">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#portfolio-description-3" class="collapsed">Dolor sit amet consectetur adipiscing elit? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="portfolio-description-3" class="collapse" data-bs-parent=".portfolio-description">
                        <p>
                            Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                        </p>
                        </div>
                    </li>
            
                    <li data-aos="fade-up" data-aos-delay="400">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#portfolio-description-4" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="portfolio-description-4" class="collapse" data-bs-parent=".portfolio-description">
                        <p>
                            Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in.
                        </p>
                        </div>
                    </li>
            
                    <li data-aos="fade-up" data-aos-delay="500">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#portfolio-description-5" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="portfolio-description-5" class="collapse" data-bs-parent=".portfolio-description">
                        <p>
                            Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque.
                        </p>
                        </div>
                    </li>
            
                </ul>
            </div>
            <form action="{{ url('') }}\robot" method="post">
                @csrf
            <div class="btn-wrap">
                {{-- <a href="#" class="btn-buy">Download RAB</a> --}}
                <input type="submit" class="btn-buy" value="Download RAB">
            </div>
            </div>
            
        </div>

        <h3 style="text-align: center">Fitur</h3>
        <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">All</li>
                @foreach ($perangkat as $p)
                    <li data-filter=".filter-{{ $p->nama }}">{{ $p->nama }}</li>
                @endforeach
            </ul>
        </div>
        </div>
        <div class="row portfolio-container pr-4 pl-4 justify-content-center">
                <input type="hidden" name="idRobot" value="{{ $robot->id }}">
                @foreach ($penawaran as $row)
                    <div class="col-lg-3 col-md-6 portfolio-item filter-{{ $row->perangkat->nama }}">
                        <div class="card">
                            <h3 class="text-center">{{ $row->penawaran }}</h3>
                            <div class="text-center">
                                {{-- <img src="{{ asset('assets/landing/img/robot/linetracking.png')}}" class="img-fluid text-center" alt=""> --}}
                                <img src="{{ url('') }}//assets/image/robot-master/{{ $row->image }}" alt="" class="img-fluid text-center">
                            </div>
                            <div class="text-center"><b> {{ $row->komponen }} </b></div><br>
                            <div class="justify-content-center">
                                <table>
                                    <tr>
                                        <td>Harga Jasa</td>
                                        <td> : </td>
                                        <td>Rp. {{ $row->jasa }}</td>
                                    </tr>
                                    @if ($row->jenisPilihan == 1)
                                        <tr>
                                            <td>Harga</td>
                                            <td> : </td>
                                            <td>Rp. {{ $row->jawaban->harga }}</td>
                                        </tr>
                                    @else
                                        <tr>
                                            <td>Harga</td>
                                            <td> : </td>
                                            <td>
                                                {{-- {{ $row->jawabanBanyak->harga }} --}}
                                                {{-- <input type="hidden" name="pesanan[]" value="{{ $row->id }}"> --}}
                                                <select name="pesanan[]" id="" {{ $row->required ?? "" }}>
                                                    <option value="">Pilihan</option>
                                                    <!-- <option disabled selected value>Pilih Jenis Robot {{ $robot->nama }}</option> -->
                                                    @foreach ($row->jawabanBanyak as $jb)
                                                        <option value="{{ $jb->id }}">Rp. {{ $jb->harga }} / {{ $jb->satuan }} {{ $row->satuan2 }}</option>
                                                    @endforeach
                                                </select>
                                            </td>
                                        </tr>
                                    @endif
                                </table>
                            </div>
                            {{-- <ul>
                                <li>Harga : Rp. 500.000</li>
                                <li>Harga Jasa : Rp. 5.000.000</li>
                            </ul> --}}
                            @if ($row->jenisPilihan == 1)
                                <div class="btn-wrap">
                                    <input type="checkbox" name="pesanan[]" style="height: 25px; width: 25px;" value="{{ $row->jawaban->id }}" {{ $row->required ?? "" }}>
                                    {{-- <label class="container">Gunakan {{ $row->jawaban->id }}</label>  --}}
                                    {{-- <a href="#" class="btn-buy">Tambahkan Fitur</a> --}}
                                </div><br>
                            @endif
                        </div><br><br><br>
                    </div>
                @endforeach
            </form>
        </div>
    </section><!-- End Portfolio Details Section -->

    </main><!-- End #main -->
    
@endsection