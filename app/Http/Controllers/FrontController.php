<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;
use App\Service;
use App\Feature;
use App\Client;
use App\Team;
use App\Faq;
use App\Subscriber;
use App\About;
use App\Message;
use App\General;
use App\Post;
use App\Category;
use App\Tag;
use App\Link;
use App\Portofolio;

class FrontController extends Controller
{
    // protected $general;

    // public function __construct(General $general)
    // {

    //     $this->general = $general;

    // }

    public function home()
    {
        $banner = Banner::all();
        $cover = Banner::first();
        $service = Service::all();
        
        $general = General::find(1);
        $client = Client::get()->random(6);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.home',compact('banner','cover','service','client','general','link','services'));
    }

    public function about()
    {
        $team = Team::all();
        $faq = Faq::all();
        $about = About::find(1);
        $general = General::find(1);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.about',compact('team','faq','about','general','link','services'));
    }

    public function service()
    {
        $service = Service::all();
        $feature = Feature::all();
        $general = General::find(1);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.service',compact('service','feature','general','link','services'));
    }

    public function portofolio()
    {
        $general = General::find(1);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        $portofolios = Portofolio::orderBy('id','desc')->get();
        return view('front.portofolio',compact('general','link','services','portofolios'));
    }

    public function portofolioshow($id)
    {
        $general = General::find(1);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        $portofolio = Portofolio::findOrFail($id);
        return view('front.portofolioshow',compact('general','link','services','portofolio'));
    }

    public function blog()
    {
        $general = General::find(1);
        $posts = Post::orderBy('id','desc')->paginate(12);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.blog',compact('general','posts','link','services'));
    }

    public function blogshow($slug)
    {
        $general = General::find(1);
        $post = Post::where('slug', $slug)->firstOrFail();
        $categories = Category::get();
        $tags = Tag::get();
        $recent = Post::orderBy('id','desc')->limit(5)->get();
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.blogshow',compact('general','post','categories','tags','recent','link','services'));
    }

    public function category(Category $category)
    {
        $general = General::find(1);
        $posts = $category->posts()->latest()->paginate(12);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view ('front.blog',compact('general','posts','category','link','services'));
    }

    public function tag(Tag $tag)
    {
        $general = General::find(1);
        $posts = $tag->posts()->latest()->paginate(12);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view ('front.blog',compact('general','posts','tag','link','services'));
    }

    public function contact()
    {
        $general = General::find(1);
        $link = Link::orderBy('id','asc')->get();
        $services = Service::orderBy('title','asc')->get();
        return view('front.contact',compact('general','link','services'));
    }

    public function subscribe(Request $request)
    {
        \Validator::make($request->all(), [
            "email" => "required|unique:subscribers,email",        
        ])->validate();

        $subs = new Subscriber();
        $subs->email = $request->email;
        if ( $subs->save()) {

            return redirect()->route('home')->with('success', 'You have successfully subscribed');
    
           } else {
               
            return redirect()->route('home')->with('error', 'You failed to subscribe');
    
           }
    }

    public function message(Request $request)
    {
        \Validator::make($request->all(), [
            "name" => "required",
            "email" => "required",
            "subject" => "required",
            "body" => "required"         
        ])->validate();

        $message = new Message();
        $message->name = $request->name;
        $message->email = $request->email;
        $message->subject = $request->subject;
        $message->body = $request->body;

       $message->save();

       if ( $message->save()) {

        return redirect()->route('contact')->with('sended', 'Your message was successfully sent');

       } else {
           
        return redirect()->route('contact')->with('failed', 'Your message failed to send');

       }
    }
}
