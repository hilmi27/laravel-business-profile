@extends('layouts.front')

@section('content')
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          @isset($category)
          <h2>Blog Category: {{ $category->name }}</h2>
          @endisset

          @isset($tag)
          <h2>Blog Tag: {{ $tag->name }}</h2>
          @endisset

          @if (!isset($tag) && !isset($category))
          <h2>Blog</h2>
          @endif

          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Blog</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container">

        <div class="row">

          @foreach ($posts as $post)
      
          <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
            <article class="entry">

              <div class="entry-img">
                <img src="assets/img/blog-1.jpg" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="{{route('blogshow',$post->slug)}}">{{ $post->title }}</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">{{ $post->user->name }}</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#"><time datetime="2020-01-01">{{ Carbon\Carbon::parse($post->created_at)->format("d F, Y") }}</time></a></li>
                </ul>
              </div>

              <div class="entry-content">
                <p>
                  {!! $post->body,0,200 !!}
                </p>
                <div class="read-more">
                  <a href="{{route('blogshow',$post->slug)}}">Read More</a>
                </div>
              </div>

            </article><!-- End blog entry -->
          </div>

          @endforeach

         

        </div>

        <div class="blog-pagination" data-aos="fade-up">
          <ul class="justify-content-center">
            {{ $posts->links() }}
          </ul>
        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->
@endsection