<?php

namespace App\Http\Controllers;

use App\Models\ContentCreator;
use App\Models\GatewayCurrency;
use App\Models\GeneralSetting;
use App\Models\Post;
use App\Models\PostPurchage;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function unlock(Request $request)
    {
        $post = Post::where('id',$request->id)->where('privacy',3)->firstOrFail();
        $gnl = GeneralSetting::first();

        if(auth()->check()){
            $model = 'App\Models\User';
            $user = User::findOrFail(auth()->id());
        }
        if(auth()->guard('creator')->check()){
            $model = 'App\Models\ContentCreator';
            $user = ContentCreator::findOrFail(auth()->guard('creator')->id());
        }

        if($post->price > $user->balance){
            $notify[] = ['error','You do not have enough balance to unlock this post'];
            return redirect()->route('deposit')->withNotify($notify);
        }

        
        $user->balance = $user->balance - $post->price;
        $user->save();

        
        $post->content_creator->balance = $post->content_creator->balance + $post->price;
        $post->content_creator->save(); 




        $purchage = new PostPurchage();
        $transaction = new Transaction();

        $trx= getTrx();

        $purchage->unlocker_id = $user->id;
        $purchage->post_id = $post->id;
        $purchage->model = $model;
        $purchage->amount = $post->price;
        $purchage->trx = $trx;
        $purchage->details= 'Unlock A Post By '.$user->username;
        $purchage->save();


        $transaction->user_id = $user->id;
        $transaction->model = $model;
        $transaction->amount = $post->price;
        $transaction->charge = 0;
        $transaction->post_balance = $user->balance;
        $transaction->trx_type = "-";
        $transaction->trx = $trx;
        $transaction->details = 'Unlock A Post By '.$user->username;
        $transaction->save();


        notify($user,'UNLOCK_POST',[
            'username' => $post->content_creator->username,
            'amount' => $post->price,
            'currency'=> $gnl->cur_text,
            'trx' => $trx,
            'post_balance'=> $user->balance
        ]);

        notify($post->content_creator,'GET_POST_PRICE',[
            'username' => $user->username,
            'amount' => $post->price,
            'currency'=> $gnl->cur_text,
            'trx' => $trx,
            'post_balance'=> $post->content_creator->balance
        ]);


        $notify[] = ['success','You Have successfully Unlock This Post'];
        return redirect()->back()->withNotify($notify);




        
    }
}
