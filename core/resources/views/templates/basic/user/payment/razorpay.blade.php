@extends($activeTemplate.'layouts.master')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <img src="{{$deposit->gateway_currency()->methodImage()}}" class="card-img-top" alt="@lang('Image')" class="w-100">
                    </div>
                    <div class="col-md-8">
                        <form action="{{$data->url}}" method="{{$data->method}}">
                            <h3 class="text-center">@lang('Please Pay') {{getAmount($deposit->final_amo)}} {{$deposit->method_currency}}</h3>
                            <h3 class="my-3 text-center">@lang('To Get') {{getAmount($deposit->amount)}}  {{__($general->cur_text)}}</h3>
                            <script src="{{$data->checkout_js}}"
                                    @foreach($data->val as $key=>$value)
                                    data-{{$key}}="{{$value}}"
                                @endforeach >
                            </script>
                            <input type="hidden" custom="{{$data->custom}}" name="hidden">
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
        $(document).ready(function () {
            $('input[type="submit"]').addClass("ml-4 mt-4 btn-custom2 text-center btn-lg");
        })
    </script>
@endpush
