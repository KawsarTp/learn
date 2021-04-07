<?php

namespace App\Http\Controllers\Creator\Auth;

use App\Http\Controllers\Controller;
use App\Models\AdminNotification;
use App\Models\ContentCreator;
use App\Models\CreatorLogin;
use App\Models\GeneralSetting;
use App\Models\User;
use App\Models\UserLogin;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{

    use RegistersUsers;

    protected $redirectTo = '/creator/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('creator.guest');
        $this->activeTemplate = activeTemplate();
    }

    protected function guard()
    {
        return Auth::guard('creator');
    }

    public function showRegistrationForm()
    {

        $page_title = "Sign Up";
        $info = json_decode(json_encode(getIpInfo()), true);
        $country_code = @implode(',', $info['code']);
        return view($this->activeTemplate . 'creator.auth.register', compact('page_title', 'country_code'));
    }

    protected function validator(array $data)
    {
        $validate = Validator::make($data, [
            'firstname' => 'required|string|max:60',
            'lastname' => 'required|string|max:60',
            'email' => 'required|string|email|max:160|unique:content_creators',
            'mobile' => 'required|string|max:30|unique:content_creators',
            'password' => 'required|string|min:6|confirmed',
            'user_type' => 'required|numeric|between:1,2',
            'payment_type'=> 'required_if:user_type,==,1|numeric|between:1,2',
            'username' => 'required|alpha_num|unique:content_creators|min:6',
            'captcha' => 'sometimes|required',
            'country_code' => 'required'
        ]);

        return $validate;
    }

    public function register(Request $request)
    {
        
        
        $this->validator($request->all())->validate();

        $general = GeneralSetting::first();

        if ($general->secure_password) {
            $notify = $this->strongPassCheck($request->password);
            if ($notify) {
                return back()->withNotify($notify)->withInput($request->all());
            }
        }

        $exist = User::where('mobile', $request->country_code . $request->mobile)->first();
        if ($exist) {
            $notify[] = ['error', 'Mobile number already exist'];
            return back()->withNotify($notify)->withInput();
        }

        if (isset($request->captcha)) {
            if (!captchaVerify($request->captcha, $request->captcha_secret)) {
                $notify[] = ['error', "Invalid Captcha"];
                return back()->withNotify($notify)->withInput();
            }
        }

        event(new Registered($user = $this->create($request->all())));
        $this->guard('creator')->login($user);

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }


    protected function create(array $data)
    {

        
        $gnl = GeneralSetting::first();

        $content_creator = new ContentCreator();

        $content_creator->first_name = $data['firstname'];
        $content_creator->last_name = $data['lastname'];
        $content_creator->email = strtolower(trim($data['email']));
        $content_creator->password = bcrypt($data['password']);
        $content_creator->username = trim($data['username']);
        $content_creator->mobile = $data['country_code'] . $data['mobile'];
        $content_creator->address = [
            'address' => '',
            'state' => '',
            'zip' => '',
            'country' => isset($data['country']) ? $data['country'] : null,
            'city' => ''
        ];
        $content_creator->status = 1;
        $content_creator->ev = $gnl->ev ? 0 : 1;
        $content_creator->sv = $gnl->sv ? 0 : 1;
        $content_creator->ts = 0;
        $content_creator->tv = 1;
        $content_creator->user_type = $data['user_type'];
        $content_creator->payment_type = isset($data['payment_type']) ? $data['payment_type'] : null;

        
        $content_creator->save();


        $adminNotification = new AdminNotification();
        $adminNotification->user_id = $content_creator->id;
        $adminNotification->title = 'New Creator registered';
        $adminNotification->click_url = route('admin.creator.detail', $content_creator->id);
        $adminNotification->save();

       

        //Login Log Create
        $ip = $_SERVER["REMOTE_ADDR"];
        $exist = CreatorLogin::where('user_ip', $ip)->first();
        $userLogin = new CreatorLogin();

        //Check exist or not
        if ($exist) {
            $userLogin->longitude =  $exist->longitude;
            $userLogin->latitude =  $exist->latitude;
            $userLogin->location =  $exist->location;
            $userLogin->country_code = $exist->country_code;
            $userLogin->country =  $exist->country;
        } else {
            $info = json_decode(json_encode(getIpInfo()), true);
            $userLogin->longitude =  @implode(',', $info['long']);
            $userLogin->latitude =  @implode(',', $info['lat']);
            $userLogin->location =  @implode(',', $info['city']) . (" - " . @implode(',', $info['area']) . "- ") . @implode(',', $info['country']) . (" - " . @implode(',', $info['code']) . " ");
            $userLogin->country_code = @implode(',', $info['code']);
            $userLogin->country =  @implode(',', $info['country']);
        }

        $userAgent = osBrowser();
        $userLogin->user_id = $content_creator->id;
        $userLogin->user_ip =  $ip;

        $userLogin->browser = @$userAgent['browser'];
        $userLogin->os = @$userAgent['os_platform'];
        $userLogin->save();


        return $content_creator;
    }

    protected function strongPassCheck($password)
    {
        $password = $password;
        $capital = '/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/';
        $capital = preg_match($capital, $password);
        $notify = null;
        if (!$capital) {
            $notify[] = ['error', 'Minimum 1 capital word is required'];
        }
        $number = '/[123456790]/';
        $number = preg_match($number, $password);
        if (!$number) {
            $notify[] = ['error', 'Minimum 1 number is required'];
        }
        $special = '/[`!@#$%^&*()_+\-=\[\]{};:"\\|,.<>\/?~\']/';
        $special = preg_match($special, $password);
        if (!$special) {
            $notify[] = ['error', 'Minimum 1 special character is required'];
        }
        return $notify;
    }

    public function registered()
    {
        return redirect()->route('creator.home');
    }
}
