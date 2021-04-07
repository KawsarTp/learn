<?php

namespace App\Http\Controllers;

use App\Models\AdminNotification;
use App\Models\Comment;
use App\Models\CommentReaction;
use App\Models\ContentCreator;
use App\Models\Follower;
use App\Models\Frontend;
use App\Models\GeneralSetting;
use App\Models\Language;
use App\Models\Page;
use App\Models\Post;
use App\Models\Reaction;
use App\Models\SupportAttachment;
use App\Models\SupportMessage;
use App\Models\SupportTicket;
use Carbon\Carbon;
use Illuminate\Http\Request;


class SiteController extends Controller
{
    public function __construct()
    {
        $this->activeTemplate = activeTemplate();
    }

    public function index()
    {
        $gnl = GeneralSetting::first();

        if ($gnl->active_landing == 2) {

            $count = Page::where('tempname', $this->activeTemplate)->where('slug', 'home')->count();
            if ($count == 0) {
                $page = new Page();
                $page->tempname = $this->activeTemplate;
                $page->name = 'HOME';
                $page->slug = 'home';
                $page->save();
            }

            $data['page_title'] = 'Home';
            $data['sections'] = Page::where('tempname', $this->activeTemplate)->where('slug', 'home')->firstOrFail();
            return view($this->activeTemplate . 'home', $data);
        }

        $page_title = 'Home';
        $top_creators = Post::where('approval_status',1)->groupBy('content_creator_id')->selectRaw('count(content_creator_id) as count,content_creator_id')->orderBy('count','DESC')->take(5)->get();
        $comments = Comment::latest()->with('creator','user')->get();
        // For User
        
        if(auth()->check()){
            $user = auth()->user();
             $followList = auth()->user()->follow->map(function($item){
                return $item->content_creator_id;
             });
             $posts = Post::where('approval_status',1)->latest()->with('content_creator')->withCount('reaction','comments')->get();

             $reaction = Reaction::where('reactor_id',auth()->id())->pluck('post_id')->toArray();

             $commentRec = CommentReaction::where('user_id',auth()->user()->id)->pluck('comment_id')->toArray();

            return view($this->activeTemplate . 'home', compact('page_title','posts','top_creators','followList','reaction','commentRec','user'));
        }


        // For Content Creator

        if(auth()->guard('creator')->check()){
            $user = auth()->guard('creator')->user();
            $followList = auth()->guard('creator')->user()->follow->map(function($item){
                return $item->content_creator_id;
             });
             $posts = Post::where('approval_status',1)->latest()->with('content_creator')->withCount('reaction','comments')->get();
             
             $reaction = Reaction::where('reactor_id',auth()->guard('creator')->id())->pluck('post_id')->toArray();

             $commentRec = CommentReaction::where('user_id',auth()->guard('creator')->user()->id)->pluck('comment_id')->toArray();

            return view($this->activeTemplate . 'home', compact('page_title','posts','top_creators','followList','reaction','commentRec','user'));
        }


        // for All

        $posts = Post::where('approval_status',1)->where('privacy','!=',1)->latest()->with('content_creator')->withCount('reaction','comments')->get();
        return view($this->activeTemplate . 'home', compact('page_title','posts','top_creators'));


    }

    public function pages($slug)
    {
        $page = Page::where('tempname', $this->activeTemplate)->where('slug', $slug)->firstOrFail();
        $data['page_title'] = $page->name;
        $data['sections'] = $page;
        return view($this->activeTemplate . 'pages', $data);
    }


    public function contact()
    {
        $data['page_title'] = "Contact Us";
        return view($this->activeTemplate . 'contact', $data);
    }


