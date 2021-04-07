
@extends($activeTemplate.$active_landing)
@section('content')

@if($general->active_landing == 2)

@php
	$blogs = getContent('blog.element');
@endphp
<section class="mt-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12">
				<h2 class="text-center">Blogs</h2>
				<hr class="mb-5">
			</div>
		</div>
		<div class="row justify-content-center">
			@foreach($blogs as $blog)
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<a href="{{ route('blog.details',[$blog->id,str_slug($blog->data_values->title)]) }}">
								<img src="{{ getImage('assets/images/frontend/blog/'.$blog->data_values->blog_image_1,'728x465') }}" class="w-100">
							</a>
							<h4 class="mt-2 text-center"> <a href="{{ route('blog.details',[$blog->id,str_slug($blog->data_values->title)]) }}"> {{ $blog->data_values->title }}</a></h4>
						</div>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</section>

    @if($sections->secs != null)
        @foreach(json_decode($sections->secs) as $sec)
            @include($activeTemplate.'sections.'.$sec)
        @endforeach
    @endif


@else


	


<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="row mt-4">
				@forelse ($posts as $post)
					@if(isset($followList))
						@if(!in_array($post->content_creator_id, $followList->toArray()) && $post->content_creator_id != auth()->guard('creator')->id() && $post->privacy == 1)
							@continue
						@endif
					@endif
					<div class="col-md-12 mb-5">
						<div class="card">
							<div class="card-header d-flex align-items-end">
								<img src="{{getImage(imagePath()['profile']['creator']['path'].'/'.$post->content_creator->image,'60x60')}}" class="img-fluid rounded" alt="">
								<p class="ml-5">{{'@'.$post->content_creator->username}}</p>
							</div>
							@php
								$unlock = null;
								if(isset($user)){

									$unlock = $post->post_purchage->where('unlocker_id',$user->id)->first();
								}
							@endphp
							<div class="card-body">
								@if(!in_array($post->privacy,[2,3]) || $post->content_creator_id == auth()->guard('creator')->id() || $unlock)
								<div>
									@if($post->image != null)
										<img src="{{getImage(imagePath()['post_file']['path'].'/'.$post->image,'200x100')}}" alt="" class="w-100">
									@endif
										<p class="mt-2">
											<strong>{{'@'.$post->content_creator->username}}</strong>
											{{__($post->description)}}
										</p>
								</div>
								@elseif($post->privacy == 3 )
									
									<div class="text-center p-0 m-0">
										<p>@lang('It Cost')</p>
										<p>{{$general->cur_sym .' '. getAmount($post->price)}}</p>
										<p>@lang('To Unlock This Post')</p>
										<p><a href="{{route('premium.unlock',$post->id)}}" class="btn btn-secondary"> <i class="fa fa-lock"></i> @lang('Unlock')</a></p>
									</div>

								@endif
								
							</div>
							<div class="card-footer d-flex justify-content-between">
							
								@if(isset($reaction))

								@if(in_array($post->id, $reaction))
								<div>
									<form action="{{route('unlike',$post->id)}}" method="POST">
									  @csrf	
									  <button style="border:none"><i class="las la-heart" style="color:red;font-size:30px"></i> <span class="badge badge-sm badge-light">{{$post->reaction_count}}</span></button>
									</form>
								</div>
								@else
									<div>
										<form action="{{route('reaction',$post->id)}}" method="POST">
										@csrf	
										<button style="border:none"><i class="lar la-heart" style="color:red;font-size:30px"></i> <span class="badge badge-sm badge-light">{{$post->reaction_count}}</span></button>
										</form>
									</div>
								@endif

								@else
									<div>
										<form action="{{route('reaction',$post->id)}}" method="POST">
										@csrf	
										<button style="border:none"><i class="lar la-heart" style="font-size:30px"></i> <span class="badge badge-sm badge-light">{{$post->reaction_count}}</span></button>
										</form>
									</div>
								@endif
								
								<div>
									  <a href="javascript:void(0)" data-class="comment-sec-{{$loop->iteration}}" class="comment"><i class="lar la-comment" style="font-size:30px"></i> <span class="badge badge-seconday">{{$post->comments_count}}</span></a>
									
								</div>
								<div>
									<form action="" method="POST">
									  @csrf	
									  <button style="border:none;font-size:30px"><i class="las la-redo"></i></button>
									</form>
								</div>

							</div>
					@if(auth()->check() || auth()->guard('creator')->check())
						 @forelse ($post->comments as $comment)
							<div class="card-footer">
								<div class="">
									
									<p>
										<strong>{{'@'.$comment->model::find($comment->user_id)->username}} </strong>
										{{$comment->details}}
									</p>
								</div>

								<div class="d-flex justify-content-between">
									
									@if(isset($commentRec))

										@if(in_array($comment->id, $commentRec))
											
											<form action="{{route('comment_reaction_remove',[$post->id,$comment->id])}}" method="POST">
												@csrf	
												<button style="border:none"><i class="las la-heart" style="color:red;font-size:30px"></i> <span class="badge badge-sm badge-light">{{$comment->comment_react->count()}}</span></button>
											</form>
										@else
											<form action="{{route('comment_reaction',[$post->id,$comment->id])}}" method="POST">
												@csrf	
												<button style="border:none"><i class="lar la-heart" style="font-size:30px"></i> <span class="badge badge-sm badge-light">{{$comment->comment_react->count()}}</span></button>
											</form>

											
										@endif
									@else

										<form action="{{route('comment_reaction',[$post->id,$comment->id])}}" method="POST">
											@csrf	
											<button style="border:none"><i class="lar la-heart" style="font-size:30px"></i> <span class="badge badge-sm badge-light">{{$comment->comment_react->count()}}</span></button>
										</form>

									@endif
								</div>

							</div>
						 @empty
							 
						 @endforelse
					@endif
							

							@if(auth()->check() || auth()->guard('creator')->check())
							<div class="card-footer comment-sec-{{$loop->iteration}} d-none">
								<form action="{{route('comment',$post->id)}}" method="POST">
									@csrf
									<div class="form-group">
										<label for="">Write A comment</label>
										<textarea name="comment" rows="3" placeholder="Write Comment Here" class="form-control"></textarea>
									</div>

									<div class="form-group">
										<input type="submit" class="form-control bg-primary text-white" value="Post A comment">
									</div>
								</form>
							</div>
							@else
							<div class="card-footer comment-sec-{{$loop->iteration}} d-none">
								<div class="text-center">
									<p>You must be logged in to write a comment.</p>
								</div>
							</div>
							@endif
						</div>
					</div>

				@empty
					
				@endforelse
				
			</div>
			
		</div>

		<div class="col-md-4 mt-5">
			
			<div class="card">
				<div class="card-header">
					<h3>Top Content Creator</h3>
				</div>
				<div class="card-body">
					@forelse ($top_creators as $top)
						<div class="d-flex justify-content-between mb-4">
							<div>
								<p>{{$top->content_creator->username}}</p>
							</div>
							@if($top->content_creator_id != auth()->guard('creator')->id())
							<div>
								@if(auth()->check() || auth()->guard('creator')->check())
								 	@if(in_array($top->content_creator_id, $followList->toArray()))
									<form action="{{route('unfollow',$top->content_creator_id)}}" method="POST">
										@csrf
										<button type="submit" class="btn btn-danger">Unfollow</button>
									</form>
									@else
									<form action="{{route('follow',$top->content_creator_id)}}" method="POST">
										@csrf
										<button type="submit" class="btn btn-primary">follow</button>
									</form>
									@endif
								@else
									<form action="{{route('follow',$top->content_creator_id)}}" method="POST">
										@csrf
										<button type="submit" class="btn btn-primary">Follow</button>
									</form>

								@endif
							</div>
							@endif
						</div>
					@empty
						
					@endforelse
					
				</div>
			</div>
		</div>
	</div>
</div>







@endif
@endsection

@push('script')
	<script>
		$(function(){
			$('.comment').on('click',function(){
				var className = $(this).data('class');
				$('.'+ className).toggleClass('d-none');
			})
		})
	</script>
@endpush