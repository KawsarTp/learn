<?php

namespace App\Http\Controllers;

use App\Models\Collective;
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
            'amount' => 'required|numeric|gt:0',
            'interval' => 'required|numeric|between:1,3',
            'goal' => 'required|numeric|gt:amount'

        ]);

        $collective = new Collective();

        $collective->content_creator_id = auth()->guard('creator')->id();
        $collective->name = $request->name;
        $collective->description = $request->description;
        $collective->interval = $request->interval;
        $collective->goal = $request->goal;
        $collective->amount = $request->amount;
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
}
