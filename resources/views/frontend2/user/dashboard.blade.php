@extends('frontend2.layouts.app')

@section('banner')
<div style="height:200px"></div>
@endsection


@section('title', app_name() . ' | ' . __('navs.frontend.dashboard') )

@section('content')
    <div class="row mb-12">
        <div class="col">
            <div class="card">
                <div class="card-header card-header-primary text-center">
                    <h4>
                        <i class="fas fa-tachometer-alt"></i> @lang('navs.frontend.dashboard')
                    </h4>
                </div><!--card-header-->

                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 order-2 order-sm-1">
                            {{-- User item start --}}
                            <div class="row">
                                @foreach ($posts as $post)
                                <div class="col-md-4">
                                    {{-- <div class="mb-4"> --}}
                                        <div class="post-slide2">
                                            <div class="post-img">
                                                <a href="#"><img src="{{asset('/')}}frontend/img/product01.jpg" alt=""></a>
                                            </div>
                                            <div class="post-content">
                                                <h3 class="post-title"><a href="#">{{$post->head}}</a></h3>
                                                <p class="post-description"> {{$post->description}} </p>

                                                <ul class="post-bar"><li><i class="fa fa-tachometer"></i>{{$post->mileage}} KM </li></ul>
                                                <a href="#" class="read-more">$ {{$post->price}}</a>
                                                <br>

                                                <a href="{{route('frontend.active-post',['id' => $post->id ])}}"  class="btn btn-round {{$post->active ==0 ? ' ' : 'btn-primary'}} btn-sm" data-toggle="tooltip" data-placement="top" title="" data-container="body" data-original-title="{{$post->active ==0 ? ' Unpublish' : 'Publish'}}"> <i class="material-icons">flag</i></a><div class="ripple-container"></div></a>
                                                <a href="{{route('frontend.edit',['id' => $post->id ])}}"  class="btn btn-round btn-warning btn-sm" data-toggle="tooltip" data-placement="top" title="" data-container="body" data-original-title="Edit"> <i class="material-icons">edit</i></a><div class="ripple-container"></div></a>
                                                <a href="{{route('frontend.delete',['id' => $post->id ])}}"  class="btn btn-round btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="" data-container="body" data-original-title="Delete"> <i class="material-icons">delete</i></a><div class="ripple-container"></div></a>
                                                
                                              

                                            </div>
                                        </div>
                                    {{-- </div> --}}
                                </div><!--col-md-6-->
                                @endforeach

                                <div class="w-100"></div>

                                
                            </div><!--row-->
                        </div><!--col-md-8-->
                    </div><!-- row -->
                </div> <!-- card-body -->
            </div><!-- card -->
        </div><!-- col -->
    </div><!-- row -->
@endsection
