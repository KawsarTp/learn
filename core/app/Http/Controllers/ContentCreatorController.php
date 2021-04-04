<?php

namespace App\Http\Controllers;

use App\Models\Collective;
use App\Models\Post;
use Illuminate\Http\Request;

class ContentCreatorController extends Controller
{
    public function index()
    {
        $page_title = 'Dashboard';
        $posts = auth()->guard('creator')->user()->posts;
        if(auth()->guard('creator')->user()->user_type == 2){
            $collectives = Collective::latest()->with('creator')->get();
            return view(activeTemplate() . 'creator.funddashboard', compact('page_title','collectives'));
        }
        return view(activeTemplate().'creator.dashboard',compact('page_title','posts')); 
    }

    public function contentPost(Request $request)
    {

       
        $request->validate([
            'message' => 'required|max:60000',
            'privacy'=>'required|numeric|between:0,3',
            'file' => 'sometimes|mimes:jpg,png,gif,jpeg,mp4,ogx,oga,ogv,ogg,webm|max:5000'
        ]);
        $filename = null;
        $imageArray= ['jpg', 'png', 'gif', 'jpeg'];
        if($request->has('file')){
            try {
              $vedioArray = ['mp4', 'ogx', 'oga', 'ogv', 'ogg', 'webm'];
              if(in_array( $request->file->getClientOriginalExtension() , $vedioArray)){
                //code asba
              }else{
                  $filename = uploadImage($request->file, imagePath()['post_file']['path'], imagePath()['post_file']['size']); 
              }
            } catch (\Throwable $th) {
               dd('nai');
            }
        }


        $post = new Post();

        $post->content_creator_id = auth()->guard('creator')->id();
        $post->description = $request->message;
        $post->image = $filename;
        $post->privacy = $request->privacy;
        $post->price = isset($request->price) ? $request->price : null;
        $post->plan_id = isset($request->plan_id) ? $request->plan_id : null;
        $post->approval_status = 0;
        $post->pinned = 0;
        $post->comment_status = 1;
        $post->save();


        $notify[] =['success','Post Created Successfully'];
        return back()->withNotify($notify); 

       

    }
}
