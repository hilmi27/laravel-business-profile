@extends('layouts.front')

@section('content')
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div>
          <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
        </div>

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="icofont-google-map"></i>
                <h4>Location:</h4>
                <p>A108 Adam Street, New York, NY 535022</p>
              </div>

              <div class="email">
                <i class="icofont-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
              </div>

              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>Call:</h4>
                <p>+1 5589 55488 55s</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            @if (session('failed'))
            
            <div class="alert alert-danger">
        
              {{ session('failed') }}
        
            </div>
        
            @endif    
        
            @if (session('sended'))

            <div class="alert alert-success">

              {{ session('sended') }}

            </div>

            @endif

            <form action="{{ route('message') }}" method="post" >
             
              @csrf
             
              <div class="form-row">
            
                <div class="col-md-6 form-group" style="padding-bottom: 8px;">
            
                  <input type="text" name="name" class="form-control {{$errors->first('name') ? "is-invalid" : "" }} " id="name" placeholder="Your Name" value="{{old('name')}}">
            
                  <div class="invalid-feedback">
                  
                    {{ $errors->first('name') }}    
                
                  </div> 

                </div>
            
                <div class="col-md-6 form-group" style="padding-bottom: 8px;">
            
                  <input type="email" class="form-control {{$errors->first('email') ? "is-invalid" : "" }} " name="email" id="email" placeholder="Your Email" value="{{old('email')}}">
            
                  <div class="invalid-feedback">
                
                    {{ $errors->first('email') }}    
                
                  </div> 

                </div>
            
              </div>
            
              <div class="form-group" style="padding-bottom: 8px;">
            
                <input type="text" class="form-control {{$errors->first('subject') ? "is-invalid" : "" }} " name="subject" id="subject" placeholder="Subject" value="{{old('subject')}}">
            
                <div class="invalid-feedback">
              
                  {{ $errors->first('subject') }}    
              
                </div> 

              </div>
            
              <div class="form-group" style="padding-bottom: 8px;">
            
                <textarea class="form-control {{$errors->first('body') ? "is-invalid" : "" }} " name="body" rows="5" placeholder="Message">{{old('body')}}</textarea>
            
                <div class="invalid-feedback">
              
                  {{ $errors->first('body') }}    
              
                </div> 

              </div>
          
              <div class="text-center">
                <button type="submit" style="background: #d9232d; border: 0; padding: 10px 24px; color: #fff; transition: 0.4s; border-radius: 4px;">Send Message</button>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
@endsection