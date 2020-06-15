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

class FrontController extends Controller
{
    public function home()
    {
        $banner = Banner::all();
        $cover = Banner::first();
        $service = Service::all();
        $client = Client::get()->random(6);
        return view('front.home',compact('banner','cover','service','client'));
    }

    public function about()
    {
        $team = Team::all();
        $faq = Faq::all();
        $about = About::find(1);
        return view('front.about',compact('team','faq','about'));
    }

    public function service()
    {
        $service = Service::all();
        $feature = Feature::all();
        return view('front.service',compact('service','feature'));
    }

    public function portofolio()
    {
        return view('front.portofolio');
    }

    public function portofolioshow()
    {
        return view('front.portofolioshow');
    }

    public function blog()
    {
        return view('front.blog');
    }

    public function blogshow()
    {
        return view('front.blogshow');
    }

    public function contact()
    {
        return view('front.contact');
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
