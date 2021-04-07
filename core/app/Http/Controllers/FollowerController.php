<?php

namespace App\Http\Controllers;

use App\Models\ContentCreator;
use App\Models\Follower;
use App\Models\User;
use Illuminate\Http\Request;

class FollowerController extends Controller
{
    public function follow(Request $request, $id)
    {
        if(auth()->check()){
            $follower = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $follower = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }
        $creator = ContentCreator::findOrFail($id);

        $key = Follower::where('followed_by',$follower->id)->where('content_creator_id',$creator->id)->first();
        if($key){
            $notify[] = ['error','Already Follow This Creator'];
            return redirect()->back()->withNotify($notify);
        }

        $follow = new Follower();

        $follow->followed_by = $follower->id;
        $follow->content_creator_id = $creator->id;
        $follow->save();

        $notify[] = ['success','Followed Successfully'];
        return redirect()->back()->withNotify($notify);
    }

    public function unFollow(Request $request, $id)
    {
        if(auth()->check()){
            $follower = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $follower = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }
        $creator = ContentCreator::findOrFail($id);

        $key = Follower::where('followed_by',$follower->id)->where('content_creator_id',$creator->id)->first();

        $key->delete();
        
        $notify[] = ['success','Unfollow  Successfully'];
        return redirect()->intended()->withNotify($notify);
    }
}
