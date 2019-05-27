@extends('frontend2.layouts.app')

@section('banner')
<div style="height:200px"></div>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
{{--  ============ Side search ==========================  --}}
            <div class="col-md-3" style="background:#c7c7ce">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Content</p>
                        <h2>xxxxxxxxxx</h2>
                        <h2>xxxxxxxxxx</h2>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Content</p>
                        <h2>xxxxxxxxxx</h2>
                        <h2>xxxxxxxxxx</h2>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Content</p>
                        <h2>xxxxxxxxxx</h2>
                        <h2>xxxxxxxxxx</h2>
                    </div>
                </div>
            </div>
{{--  ============// Side search ==========================  --}}

{{--  ============ Main adda==========================  --}}
            <div class="col-md-7" style="background:#c7c7ce">

                <div class="card mb-3" style="max-width: 700px;">
                    <div class="row no-gutters">
                        <a href="{{url('cat/1')}}">
                        <div class="col-md-6">
                                <!-- Carousel Card -->
                                <div class="card-img card-raised card-carousel">
                                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                                    
                                    <ol class="carousel-indicators">
                                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>

                                    <div class="carousel-inner">
                                      <div class="carousel-item active">
                                        <img class="d-block w-100 " src="{{asset('/')}}frontend/img/product01.jpg" alt="First slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Second slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Third slide">
                                      </div>

                                    </div>

                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                      <i class="material-icons">keyboard_arrow_left</i>
                                      <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                      <i class="material-icons">keyboard_arrow_right</i>
                                      <span class="sr-only">Next</span>
                                    </a>
                                  </div>
                                </div>
                                <!-- End Carousel Card -->
                        </div>
                        </a>
                        
                        <div class="col-md-6">
                            <a href="{{url('cat/1')}}">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </a>
                        </div>
                        
                    </div>
                </div>
                
                
                
                
                <div class="card mb-3" style="max-width: 700px;">
                    <div class="row no-gutters">

                        <div class="col-md-6">
                                <!-- Carousel Card -->
                                <div class="card-img card-raised card-carousel">
                                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                                    
                                    <ol class="carousel-indicators">
                                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>

                                    <div class="carousel-inner">
                                      <div class="carousel-item active">
                                        <img class="d-block w-100 " src="{{asset('/')}}frontend/img/product01.jpg" alt="First slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Second slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Third slide">
                                      </div>

                                    </div>

                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                      <i class="material-icons">keyboard_arrow_left</i>
                                      <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                      <i class="material-icons">keyboard_arrow_right</i>
                                      <span class="sr-only">Next</span>
                                    </a>
                                  </div>
                                </div>
                                <!-- End Carousel Card -->
                        </div>

                        <div class="col-md-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="card mb-3" style="max-width: 700px;">
                    <div class="row no-gutters">

                        <div class="col-md-6">
                                <!-- Carousel Card -->
                                <div class="card-img card-raised card-carousel">
                                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                                    
                                    <ol class="carousel-indicators">
                                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>

                                    <div class="carousel-inner">
                                      <div class="carousel-item active">
                                        <img class="d-block w-100 " src="{{asset('/')}}frontend/img/product01.jpg" alt="First slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Second slide">
                                      </div>

                                      <div class="carousel-item">
                                        <img class="d-block w-100" src="{{asset('/')}}frontend/img/product01.jpg" alt="Third slide">
                                      </div>

                                    </div>

                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                      <i class="material-icons">keyboard_arrow_left</i>
                                      <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                      <i class="material-icons">keyboard_arrow_right</i>
                                      <span class="sr-only">Next</span>
                                    </a>
                                  </div>
                                </div>
                                <!-- End Carousel Card -->
                        </div>

                        <div class="col-md-6">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                        </div>
                    </div>
                </div>



            </div>
{{--  ============// Main adda==========================  --}}

            <div class="col-md-2" style="background:purple">

            </div>
        </div>
    </div>
@endsection