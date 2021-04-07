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
                        <form action="" method="POST" enctype="multipart/form-data">
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
                                <label for="">Goal</label>
                                <input type="text" class="form-control" name="goal">
                             </div>
                            <div class="form-group">
                                <label for="">Brand Image</label>
                                <input type="file" name="image" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Collective Type</label>
                                <select name="type" id="" class="form-control">
                                    <option value="open source">Open Source</option>
                                    <option value="paid">Paid</option>
                                </select>
                            </div>

                            <div class="form-group">
                                
                                <button type="submit" class="btn btn-info">Create Collectives</button>
                            </div>

                        </form>
                    </div>
                </div>

            </div>

            <div class="col-md-8">
                <div class="card">
                    <div class="card-header"></div>
                    <div class="card-body"></div>
                </div>
            </div>
        </div>
    </div>


@endsection
