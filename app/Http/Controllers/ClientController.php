<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Client;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $client = Client::orderBy('id','desc')->get();
        return view('admin.client.index',compact('client'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.client.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $client                     = new Client;
        $client->name               = $request->name;
        $client->address            = $request->address;
        $client->email              = $request->email;
        $client->phone              = $request->phone;
        $client->link_web           = $request->link_web;
        $client->start_contract     = $request->start_contract;
        $client->finish_contract    = $request->finish_contract;

        $logo = $request->file('logo');

        if($logo){
        $cover_path = $logo->store('images/client', 'public');

        $client->logo = $cover_path;
        }

        // dd($client);
        if ( $client->save()) {

            return redirect()->route('admin.client')->with('success', 'client added successfully');
    
           } else {
               
            return redirect()->route('admin.client.create')->with('error', 'client failed to add');
    
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
        $client = Client::findOrFail($id);

        return view('admin.client.edit',compact('client'));
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
        $client                     = Client::findOrFail($id);
        $client->name               = $request->name;
        $client->address            = $request->address;
        $client->email              = $request->email;
        $client->phone              = $request->phone;
        $client->link_web           = $request->link_web;
        $client->start_contract     = $request->start_contract;
        $client->finish_contract    = $request->finish_contract;

        $new_logo = $request->file('logo');

        if($new_logo){
        if($client->logo && file_exists(storage_path('app/public/' . $client->logo))){
            \Storage::delete('public/'. $client->logo);
        }

        $new_cover_path = $new_logo->store('images/client', 'public');

        $client->logo = $new_cover_path;
        }


        // dd($client);
        if ( $client->save()) {

            return redirect()->route('admin.client')->with('success', 'client updated successfully');
    
           } else {
               
            return redirect()->route('admin.client.create')->with('error', 'client failed to update');
    
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
        $client = Client::findOrFail($id);

        $client->delete();

        return redirect()->route('admin.client')->with('success', 'client deleted successfully');
    }
}
