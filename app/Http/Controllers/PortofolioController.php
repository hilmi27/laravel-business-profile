<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Portofolio;

use App\Gallery;

class PortofolioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $portofolio = Portofolio::orderBy('id','desc')->get();

        return view('admin.portofolio.index',compact('portofolio'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.portofolio.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $portofolio = new Portofolio();
        $portofolio->name = $request->name;
        $portofolio->category = $request->category;
        $portofolio->client = $request->client;
        $portofolio->desc = $request->desc;
        $portofolio->project_date = $request->project_date;
        $portofolio->project_url = $request->project_url;

        $cover = $request->file('cover');

        if($cover){
        $cover_path = $cover->store('images/portofolio', 'public');

        $portofolio->cover = $cover_path;
        }

        if ($portofolio->save()) {

            $lastid = $portofolio->id;

            $files = [];
            foreach ($request->file('photo') as $file) {
                if ($file->isValid()) {
                    $path = $file->store('images/portofolio', 'public');

                    // save information to variable
                    // next will be saved to database
                    $files[] = [
                        // 'title' => $file->getClientOriginalName(),
                        'portofolio_id' => $lastid,
                        'photo' => $path,
                    ];
                }
            }

            Gallery::insert($files);

            return redirect()->route('admin.portofolio')->with('success', 'Portofolio added successfully');
    
           } else {
               
            return redirect()->route('admin.portofolio.create')->with('error', 'Portofolio failed to add');
    
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
        $portofolio = Portofolio::findOrFail($id);

        return view('admin.portofolio.edit',compact('portofolio'));
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Portofolio::findOrFail($id);
        
        // $data->galleries()->detach();

        $data->forceDelete();

        return redirect()->route('admin.portofolio')->with('success', 'Portofolio deleted successfully');
    }
}
