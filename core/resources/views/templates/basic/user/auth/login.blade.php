@extends($activeTemplate.$active_landing)

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">@lang('Login')</div>

                    <div class="card-body">
                        <form method="POST" action="{{route('user.login')}}"
                              onsubmit="return submitUserForm();">
                            @csrf

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">@lang('Username & Email')</label>
                                <div class="col-md-6">
                                    <input type="text" name="username" value="{{ old('username') }}" placeholder="@lang('Username & Email')" class="form-control" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Login As') }}</label>
    
                                <div class="col-md-6">
                                    <select name="" id="" class="form-control user-type">
                                        <option value="1">User</option>
                                        <option value="2">Content Creator</option>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" required autocomplete="current-password" required>
                                </div>
                            </div>
                            <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                    <label class="form-check-label" for="remember">
                                        @lang('Remember Me')
                                    </label>
                                </div>
                            </div>
                        </div>

                            <div class="form-group row">
                                <div class="col-md-4 ">
                                </div>
                                <div class="col-md-6 ">
                                    @php echo loadReCaptcha() @endphp
                                </div>
                            </div>
                            @include($activeTemplate.'partials.custom-captcha')


                            <div class="form-group row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" id="recaptcha" class="btn btn-primary">
                                        @lang('Login')
                                    </button>
                                </div>

                                <div class="col-md-12">
                                    <a class="btn btn-link register" href="{{route('user.register')}}">
                                        @lang('Create an account')
                                    </a>

                                    <a class="btn btn-link float-right forgot" href="{{route('user.password.request')}}">
                                        @lang('Forgot Your Password?')
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script>
        "use strict";
        function submitUserForm() {
            var response = grecaptcha.getResponse();
            if (response.length == 0) {
                document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">@lang("Captcha field is required.")</span>';
                return false;
            }
            return true;
        }
        function verifyCaptcha() {
            document.getElementById('g-recaptcha-error').innerHTML = '';
        }

        var urlCreator = "{{route('creator.login')}}"; 
        var urlLogin = "{{route('user.login')}}";
        var forgotUser = "{{route('user.password.request')}}"; 
        var forgotCreator = "{{route('creator.password.request')}}"; 
        var registerCreator = "{{route('creator.register')}}"; 
        var registerUser = "{{route('user.register')}}"; 

        $(function(){
            $('.user-type').on('change',function(){
                if($(this).val() == 1){
                    $('.forgot').attr('href',forgotUser);
                    $('.register').attr('href',registerUser);
                    $('form').attr('action',urlLogin);
                }else if($(this).val() == 2){
                    $('.forgot').attr('href',forgotCreator);
                    $('.register').attr('href',registerCreator);
                    $('form').attr('action',urlCreator);
                }
            })
        })
    </script>
@endpush
