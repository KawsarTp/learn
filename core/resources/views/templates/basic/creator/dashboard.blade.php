@extends($activeTemplate.'layouts.creator')

@section('content')

    <div class="container" style="padding-top:50px">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">@lang('Write A Content')</div>
                    <div class="card-body">
                        <form action="{{ route('creator.content.post') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group ">
                               
                                <textarea name="message" id="" cols="30" rows="5" class="form-control"></textarea>
                                <div class="message-sec form-group">

                                </div>
                                <div class="prev-image mt-4">
                                    <img src="" alt="" id="prev" class="w-100">
                                </div>
                            </div>

                            <div class="form-group d-flex justify-content-between">
                                <div class="photo">
                                    <input type="file" class="form-control" name="file" id="imgInp">
                                </div>
                                <div class="dropdown ml-2">
                                    <select name="privacy" id="" class="form-control">
                                        <option value="0">EveryOne</option>
                                        <option value="1">Followers</option>
                                        @if(auth()->guard('creator')->user()->payment_type == 2)
                                        <option value="2">Subscribers</option>
                                        @elseif(auth()->guard('creator')->user()->payment_type == 1)
                                        <option value="3">Premium</option>
                                        @endif
                                    </select>
                                </div>
                                <div class="submit-button ml-3">
                                    <button type="submit" class="btn btn-primary">@lang('Publish')</button>
                                </div>
                            </div>


                        </form>
                    </div>
                </div>

                @forelse ($posts as $post)
                    <div class="card mt-2  mb-4">
                        <div class="card-header ">
                            <p>
                                {{auth()->guard('creator')->user()->fullname}}

                            </p>
                            <p>
                                {{$post->created_at->diffforhumans()}}
                            </p>
                            <p>
                                <span class="badge {{$post->approval_status ? 'badge-success' : 'badge-danger'}}">{{$post->approval_status ? 'Approved' : 'Waiting For Approval'}}</span>
                            </p>
                        </div>
                        <div class="card-body">
                            
                            <p>{{$post->description}}</p>
                            @if($post->image != null)
                            <img src="{{getImage(imagePath()['post_file']['path'].'/'.$post->image,'100x100')}}" alt="" class="w-100">
                            @endif
                        </div>

                        <div class="card-footer">

                        </div>
                    </div>
                @empty
                    
                @endforelse
                <div >

                </div>
            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>

@endsection


@push('style')
    <style>
        .emoji {
            color: transparent;
            display: inline-block;
            font-size: 18px;
            font-style: normal;
            height: 25px;
            width: 25px;
        }

        .emoji::selection {
            background-color: highlight;
            color: transparent;
        }

        .emoji-image {
            font-size: 14px;
            line-height: 28px;
        }

        .emoji-button {
            cursor: pointer;
            margin: 5px;
        }

        .emoji-editor {
            -moz-appearance: textfield-multiline;
            -webkit-appearance: textarea;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
            cursor: text;
            font: medium -moz-fixed;
            font: -webkit-small-control;
            -webkit-font-smoothing: antialiased;
            height: 100px;
            overflow: auto;
            padding: 5px;
            resize: both;
            width: 100%;
        }

        .emoji-picker {
            background-color: #fff;
            border: 1px solid #ccc;
            position: absolute;
            width: 210px;
        }

        .emoji-picker a {
            cursor: pointer;
            display: inline-block;
            font-size: 20px;
            padding: 3px;
        }

        .emoji-selector {
            border-bottom: 1px solid #ccc;
            display: flex;
        }

        .emoji-selector li {
            margin: 5px;
        }

        .emoji-group {
            display: <a href="https://www.jqueryscript.net/tags.php?/grid/">grid</a>;
            grid-template-columns: repeat(6, 16.66667%);
            height: 200px;
            overflow-y: scroll;
            padding: 3px;
        }

    </style>
@endpush
@push('script-lib')
    <script src="{{ asset($activeTemplateTrue . 'js/jquery.emojiarea.js') }}"></script>
@endpush
@push('script')
 <script>
    function showImagePreview(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();

              reader.onload = function (e) {
                  $('#prev').attr('src', e.target.result);
              }

              reader.readAsDataURL(input.files[0]);
          }
      }

        $("#imgInp").change(function(){
          showImagePreview(this);
        });

        $('select[name=privacy]').on('change',function(){
            if($(this).val()  == 3){
                $('.message-sec').html(`
                
                    <input type="text" name="price" id="" class="form-control mt-2" placeholder="@lang('price')">
                
                `);
            }else{
                $('.message-sec').html('');
            }         
        })
 </script>
@endpush
