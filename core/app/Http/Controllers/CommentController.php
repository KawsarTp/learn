<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\CommentReaction;
use App\Models\ContentCreator;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function comment(Request $request)
    {
        $request->validate([
            'comment' => 'required|max:6000'
        ]);

        $post = Post::findOrFail($request->id);

        if(auth()->check()){
            $commenter = User::findOrFail(auth()->id());
            $model = 'App\Models\User';
        }
        if(auth()->guard('creator')->check()){
            $commenter = ContentCreator::findOrFail(auth()->guard('creator')->id());
            $model = "App\Models\ContentCreator";
        }


        $comment = new Comment();
        
        $comment->post_id = $post->id;
        $comment->user_id = $commenter->id;
        $comment->details = $request->comment;
        $comment->model =  $model;
        $comment->save();

        $notify[] = ['success','Comment Successfull'];
        return redirect()->back()->withNotify($notify);

    }

    public function reaction($post, $comment)
    {

        $post = Post::findOrFail($post);
        $commentId = Comment::findOrFail($comment);

        if(auth()->check()){
            $reacter = User::findOrFail(auth()->id());
            $model = 'App\Models\User';
        }
        if(auth()->guard('creator')->check()){
            $reacter = ContentCreator::findOrFail(auth()->guard('creator')->id());
            $model = "App\Models\ContentCreator";
        }


        $comment = new CommentReaction();
        
        $comment->post_id = $post->id;
        $comment->user_id = $reacter->id;
        $comment->comment_id = $commentId->id;
        $comment->model =  $model;
        $comment->save();


        $notify[] = ['success','React Successfull'];
        return redirect()->back()->withNotify($notify);
        
    }

    public function reactionUnlink($post,$comment)
    {
        if(auth()->check()){
            $reacter = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $reacter = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }

        $commentRec = CommentReaction::where('user_id',$reacter->id)->where('post_id',$post)->where('comment_id',$comment)->first();
        
        $commentRec->delete();
        
        $notify[] = ['success','unlike  Successfully'];
        return redirect()->intended()->withNotify($notify);
    }
}
