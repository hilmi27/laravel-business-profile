@extends('layouts.front')

@section('content')
    
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>About</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>About</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row content">
          <div class="col-lg-6">
            <img src="{{asset('storage/' . $about->logo)}}" alt="" height="300px" width="300px">
            <h2>{{ $about->title }}</h2>
            <h3>{{ $about->subject }}</h3>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
             {!! $about->desc !!}
            </p>
            <p class="font-italic">
             {{ $about->quote }}
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Team</h2>
          <p>Our Hardowrking Team</p>
        </div>

        <div class="row">

          @foreach ($team as $team)
              
          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="{{asset('storage/' . $team->photo)}}" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>{{ $team->name }}</h4>
                <span>{{ $team->position }}</span>
                <p>{{ $team->bio }}</p>
                <div class="social">
                  <a href="{{ $team->twitter }}" target="_blank"><i class="ri-twitter-fill"></i></a>
                  <a href="{{ $team->facebook }}" target="_blank"><i class="ri-facebook-fill"></i></a>
                  <a href="{{ $team->instagram }}" target="_blank"><i class="ri-instagram-fill"></i></a>
                  <a href="{{ $team->linkedin }}" target="_blank"> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          @endforeach


        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Our Skills Section ======= -->
    <section id="skills" class="skills">
      <div class="container">

        <div class="section-title">
          <h2>F.A.Q</h2>
          <p>Frequently Asked Questions</p>
        </div>

    <div id="accordion">

      @foreach ($faq as $faq)
          
      <div class="card">
        <div class="card-header" id="heading{{ $faq->id }}">
          <h5 class="mb-0">
            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse{{ $faq->id }}" aria-expanded="false" aria-controls="collapse{{ $faq->id }}">
              {{ $faq->question }}
            </button>
          </h5>
        </div>
    
        <div id="collapse{{ $faq->id }}" class="collapse" aria-labelledby="heading{{ $faq->id }}" data-parent="#accordion">
          <div class="card-body">
            {{ $faq->answer }}
          </div>
        </div>
      </div>
 
      @endforeach

    </div>

      </div>
    </section><!-- End Our Skills Section -->
  </main><!-- End #main -->
  
@endsection