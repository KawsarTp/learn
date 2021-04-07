<!doctype html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


@include('partials.seo')



<link rel="stylesheet" href="{{asset($activeTemplateTrue.'css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset($activeTemplateTrue.'/css/bootstrap-fileinput.css')}}">
   @stack('style-lib')

    @stack('style')
</head>
<body>


<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{__($general->sitename)}}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="@lang('Toggle navigation')">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">

            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">



                <select class="langSel form-control" >
                    <option value="">@lang('Select One')</option>
                    @foreach($language as $item)
                        <option value="{{$item->code}}" @if(session('lang') == $item->code) selected  @endif>{{ __($item->name) }}</option>
                    @endforeach
                </select>


            
            @guest('creator')
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact') }}">@lang('contact')</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.login') }}">@lang('login')</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.register') }}">@lang('register')</a>
                    </li>
                @endguest

                @auth('creator')
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            @lang('ticket') <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('ticket.open')}}">@lang('Create New')</a>
                            <a class="dropdown-item" href="{{route('ticket')}}">@lang('My Ticket')</a>
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            @lang('Deposit') <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('deposit')}}">@lang('Deposit Money')</a>
                            <a class="dropdown-item" href="{{route('deposit.history')}}">@lang('Deposit Log')</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            @lang('Withdraw') <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('user.withdraw')}}">@lang('Withdraw Money')</a>
                            <a class="dropdown-item" href="{{route('user.withdraw.history')}}">@lang('Withdraw Log')</a>
                        </div>
                    </li>




                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::guard('creator')->user()->fullname }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('user.change-password') }}">
                                @lang('Change Password')
                            </a>
                            <a class="dropdown-item" href="{{ route('user.profile-setting') }}">
                                @lang('Profile Setting')
                            </a>
                            <a class="dropdown-item" href="{{ route('user.twofactor') }}">
                                @lang('2FA Security')
                            </a>


                            <a class="dropdown-item" href="{{ route('creator.logout') }}">
                                @lang('Logout')
                            </a>

                        </div>
                    </li>
                @endauth

            </ul>
        </div>
    </div>
</nav>


@yield('content')




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="{{asset($activeTemplateTrue.'js/jquery-3.5.1.min.js')}}"></script>
<script src="{{asset($activeTemplateTrue.'js/bootstrap.bundle.min.js')}}"></script>

<script src="{{asset($activeTemplateTrue.'/js/bootstrap-fileinput.js')}}"></script>

@stack('script-lib')



@include('admin.partials.notify')

@include('partials.plugins')


@stack('script')


<script>
    "use strict";
    $(document).on("change", ".langSel", function() {
        window.location.href = "{{url('/')}}/change/"+$(this).val() ;

    });
</script>

</body>
</html>
