@extends($activeTemplate.$active_landing)

@section('content')


<div class="container mt-3">
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h3>Create your Sponsor Plan</h3>
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
                           <label for="">Price</label>
                           <input type="text" class="form-control" name="price">
                        </div>


                        <div class="form-group">
                            <label for="">Duration</label>
                            <select name="duration" id=""  class="form-control">
                                <option value="1">One Time Payment</option>
                                <option value="2">Monthly Payment</option>
                                <option value="3">Yearly Payment</option>
                            </select>
                        </div>

                        <div class="form-group">
                            
                            <button type="submit" class="btn btn-info">Create Sponsor</button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>



@endsection