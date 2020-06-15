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
        return view('front.home',compact('banner','cover','service','client','general'));
    }

    public function about()
    {
        $team = Team::all();
        $faq = Faq::all();
        $about = About::find(1);
        $general = General::find(1);
        return view('front.about',compact('team','faq','about','general'));
    }

    public function service()
    {
        $service = Service::all();
        $feature = Feature::all();
        $general = General::find(1);
        return view('front.service',compact('service','feature','general'));
    }

    public function portofolio()
    {
        $general = General::find(1);
        return view('front.portofolio',compact('general'));
    }

    public function portofolioshow()
    {
        $general = General::find(1);
        return view('front.portofolioshow',compact('general'));
    }

    public function blog()
    {
        $general = General::find(1);
        return view('front.blog',compact('general'));
    }

    public function blogshow()
    {
        $general = General::find(1);
        return view('front.blogshow',compact('general'));
    }

    public function contact()
    {
        $general = General::find(1);
        return view('front.contact',compact('general'));
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
