@extends('layouts.front')

@section('title')
{{ $post->title }} - 
@endsection
@section('meta')
<meta name="author" content="{{ $general->name }}"/>
<meta property="og:site_name" content="{{ $general->name }}"/>
<meta property="og:type" content="website"/>
<meta property="og:title" content="{{ $post->title }}"/>
<meta property="og:description" content="{{ $post->meta_desc }}"/>
<meta property="og:url" content="https://bwxindo.id"/>
@endsection
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Blog</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="blog.html">Blog</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 entries">

            <article class="entry entry-single">

              <div class="entry-img">
                <img src="{{asset('storage/' . $post->cover)}}" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="blog-single.html">{{ $post->title }}</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="blog-single.html">{{ $post->user->name }}</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">{{ Carbon\Carbon::parse($post->created_at)->format("d F, Y") }}</time></a></li>
                  <li class="d-flex align-items-center"><i class="icofont-comment"></i> <a href="blog-single.html">12 Comments</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <p>
                  {!! $post->body !!}
                </p>

              </div>

              <div class="entry-footer clearfix">
                <div class="float-left">
                  <i class="icofont-folder"></i>
                  <ul class="cats">
                    <li><a href="{{ route('category',$post->category->slug) }}">{{ $post->category->name }}</a></li>
                  </ul>

                  <i class="icofont-tags"></i>
                  <ul class="tags">
                    @foreach ($post->tags as $tag)
                    <li><a href="{{ route('tag',$tag->slug) }}">{{ $tag->name }}</a></li>
                    @endforeach
                    
                    
                  </ul>
                </div>

                <div class="float-right share">
                  <a href="" title="Share on Twitter"><i class="icofont-twitter"></i></a>
                  <a href="" title="Share on Facebook"><i class="icofont-facebook"></i></a>
                  <a href="" title="Share on Instagram"><i class="icofont-instagram"></i></a>
                </div>

              </div>

            </article><!-- End blog entry -->

          </div><!-- End blog entries list -->

          <div class="col-lg-4">

            <div class="sidebar">

              <h3 class="sidebar-title">Categories</h3>
              <div class="sidebar-item categories">
                <ul>
                  @foreach ($categories as $category)
                  <li><a href="{{ route('category',$category->slug) }}">{{ $category->name }} <span>{{ $category->posts()->count() }}</span></a></li>
                  @endforeach
                </ul>

              </div><!-- End sidebar categories-->

              <h3 class="sidebar-title">Recent Posts</h3>
              <div class="sidebar-item recent-posts">

                @foreach ($recent as $recent)
                    
                <div class="post-item clearfix">
                  <img src="{{asset('storage/' . $recent->cover)}}" alt="">
                  <h4><a href="{{route('blogshow',$recent->slug)}}">{{ substr($recent->title,0,50) }}....</a></h4>
                  <time datetime="2020-01-01">{{ Carbon\Carbon::parse($recent->created_at)->format("d F, Y") }}</time>
                </div>

                @endforeach

              </div><!-- End sidebar recent posts-->

              <h3 class="sidebar-title">Tags</h3>
              <div class="sidebar-item tags">
                <ul>
                  @foreach ($tags as $tag)
                  <li><a href="{{  route('tag',$tag->slug)  }}">{{ $tag->name }}</a></li>
                  @endforeach
                </ul>

              </div><!-- End sidebar tags-->

            </div><!-- End sidebar -->

          </div><!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->
@endsection