{{-- panggil main dan semua yang berhubungan --}}
@extends($dalamLayout)


@section('button-create')
    
@endsection

@section('container')

<div class="row">
    <div class="col-sm-12">
    <div class="card">
        <div class="card-header">
            <h5>Input Master Perangkat</h5>
        </div>
        <form class="form theme-form" action="{{ url('') }}\admin\perangkat" method="post" enctype="multipart/form-data">
            @csrf
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Nama Perangkat *</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="nama" type="text" placeholder="Isi Nama Perangkat" data-bs-original-title="" title="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">Bentuk Icon Perangkat</label>
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
        </script>
    @endsection


@endsection