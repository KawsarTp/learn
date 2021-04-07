<?php

namespace App\Http\Controllers;

use App\Models\ContentCreator;
use App\Models\Post;
use App\Models\Reaction;
use App\Models\User;
use Illuminate\Http\Request;

class ReactionController extends Controller
{
    public function reaction($id)
    {
        if(auth()->check()){
            $reacter = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $reacter = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }

        $post = Post::findOrFail($id);

        $key = Reaction::where('post_id',$post->id)->where('reactor_id',$reacter->id)->first();
        if($key){
            $notify[] = ['error','Already Reacted On This Post'];
            return redirect()->back()->withNotify($notify);
        }

        $reaction = new Reaction();

        $reaction->post_id = $post->id;
        $reaction->reactor_id = $reacter->id;

        $reaction->save();

        $notify[] = ['success','You Reacted on this post successfully'];

        return redirect()->back()->withNotify($notify);

    }


    public function unlike($id)
    {
        if(auth()->check()){
            $reacter = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $reacter = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }
        $post = Post::findOrFail($id);

        $key = Reaction::where('post_id',$post->id)->where('reactor_id',$reacter->id)->first();

        $key->delete();
        
        $notify[] = ['success','Unlike  Successfully'];
        return redirect()->intended()->withNotify($notify);
    }
}
