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

@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

<form action="{{ route('admin.client.update',$client->id) }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="form-group">

        <div class="picture-container">

            <div class="picture">

                <img src="{{asset('storage/' . $client->logo)}}" class="picture-src" id="wizardPicturePreview" height="200px" width="400px" title=""/>

                <input type="file" id="wizard-picture" name="logo" class="form-control {{$errors->first('logo') ? "is-invalid" : "" }} ">

                <div class="invalid-feedback">
                    {{ $errors->first('logo') }}    
                </div>  

            </div>

            <h6>Pilih Logo</h6>

        </div>

    </div>   

    <div class="form-group ml-5">

        <label for="name" class="col-sm-2 col-form-label">Name</label>

        <div class="col-sm-7">

            <input type="text" name='name' class="form-control {{$errors->first('name') ? "is-invalid" : "" }} " value="{{old('name') ? old('name') : $client->name}}" id="name" placeholder="PT. Angin Ribut">

            <div class="invalid-feedback">
                {{ $errors->first('name') }}    
            </div>   

        </div>

    </div>

    <div class="form-group ml-5">

        <label for="address" class="col-sm-2 col-form-label">Address</label>

        <div class="col-sm-7">

            <input type="text" name='address' class="form-control {{$errors->first('address') ? "is-invalid" : "" }} " value="{{old('address') ? old('address') : $client->address}}" id="address" placeholder="Kota Ngastino">

            <div class="invalid-feedback">
                {{ $errors->first('address') }}    
            </div>   

        </div>

    </div>

    <div class="form-group ml-5">

        <label for="phone" class="col-sm-2 col-form-label">Phone</label>

        <div class="col-sm-7">

            <input type="number" name='phone' class="form-control {{$errors->first('phone') ? "is-invalid" : "" }} " value="{{old('phone') ? old('phone') : $client->phone}}" id="phone" placeholder="62121221211">

            <div class="invalid-feedback">
                {{ $errors->first('phone') }}    
            </div>   

        </div>

    </div>

    <div class="form-group ml-5">

        <label for="email" class="col-sm-2 col-form-label">E-mail</label>

        <div class="col-sm-7">

            <input type="email" name='email' class="form-control {{$errors->first('email') ? "is-invalid" : "" }} " value="{{old('email') ? old('email') : $client->email}}" id="email" placeholder="example@mail.com">

            <div class="invalid-feedback">
                {{ $errors->first('email') }}    
            </div>   

        </div>

    </div>

    <div class="form-group ml-5">

        <label for="link_web" class="col-sm-2 col-form-label">Link Web</label>

        <div class="col-sm-7">

            <input type="text" name='link_web' class="form-control {{$errors->first('link_web') ? "is-invalid" : "" }} " value="{{old('link_web') ? old('link_web') : $client->link_web}}" id="link_web" placeholder="example.com">

            <div class="invalid-feedback">
                {{ $errors->first('link_web') }}    
            </div>   

        </div>

    </div>

    <div class="form-group ml-5">

        <label for="link_web" class="col-sm-2 col-form-label">Contract</label>

        <div class="row">
    
        <div class="col-sm-3">

            <input type="date" name='start_contract' class="form-control {{$errors->first('start_contract') ? "is-invalid" : "" }} " value="{{old('start_contract') ? old('start_contract') : $client->start_contract}}" id="start_contract">

            <div class="invalid-feedback">
                {{ $errors->first('start_contract') }}    
            </div>   

        </div>
        s/d
        <div class="col-sm-3">

            <input type="date" name='finish_contract' class="form-control {{$errors->first('finish_contract') ? "is-invalid" : "" }} " value="{{old('finish_contract') ? old('finish_contract') : $client->finish_contract}}" id="finish_contract">

            <div class="invalid-feedback">
                {{ $errors->first('finish_contract') }}    
            </div>   

        </div>
    
</div>

    </div>

   

      <div class="form-group ml-5">
        <div class="col-sm-3">
            <button type="submit" class="btn btn-primary">Update</button>
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
  
@endpush