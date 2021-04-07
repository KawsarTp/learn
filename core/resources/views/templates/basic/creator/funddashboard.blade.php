@extends($activeTemplate.$active_landing)

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <a class="btn btn-primary mt-2" href="{{route('creator.collective')}}">Create Collectives</a>
        </div>
    </div>

    <div class="row mt-4">
        @forelse ($collectives as $collect)
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <img src="{{getImage('assets/images/collective/'.$collect->image)}}" alt="" style="width: 50px">
                        <div>
                            <a href="{{route('creator.collective.details',['id'=>$collect,'slug'=>slug($collect->name)])}}" class="btn btn-warning">Edit</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <p>{{$collect->name}}</p>
                        <p>{{$collect->description}}</p>
                        <a href="{{route('creator.collective.sponsor',$collect->id)}}" class="btn btn-primary">Create Sponsor Plan</a>
                    </div>
                </div>
            </div>
                @foreach ($collect->collective_sponsors as $sponsor)
                    
                <div class="col-md-4 mt-5">
                    <div class="card">
                        <div class="card-header bg-info">
                            <p class="text-white">{{$sponsor->name}}</p>
                        </div>
                        <div class="card-body">
                            <p>{{$sponsor->details}}</p>
                            <p>Sponsorship Price {{getAmount($sponsor->price).' '. $general->cur_text.' / '.($sponsor->duration == 1 ? 'One time':($sponsor->duration == 2 ? 'Monthly' : ($sponsor->duration == 3 ? 'Yearly':'') ))}}</p>
                        </div>
                    </div>
                </div>
                @endforeach
        @empty
            
        @endforelse
    </div>
</div>


@endsection