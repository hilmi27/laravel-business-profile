@extends('layouts.front')

@section('content')
    
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Services</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Services</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="row">
          @foreach ($service as $service)
          
          <div class="col-md-6 mt-md-0">
            <div class="icon-box">
              <i class="{{ $service->icon }}"></i>
              <h4><a href="#">{{ $service->title }}</a></h4>
              <p>{{ $service->desc }}</p>
            </div>
          </div>

          @endforeach
      
        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="section-title">
          <h2>Features</h2>
          <p>Check our Features</p>
        </div>

        <div class="row">
          @foreach ($feature as $feature)
              
          
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab-{{ $feature->id }}">{{ $feature->subject }}</a>
              </li>
            
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane" id="tab-{{ $feature->id }}">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>{{ $feature->title }}</h3>
                    <p class="font-italic">{{ $feature->quote }}</p>
                    <p>{{ $feature->desc }}</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="{{asset('storage/' . $feature->image)}}" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          @endforeach
        </div>

      </div>
    </section><!-- End Features Section -->

  </main><!-- End #main -->
@endsection