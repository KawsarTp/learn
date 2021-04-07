<!doctype html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @include('partials.seo')
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset($activeTemplateTrue.'css/bootstrap.min.css')}}">


    <link rel="stylesheet" href="{{asset($activeTemplateTrue.'/css/bootstrap-fileinput.css')}}">
    @stack('style-lib')

    @stack('style')
</head>
<body>

@php echo loadFbComment() @endphp

<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{__($general->sitename)}}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">

            </ul>
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">


                <li class="nav-item">
                    <a href="{{route('home')}}"  class="nav-link">{{__('Home')}}</a>
                </li>
                @foreach($pages as $k => $data)
                    <li class="nav-item"><a href="{{route('pages',[$data->slug])}}"  class="nav-link">{{__($data->name)}}</a></li>
                @endforeach



                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact') }}">@lang('contact')</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.login') }}">@lang('login')</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.register') }}">@lang('register')</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('creator.register') }}">@lang('Become A Creator')</a>
                    </li>
                @endguest

                @auth

                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> {{ Auth::user()->fullname }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('user.logout') }}">
                                @lang('Logout')
                            </a>
                        </div>
                    </li>
                @endauth



                    <select class="langSel form-control" >
                        <option value="">@lang('Select One')</option>
                        @foreach($language as $item)
                            <option value="{{$item->code}}" @if(session('lang') == $item->code) selected  @endif>{{ __($item->name) }}</option>
                        @endforeach
                    </select>

            </ul>
        </div>
    </div>
</nav>


@yield('content')



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="{{asset($activeTemplateTrue.'js/jquery-3.5.1.min.js')}}"></script>
<script src="{{asset($activeTemplateTrue.'js/bootstrap.bundle.min.js')}}"></script>

@stack('script-lib')

@stack('script')

@include('partials.plugins')

@include('admin.partials.notify')


<script>
    (function ($) {
        "use strict";
        $(document).on("change", ".langSel", function() {
            window.location.href = "{{url('/')}}/change/"+$(this).val() ;
        });
    })(jQuery);
</script>

</body>
</html>