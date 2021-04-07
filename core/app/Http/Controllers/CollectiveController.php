<?php

namespace App\Http\Controllers;

use App\Models\Collective;
use App\Models\CollectiveSponsor;
use Illuminate\Http\Request;

class CollectiveController extends Controller
{
    public function index()
    {
        $page_title = 'Create Collective Tier';

        return view(activeTemplate().'creator.fund.create',compact('page_title'));
    }

    public function storeCollective(Request $request)
    {
        $request->validate([
            'name' => 'required|max:200',
            'description'=>'required|max:60000',
            'image'=>'required|mimes:jpg,png,jpeg',
            'type'=>'required',
            'goal' => 'required|gt:0|numeric',
        ]);

        if($request->has('image')){
            try {
                $path = imagePath()['collective']['path'];
                $size = imagePath()['collective']['size'];

                $filename = uploadFile($request->image, $path, $size);
            } catch (\Throwable $th) {
                $notify[] = ['error','Could not upload Image'];
                return redirect()->back()->withNotify($notify);
            }
        }

        $collective = new Collective();

        $collective->content_creator_id = auth()->guard('creator')->id();
        $collective->name = $request->name;
        $collective->description = $request->description;
        $collective->image = $filename;
        $collective->goal =  $request->goal;
        $collective->collective_type = $request->type;
        $collective->save();

        $notify[] = ['success','Successfully create events'];
        return redirect()->route('creator.home')->withNotify($notify); 
    }

    public function editCollective(Request $request)
    {
        $collect = Collective::findOrFail($request->id);

        $page_title = 'Collective Edit';

        dd($collect);
    }

    public function addSponsorPlan($id)
    {
        $page_title = 'Create Sponsor';

        $collect = Collective::findOrfail($id);

        return view(activeTemplate().'creator.fund.sponsor',compact('page_title','collect'));
    }

    public function storeSponsorPlan(Request $request)
    {
      
       $request->validate([
         'name'=> 'required|max:200|unique:collective_sponsors',
         'description' => 'required|max:500',
         'price' => 'required|gt:0|numeric',
         'duration'=>'required|integer|between:1,3'
       ]);

        $collect = Collective::findOrFail($request->id);

        $sponsors = new CollectiveSponsor();

        $sponsors->name = $request->name;
        $sponsors->collective_id = $collect->id;
        $sponsors->details = $request->description;
        $sponsors->price =  $request->price; 
        $sponsors->duration = $request->duration;

        $sponsors->save();

        $notify[] = ['success','Sponsor Plan Create Successfull'];

        return back()->withNotify($notify);

    }
}
