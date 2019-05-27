<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
   
    public function index($id)
    {
        return view('frontend2.post.index'.$id);
    }

    
    public function create($id)
    {
        return view('frontend2.post.create.'.$id);
    }

  
    public function store(Request $request)
    {
        //
    }

  
    public function show($id)
    {
        return view('frontend2.post.show.single');
    }

  
    public function edit($id)
    {
        //
    }

 
    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
