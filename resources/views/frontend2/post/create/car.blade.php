@extends('frontend2.layouts.app')

@section('banner')
<div style="height:200px"></div>
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            {{-- ======body type========== --}}
            <div class="card">
                <div class="card-body">
                    <li class="dropdown nav-item  nav-link ">

                        <a href="#" class="dropdown-toggle btn btn-primary " data-toggle="dropdown">
                            <i class="fa fa-car" aria-hidden="true"></i> Select body type
                            <div class="ripple-container"></div>
                        </a>
        
                        <div class="dropdown-menu dropdown-with-icons">
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/convertible.jpg" alt="" height="100"> convertible
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/coupe.jpg" alt="" height="100"> coupe
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/crossover.jpg" alt="" height="100"> suv/crossover
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/hatchback.jpg" alt="" height="100"> hatchbacks
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/limousine.jpg" alt="" height="100"> limousine
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/mini-bus.png" alt="" height="100"> mini-bus
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/micro-bus.png" alt="" height="100"> micro-bus
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/minivan.jpg" alt="" height="100"> minivan
                            </a>
                            
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/pickup-trucks.svg" alt="" height="100">pickup-trucks
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/sedan.jpg" alt="" height="100"> sedan
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/semi-truck.jpg" alt="" height="100"> semi-truck
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/sports-cars.svg" alt="" height="100"> sports-cars
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/truck.jpg" alt="" height="100"> truck
                            </a>
                            <a href="" class="dropdown-item">
                                <img class=" material-icons" src="{{asset('/')}}frontend/carbody/wagons.svg" alt="" height="100"> wagons
                            </a>
                            

                            
                        </div>

                    </li>
                </div>
            </div>
            {{-- ======body type========== --}}
           <form action="" method="post">
            
            
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Title</h5>

                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fa fa-car" aria-hidden="true"></i>
                        </span>
                        </div>
                        <input type="text" class="form-control" placeholder="body type">
                    </div>
                    </div>

                    {{-- =======Make========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Make</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Model========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Model</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Version========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Version</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Transmission========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Transmission</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    
                    {{-- =======Mileage========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Mileage</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Exterior Color========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Exterior Color</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Interior Color========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Interior Color</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Number of Doors========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Number of Doors</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Engine Cylinder========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Engine Cylinder</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Drive Type========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Drive Type</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>
                    {{-- =======Fuel Type========== --}}
                    <div class="form-group bmd-form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="material-icons">group</i>
                        </span>
                        </div>
                        <select id="my-select" class="form-control" name="">
                            <option>Fuel Type</option>
                            <option>bmw</option>
                            <option>bmw</option>
                        </select>
                    </div>
                    </div>

                </div>
            </div>
            
            
           </form>

        </div>
    </div>
</div>
@endsection