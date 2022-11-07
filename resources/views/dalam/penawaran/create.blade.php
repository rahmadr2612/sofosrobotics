{{-- panggil main dan semua yang berhubungan --}}
@extends($dalamLayout)


@section('button-create')
    
@endsection

@section('container')

<div class="row">
    <div class="col-sm-12">
    <div class="card">
        <div class="card-header">
            <h5>Input Penawaran Komponen</h5>
        </div>
        <form class="form theme-form" action="{{ url('') }}\admin\penawaran" method="post" enctype="multipart/form-data">
            @csrf
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Pilihan Robot *</label>
                            <div class="col-sm-9">
                                <select class="form-control select2" name="idRMaster">
                                    <option value="">-- Pilih Robot --</option>
                                    @foreach ($robot as $r)
                                        <option value="{{ $r->id }}">{{ $r->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Pilihan Jenis Perangkat *</label>
                            <div class="col-sm-9">
                                <select class="form-control select2" name="idRPerangkat">
                                    <option value="">-- Jenis Perangkat --</option>
                                    @foreach ($perangkat as $pe)
                                        <option value="{{ $pe->id }}">{{ $pe->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Penawaran *</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="penawaran" type="text" placeholder="Isi Penawaran Komponen" data-bs-original-title="" title="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Komponen</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="komponen" type="text" placeholder="Isi Nama Komponen" data-bs-original-title="" title="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Bentuk Komponen</label>
                            <div class="col-sm-9">
                                <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
                                @error('image')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                                <div class="mt-3">
                                    <img class="img-preview img-fluid mb-3 col-sm-5">
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Harga Jasa</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="jasa" type="number" placeholder="Isi Harga Jasa" data-bs-original-title="" title="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Pilihan Pertanyaan *</label>
                            <div class="col-sm-9">
                                <select class="form-control select2" name="jenisPilihan" id="select-pilihan">
                                    <option value="">-- Jenis Pilihan --</option>
                                    @foreach ($pilihan as $p)
                                        <option value="{{ $p->id }}">{{ $p->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Apakah pertanyaan wajib ? </label>
                            <div class="col-sm-9">
                                <input type="checkbox" name="required" style="height: 25px; width: 25px;" value="required">
                            </div>
                        </div>
                        <div class="mb-3 row" id="radio">
                            <label class="col-sm-3 col-form-label">Harga Komponen</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="hargaRadio" type="number" placeholder="Isi Harga Komponen" data-bs-original-title="" title="">
                            </div>
                        </div>
                        
                        <div class="mb-3 row" id="satuan2">
                            <label class="col-sm-3 col-form-label">Satuan</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="satuan2" type="text" placeholder="Isi Nama Satuan" data-bs-original-title="" title="">
                            </div>
                        </div>
                        <div class="mb-3 row after-add-more" id="pilihan">
                            <label class="col-sm-3 col-form-label">Harga Komponen</label>
                            <div class="col-sm-3">
                                <input class="form-control" name="hargaSatuan[]" type="number" placeholder="Isi Satuan" data-bs-original-title="" title="">
                            </div>
                            <div class="col-sm-3">
                                <input class="form-control" name="hargaPilihan[]" type="number" placeholder="Isi Harga Komponen" data-bs-original-title="" title="">
                            </div>
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-primary btn-icon add-more">Tambah</button>
                            </div>
                        </div>
                        <div class="copy invisible">
                            <div class="mb-3 row control-group">
                                <label class="col-sm-3 col-form-label">Harga Komponen</label>
                                <div class="col-sm-3">
                                    <input class="form-control" name="hargaSatuan[]" type="number" placeholder="Isi Satuan" data-bs-original-title="" title="">
                                </div>
                                <div class="col-sm-3">
                                    <input class="form-control" name="hargaPilihan[]" type="number" placeholder="Isi Harga Komponen" data-bs-original-title="" title="">
                                </div>
                                <div class="col-sm-3">
                                    <button class="btn btn-danger remove" type="button"><i class="glyphicon glyphicon-remove"></i>Hapus</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer text-end">
                <div class="col-sm-9 offset-sm-3">
                    <input class="btn btn-primary" name="aksi" type="submit" data-bs-original-title="" title="" value="Simpan">
                </div>
            </div>
        </form>
    </div>
    </div>
</div>    

    @section('js-library')

        <!-- Select2 -->
        <script src="{{ url('') }}/dalam/libs/select2/js/select2.min.js"></script>
        <script src="{{ url('') }}/dalam/js/pages/form-advanced.init.js"></script>
        
        
    @endsection
    @section('js-custom')
        <script>
            function previewImage(){
                const image = document.querySelector('#image');
                const imgPreview = document.querySelector('.img-preview');
                
                imgPreview.style.display = 'block';
                
                const oFReader = new FileReader();
                oFReader.readAsDataURL(image.files[0]);
        
                oFReader.onload = function(oFREvent){
                    imgPreview.src = oFREvent.target.result;
                }
            }

            $('#radio').hide();
            $('#pilihan').hide();
            $('#satuan2').hide();
            $('#select-pilihan').change(function(){
                // alert(this.value)
                if(this.value=="1"){
                    $('#radio').show();
                    $('#pilihan').hide();
                }else if(this.value=="2"){
                    $('#pilihan').show();
                    $('#satuan2').show();
                    $('#radio').hide();
                }
                else{
                    $('#radio').hide();
                    $('#pilihan').hide();
                }
            });

            $(document).ready(function() {
                $(".add-more").click(function(){ 
                    var html = $(".copy").html();
                    $(".after-add-more").after(html);
                });

                // saat tombol remove dklik control group akan dihapus 
                $("body").on("click",".remove",function(){ 
                    $(this).parents(".control-group").remove();
                });
            });
        </script>
    @endsection


@endsection