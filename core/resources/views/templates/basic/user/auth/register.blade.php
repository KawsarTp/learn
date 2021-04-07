@extends($activeTemplate.$active_landing)
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">@lang('Register')</div>

                    <div class="card-body">
                        <form action="{{ route('user.register') }}" method="POST" onsubmit="return submitUserForm();">
                            @csrf


                            <div class="form-group row">
                                <label for="firstname" class="col-md-4 col-form-label text-md-right">@lang('First Name')</label>
                                <div class="col-md-6">
                                    <input id="firstname" type="text" class="form-control" name="firstname" value="{{ old('firstname') }}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="lastname" class="col-md-4 col-form-label text-md-right">@lang('Last Name')</label>
                                <div class="col-md-6">
                                    <input id="lastname" type="text" class="form-control" name="lastname" value="{{ old('lastname	') }}" required>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('Username') }}</label>
                                <div class="col-md-6">
                                    <input id="username" type="text" class="form-control" name="username" value="{{ old('username') }}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('Register As') }}</label>
                                <div class="col-md-6">
                                    <select name="reg_user_type" class="form-control">
                                        <option value="1">User</option>
                                        <option value="2">Content Creator</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row user_type d-none">
                                <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('Content Creator Type') }}</label>
                                <div class="col-md-6">
                                    <select name="user_type" class="form-control">
                                        <option value="">select Creator Type</option>
                                        <option value="1">Content Creator</option>
                                        <option value="2">Fund Raiser</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row content-creator-type">
                               
                            </div>

                            <div class="row">

                                <label for="mobile" class="col-md-4 col-form-label text-md-right">@lang('Mobile')</label>
                                <div class="col-md-6">

                                    <div class="form-group country-code">

                                        <div class="input-group ">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <select name="country_code">
                                                        @include('partials.country_code')
                                                    </select>
                                                </span>
                                            </div>
                                            <input type="text" name="mobile" class="form-control" placeholder="@lang('Your Phone Number')">
                                        </div>
                                    </div>

                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">@lang('Country')</label>
                                <div class="col-md-6">
                                    <input type="text" name="country" class="form-control" readonly>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">@lang('E-Mail Address')</label>
                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">@lang('Password')</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" required autocomplete="new-password">
                                    @if($general->secure_password)
                                    <div class="progress mt-2">
                                      <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <p class="text-danger my-1 capital">@lang('Minimum 1 capital letter is required')</p>
                                    <p class="text-danger my-1 number">@lang('Minimum 1 number is required')</p>
                                    <p class="text-danger my-1 special">@lang('Minimum 1 special character is required')</p>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password-confirm" class="col-md-4 col-form-label text-md-right">@lang('Confirm Password')</label>

                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
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
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" id="recaptcha" class="btn btn-primary">
                                        @lang('Register')
                                    </button>
                                </div>

                                <div class="col-md-12">
                                    <a class="btn btn-link" href="{{route('user.login')}}">
                                        @lang('Already Have an account')
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
@push('style')
<style type="text/css">
    .country-code .input-group-prepend .input-group-text{
        background: #fff !important;
    }
    .country-code select{
        border: none;
    }
    .country-code select:focus{
        border: none;
        outline: none;
    }
</style>
@endpush
@push('script')
    <script>
      "use strict";
      @if($country_code)
        $(`option[data-code={{ $country_code }}]`).attr('selected','');
      @endif
        $('select[name=country_code]').change(function(){
            $('input[name=country]').val($('select[name=country_code] :selected').data('country'));
        }).change();
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
        @if($general->secure_password)
            $('input[name=password]').on('input',function(){
                var password = $(this).val();
                var width = 25;
                var capital = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/;
                var capital = capital.test(password);
                if (!capital){
                    $('.capital').removeClass('d-none');
                }else{
                    width += 25;
                    $('.capital').addClass('d-none');
                }
                var number = /[123456790]/;
                var number = number.test(password);
                if (!number){
                    $('.number').removeClass('d-none');
                }else{
                    width += 25;
                    $('.number').addClass('d-none');
                }
                var special = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
                var special = special.test(password);
                if (!special){
                    $('.special').removeClass('d-none');
                }else{
                    width += 25;
                    $('.special').addClass('d-none');
                }

                if (width == 25) {
                    var bg = 'red';
                    var msg = 'Too Week'
                }else if(width == 50){
                    var msg = 'Week'
                    var bg = '#D7A612';
                }else if(width == 75){
                    var msg = 'Medium'
                    var bg = '#5210BF';
                }else if(width == 100){
                    var msg = 'Strong'
                    var bg = 'green';
                }
                $('.progress-bar').attr('style',`width:${width}%;background:${bg};`);
                $('.progress-bar').text(msg);
            });
        @endif


        $('select[name=user_type]').on('change',function(){
            if($(this).val() == 1){
            $('.content-creator-type').html(`
            
                 <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('Content Creator Type') }}</label>
                                <div class="col-md-6">
                                    <select name="payment_type" class="form-control">
                                        <option value="1">Payment Per Post</option>
                                        <option value="2">Subscription</option>
                                    </select>
                                </div>
            
            `);
            }else{
                $('.content-creator-type').html(``);
            }
        })

        var userRegister = "{{route('user.register')}}";
        var creatorRegister = "{{route('creator.register')}}";

        $('select[name=reg_user_type]').on('change',function(){
           
            if($(this).val() == 1){
                $('.user_type').addClass('d-none');
                $('form').attr('action',userRegister);

            } else if($(this).val() == 2){
                $('.user_type').removeClass('d-none');
                $('form').attr('action',creatorRegister);
            }
        })

    </script>
@endpush
