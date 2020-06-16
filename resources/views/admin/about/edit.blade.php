@extends('layouts.admin')

@section('styles')
<style>
   .picture-container {
  position: relative;
  cursor: pointer;
  text-align: center;
}
 .picture {
  width: 800px;
  height: 400px;
  background-color: #999999;
  border: 4px solid #CCCCCC;
  color: #FFFFFF;
  /* border-radius: 50%; */
  margin: 5px auto;
  overflow: hidden;
  transition: all 0.2s;
  -webkit-transition: all 0.2s;
}
.picture:hover {
  border-color: #2ca8ff;
}
.picture input[type="file"] {
  cursor: pointer;
  display: block;
  height: 100%;
  left: 0;
  opacity: 0 !important;
  position: absolute;
  top: 0;
  width: 100%;
}
.picture-src {
  width: 100%;
  height: 100%;
}

</style>

@endsection

@section('content')

@if (session('success'))
<div class="alert alert-success">
    {{ session('success') }}
</div>
@endif

@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

<form action="{{ route('admin.about.update') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="container">

        <div class="form-group">

            <div class="picture-container">
    
                <div class="picture">
    
                    <img src="{{asset('storage/' . $about->logo)}}" class="picture-src" id="wizardPicturePreview" height="200px" width="400px" title=""/>
    
                    <input type="file" id="wizard-picture" name="logo" class="form-control {{$errors->first('logo') ? "is-invalid" : "" }} ">
    
                    <div class="invalid-feedback">
                        {{ $errors->first('logo') }}    
                    </div>  
    
                </div>
    
                <h6>Pilih Logo</h6>
    
            </div>
    
        </div>

        <div class="form-group ml-5">

            <label for="title" class="col-sm-2 col-form-label">Title</label>

            <div class="col-sm-7">

                <input type="text" name='title' class="form-control {{$errors->first('title') ? "is-invalid" : "" }} " value="{{old('title') ? old('title') : $about->title}}" id="title" placeholder="Title">

                <div class="invalid-feedback">
                    {{ $errors->first('title') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="subject" class="col-sm-2 col-form-label">Subject</label>

            <div class="col-sm-7">

                <input type="text" name='subject' class="form-control {{$errors->first('subject') ? "is-invalid" : "" }} " value="{{old('subject') ? old('subject') : $about->subject}}" id="subject" placeholder="Subject">

                <div class="invalid-feedback">
                    {{ $errors->first('subject') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="desc" class="col-sm-2 col-form-label">Desc</label>

            <div class="col-sm-8">

                <textarea name="desc" class="form-control {{$errors->first('desc') ? "is-invalid" : "" }} "  id="summernote" cols="30" rows="10">{{old('desc') ? old('desc') : $about->desc}}</textarea>
                <div class="invalid-feedback">
                    {{ $errors->first('desc') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="quote" class="col-sm-2 col-form-label">Quote</label>

            <div class="col-sm-7">

                <input type="text" name='quote' class="form-control {{$errors->first('quote') ? "is-invalid" : "" }} " value="{{old('quote') ? old('quote') : $about->quote}}" id="quote" placeholder="Quote">

                <div class="invalid-feedback">
                    {{ $errors->first('quote') }}    
                </div>   

            </div>

        </div>
   
        <div class="form-group ml-5">
   
            <div class="col-sm-3">
   
                <button type="submit" class="btn btn-primary">Update</button>
   
            </div>
   
        </div>

    </div>      

  </form>
@endsection

@push('scripts')
<script>
    // Prepare the preview for profile picture
    $("#wizard-picture").change(function(){
      readURL(this);
  });
  //Function to show image before upload

function readURL(input) {
  if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
          $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
      }
      reader.readAsDataURL(input.files[0]);
  }
}
</script>
  
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>
@endpush