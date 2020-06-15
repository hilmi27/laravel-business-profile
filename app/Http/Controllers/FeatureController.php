<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Feature;

class FeatureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $feature = Feature::orderBy('id','desc')->get();
        
        return view('admin.feature.index',compact('feature'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.feature.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        \Validator::make($request->all(), [
            "image" => "required",
            "subject" => "required",
            "title" => "required",
            "desc" => "required|max:255"         
        ])->validate();

        $feature = new Feature();
        $feature->subject = $request->subject;
        $feature->title = $request->title;
        $feature->quote = $request->quote;
        $feature->desc = $request->desc;

        $image = $request->file('image');

        if($image){
        $cover_path = $image->store('images/feature', 'public');

        $feature->image = $cover_path;
        }

        // dd($feature);
        if ( $feature->save()) {

            return redirect()->route('admin.feature')->with('success', 'feature added successfully');
    
           } else {
               
            return redirect()->route('admin.feature.create')->with('error', 'feature failed to add');
    
           }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $feature = Feature::findOrFail($id);

        return view('admin.feature.edit',compact('feature'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        \Validator::make($request->all(), [
            "image" => "required",
            "subject" => "required",
            "title" => "required",
            "desc" => "required"         
        ])->validate();

        $feature = Feature::findOrFail($id);
        $feature->subject = $request->subject;
        $feature->title = $request->title;
        $feature->quote = $request->quote;
        $feature->desc = $request->desc;

        $new_image = $request->file('image');

        if($new_image){
        if($feature->image && file_exists(storage_path('app/public/' . $feature->image))){
            \Storage::delete('public/'. $feature->image);
        }

        $new_cover_path = $new_image->store('images/feature', 'public');

        $feature->image = $new_cover_path;
    }

        // dd($feature);
        if ( $feature->save()) {

            return redirect()->route('admin.feature')->with('success', 'feature updated successfully');
    
           } else {
               
            return redirect()->route('admin.feature.create')->with('error', 'feature failed to update');
    
           }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $feature = Feature::findOrFail($id);

        $feature->delete();

        return redirect()->route('admin.feature')->with('success', 'feature deleted successfully');
    }
}
