@extends($activeTemplate.'layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <a class="btn btn-primary mt-2" href="{{route('creator.collective')}}">Create Collectives</a>
        </div>
    </div>

    <div class="row mt-4">
        @forelse ($collectives as $collect)
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        @if($collect->interval == 1)
                            <span class="badge badge-primary">One Time Payment</span>
                            
                        @elseif($collect->interval == 2)
                            <span class="badge badge-primary">Monthly Payment</span>
                        @elseif($collect->interval == 3)
                            <span class="badge badge-primary">Yearly Payment</span>
                        @endif

                        <a href="{{route('creator.collective.details',['id'=>$collect,'slug'=>slug($collect->name)])}}" class="btn btn-warning">Edit</a>
                    </div>
                    <div class="card-body">
                        <p>{{$collect->name}}</p>
                        <p>{{$collect->description}}</p>

                        <p>Starts At : {{$collect->amount}}</p>

                    </div>
                </div>
            </div>
        @empty
            
        @endforelse
    </div>
</div>


@endsection