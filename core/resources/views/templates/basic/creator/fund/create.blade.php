@extends($activeTemplate.'layouts.master')

@section('content')


    <div class="container mt-3">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h3>Create your Collective Tier</h3>
                    </div>
                    <div class="card-body">
                        <form action="" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="">Name</label>
                                <input type="text" name="name" id="" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Description</label>
                                <textarea name="description" id="" cols="30" rows="8" class="form-control"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="">Amount</label>
                                <input type="text" name="amount" id="" class="form-control">
                            </div>
                            

                            <div class="form-group">
                                <label for="">Inteval</label>
                                <select name="interval" id="" class="form-control">
                                    <option value="1">One Time</option>
                                    <option value="2">Monthly</option>
                                    <option value="3">Yearly</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="">Goal</label>
                                <input type="text" name="goal" id="" class="form-control">
                            </div>

                            <div class="form-group">
                                
                                <button type="submit" class="btn btn-info">Create Event</button>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>


@endsection