    public function contactSubmit(Request $request)
    {
        $ticket = new SupportTicket();
        $message = new SupportMessage();

        $imgs = $request->file('attachments');
        $allowedExts = array('jpg', 'png', 'jpeg', 'pdf');

        $this->validate($request, [
            'attachments' => [
                'sometimes',
                'max:4096',
                function ($attribute, $value, $fail) use ($imgs, $allowedExts) {
                    foreach ($imgs as $img) {
                        $ext = strtolower($img->getClientOriginalExtension());
                        if (($img->getSize() / 1000000) > 2) {
                            return $fail("Images MAX  2MB ALLOW!");
                        }
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg, pdf images are allowed");
                        }
                    }
                    if (count($imgs) > 5) {
                        return $fail("Maximum 5 images can be uploaded");
                    }
                },
            ],
            'name' => 'required|max:191',
            'email' => 'required|max:191',
            'subject' => 'required|max:100',
            'message' => 'required',
        ]);


        $random = getNumber();

        $ticket->user_id = auth()->id();
        $ticket->name = $request->name;
        $ticket->email = $request->email;


        $ticket->ticket = $random;
        $ticket->subject = $request->subject;
        $ticket->last_reply = Carbon::now();
        $ticket->status = 0;
        $ticket->save();

        $adminNotification = new AdminNotification();
        $adminNotification->user_id = auth()->id() ? auth()->id() : 0;
        $adminNotification->title = 'New support ticket has opened';
        $adminNotification->click_url = route('admin.ticket.view', $ticket->id);
        $adminNotification->save();

        $message->supportticket_id = $ticket->id;
        $message->message = $request->message;
        $message->save();

        $path = imagePath()['ticket']['path'];

        if ($request->hasFile('attachments')) {
            foreach ($request->file('attachments') as $image) {
                try {
                    $attachment = new SupportAttachment();
                    $attachment->support_message_id = $message->id;
                    $attachment->image = uploadImage($image, $path);
                    $attachment->save();
                } catch (\Exception $exp) {
                    $notify[] = ['error', 'Could not upload your ' . $image];
                    return back()->withNotify($notify)->withInput();
                }
            }
        }
        $notify[] = ['success', 'ticket created successfully!'];

        return redirect()->route('ticket.view', [$ticket->ticket])->withNotify($notify);
    }

    public function changeLanguage($lang = null)
    {
        $language = Language::where('code', $lang)->first();
        if (!$language) $lang = 'en';
        session()->put('lang', $lang);
        return redirect()->back();
    }

    public function blogDetails($id, $slug)
    {
        $blog = Frontend::where('id', $id)->where('data_keys', 'blog.element')->firstOrFail();
        $page_title = $blog->data_values->title;
        return view($this->activeTemplate . 'blogDetails', compact('blog', 'page_title'));
    }

    public function placeholderImage($size = null)
    {
        if ($size != 'undefined') {
            $size = $size;
            $imgWidth = explode('x', $size)[0];
            $imgHeight = explode('x', $size)[1];
            $text = $imgWidth . '×' . $imgHeight;
        } else {
            $imgWidth = 150;
            $imgHeight = 150;
            $text = 'Undefined Size';
        }
        $fontFile = realpath('assets/font') . DIRECTORY_SEPARATOR . 'RobotoMono-Regular.ttf';
        $fontSize = round(($imgWidth - 50) / 8);
        if ($fontSize <= 9) {
            $fontSize = 9;
        }
        if ($imgHeight < 100 && $fontSize > 30) {
            $fontSize = 30;
        }

        $image     = imagecreatetruecolor($imgWidth, $imgHeight);
        $colorFill = imagecolorallocate($image, 100, 100, 100);
        $bgFill    = imagecolorallocate($image, 175, 175, 175);
        imagefill($image, 0, 0, $bgFill);
        $textBox = imagettfbbox($fontSize, 0, $fontFile, $text);
        $textWidth  = abs($textBox[4] - $textBox[0]);
        $textHeight = abs($textBox[5] - $textBox[1]);
        $textX      = ($imgWidth - $textWidth) / 2;
        $textY      = ($imgHeight + $textHeight) / 2;
        header('Content-Type: image/jpeg');
        imagettftext($image, $fontSize, 0, $textX, $textY, $colorFill, $fontFile, $text);
        imagejpeg($image);
        imagedestroy($image);
    }
}
