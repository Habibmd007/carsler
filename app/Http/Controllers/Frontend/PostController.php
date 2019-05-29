<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;

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

  
    public function selectModel(Request $request)
    {
        // return 'ok';
        $models= DB::table('models')->where('make_id', $request->id )->get();
        foreach( $models as  $model){
            echo' <option value=" '.$model->id.' "> '.$model->title.'</option>';
        }
       
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'body-type'     => 'required',
            'make'          => 'required',
            'model'         => 'required',
            'transmission' => 'required',
            'mileage'        => 'required',
            'out-color'     => 'required',
            'in-color'       => 'required',
            'door'           => 'required',
            'Cylinder'       => 'required',
            'drive-type'    => 'required',
            'fuel-type'      => 'required',
            'price'          => 'required',
        ]);

        return $request;
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
