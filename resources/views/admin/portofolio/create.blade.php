@extends('layouts.admin')

@section('styles')
@section('styles')
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .main-section{
            margin:0 auto;
            padding: 20px;
            margin-top: 100px;
            background-color: #fff;
            box-shadow: 0px 0px 20px #c1c1c1;
        }
        .fileinput-remove,
        .fileinput-upload{
            display: none;
        }
    </style>

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

@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

<form action="{{ route('admin.portofolio.store') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="container">

        <div class="form-group">

            <div class="picture-container">
    
                <div class="picture">
    
                    <img src="" class="picture-src" id="wizardPicturePreview" height="200px" width="400px" title=""/>
    
                    <input type="file" id="wizard-picture" name="cover" class="form-control {{$errors->first('cover') ? "is-invalid" : "" }} ">
    
                    <div class="invalid-feedback">
                        {{ $errors->first('logo') }}    
                    </div>  
    
                </div>
    
                <h6>Pilih Cover</h6>
    
            </div>
    
        </div>

        <div class="form-group ml-5">
            <label>Gallery</label>
            <div class="files col-md-3">
                <input type="file" name="photo[]">
            </div>
        </div>

        <div class="form-group ml-5 form-actions">
            <button type="button" class="add-file btn btn-success">Add New File</button>
        </div>


        <div class="form-group ml-5">

            <label for="name" class="col-sm-2 col-form-label">Name</label>

            <div class="col-sm-7">

                <input type="text" name='name' class="form-control {{$errors->first('name') ? "is-invalid" : "" }} " value="{{old('name')}}" id="name" placeholder="Project Name">

                <div class="invalid-feedback">
                    {{ $errors->first('name') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="category" class="col-sm-2 col-form-label">Category</label>

            <div class="col-sm-7">

                <input type="text" name='category' class="form-control {{$errors->first('category') ? "is-invalid" : "" }} " value="{{old('category')}}" id="category" placeholder="Project Category">

                <div class="invalid-feedback">
                    {{ $errors->first('category') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="client" class="col-sm-2 col-form-label">Client</label>

            <div class="col-sm-7">

                <input type="text" name='client' class="form-control {{$errors->first('client') ? "is-invalid" : "" }} " value="{{old('client')}}" id="client" placeholder="Client">

                <div class="invalid-feedback">
                    {{ $errors->first('client') }}    
                </div>   

            </div>

        </div>


        <div class="form-group ml-5">

            <label for="project_date" class="col-sm-2 col-form-label">Project Date</label>

            <div class="col-sm-7">

                <input type="date" name='project_date' class="form-control {{$errors->first('project_date') ? "is-invalid" : "" }} " value="{{old('project_date')}}" id="project_date" placeholder="Client">

                <div class="invalid-feedback">
                    {{ $errors->first('project_date') }}    
                </div>   

            </div>

        </div>

        <div class="form-group ml-5">

            <label for="project_url" class="col-sm-2 col-form-label">Project URL</label>

            <div class="col-sm-7">

                <input type="text" name='project_url' class="form-control {{$errors->first('project_url') ? "is-invalid" : "" }} " value="{{old('project_url')}}" id="project_url" placeholder="URL">

                <div class="invalid-feedback">
                    {{ $errors->first('project_url') }}    
                </div>   

            </div>

        </div>

        

        <div class="form-group ml-5">

            <label for="desc" class="col-sm-2 col-form-label">Desc</label>

            <div class="col-sm-8">

                <textarea name="desc" class="form-control {{$errors->first('desc') ? "is-invalid" : "" }} "  id="summernote" cols="30" rows="10">{{old('desc')}}</textarea>
                <div class="invalid-feedback">
                    {{ $errors->first('desc') }}    
                </div>   

            </div>

        </div>
   
        <div class="form-group ml-5">
   
            <div class="col-sm-3">
   
                <button type="submit" class="btn btn-primary">Create</button>
   
            </div>
   
        </div>

    </div>      

  </form>
@endsection

@push('scripts')

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js" type="text/javascript"></script>
<script>
    $(function(){
        $('.add-file').click(function(){
            $('div.files').append('<input type="file" name="photo[]">')
        })
    })
</script>
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
