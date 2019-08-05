@extends('frontend2.layouts.app')

@section('banner')
<div style="height:200px"></div>
@endsection

@section('content')


{{-- =======header===================== --}}
<div class="container-fluid">
  <div class="row">
   <div class="col-md-1 ">
        <button class="btn btn-primary btn-sm ">
            <i class="material-icons">favorite</i> 
            Save
          <div class="ripple-container"></div> 
      </button>
        
   </div>
   
   <div class="col-md-9 text-center">
      <h2 class="title">2019 Toyota Highlander Limited</h2>
   </div>
   <div class="col-md-2 text-right">
      <button class="btn btn-primary btn-sm">privious<div class="ripple-container"></div></button>
      <button class="btn btn-primary btn-sm">Next<div class="ripple-container"></div></button>
   </div>
    
  </div>
  
</div>
{{-- =======header end===================== --}}


<br>

{{-- ======Basics start=========== --}}
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3" style="background:#c7c7ce">

                <p class="text-primary">Sold by: {{$post->user->first_name .' '. $post->user->last_name}}</p>
                <div class="text-primary">
                    <span class="fa fa-star checked "></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    5 (120 Review)
                </div>
                <p class="text-primary">Chicago, IL 60654</p>
                


                <h4 class="title">Basics</h4>
                <ul>
                  <li><h4>Condition: Used</h4></li>
                  <li><h4>Price: $67,888</h4></li>
                  <li><h4>Fuel Type: $67,888</h4></li>
                  <li><h4>Interior Color: $67,888</h4></li>
                  <li><h4>Drivetrain: $67,888</h4></li>
                  <li><h4>Engine: $67,888</h4></li>
                  <li><h4>Mileage: $67,888</h4></li>
                  <li><h4>Exterior Color: $67,888</h4></li>
                  <li><h4>Stock: $67,888</h4></li>
                  <li><h4>Transmission: $67,888</h4></li>
                </ul>
            </div>

{{-- ======Basics end=========== --}}


            <div class="col-md-7">
                <div class="swiper-container gallery-top">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                      
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                  </div>


                  <div class="swiper-container gallery-thumbs">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                    <div class="swiper-slide">
                        <div class="swiper-zoom-container">
                          <img src="https://gaadicdn.com/usedcar_image/gallery/VCC_851965_1_1522909196739_22_649825_8_1522909575.jpg">
                        </div>
                      </div>
                   
                     
                    </div>
                </div>
                {{-- ========slider end ====== --}}
                
            </div>

            <div class="col-md-2">
            </div>

        </div>
    </div>
    <div class="container ">


        <h4 class="title">All Features: </h4>
        <p class="text-info">
            ABS (4-Wheel), | 6-Cyl 3.4 Liter, | Air ConditioningAlarm SystemAM/FM StereoAntilock BrakesAuto 7-Spd PDK ManualBackup CameraBackup CameraBluetoothBluetooth WirelessBose Premium SoundCD/MP3 (Single Disc)Communication ManagementDaytime Running LightsDual Air BagsDual Power SeatsElectromechanical SteeringF&ampHead Curtain Air BagsHeated SeatsHeated SeatsHill Start Assist ControlKeyless EntryKeyless EntryKnee Air BagsLane Departure WarningLeatherLED HeadlampsNavigation SystemNavigation SystemPower Door LocksPower Door LocksPower Driver SeatPower Sun RoofPower WindowsPower WindowsPremium Sound SystemPremium Wheels 19+R Park AssistRear SpoilerRear SpoilerRWDSide Air BagsSiriusXM SatelliteStability ControlStability ControlSunroof/MoonroofTraction ControlTraction ControlTurbocharged
        </p>



        <div class="row">
            <div class="col-md-4">
              <h4 class="title">Safety</h4>
              <ul>
                <li>Backup Camera</li>
                <li>Stability Control</li>
                <li>Lane Departure Warning</li>
              </ul>
            </div>
            <div class="col-md-4">
              <h4 class="title">Entertainment</h4>
              <ul>
                <li>Bluetooth</li>
                <li>Premium Sound System</li>
              </ul>
            </div>
            <div class="col-md-4">
              <h4 class="title">Convenience</h4>
              <ul>
                <li>Navigation System</li>
                <li>Premium Sound System</li>
              </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
              <h4 class="title">Seating</h4>
              <ul>
                  <li>Heated Seats</li>
                  <li>Premium Sound System</li>
                </ul>
            </div>
            <div class="col-md-4">
              <h4 class="title">Exterior</h4>
              <ul>
                  <li>Sunroof/Moonroof</li>
                  <li>Premium Sound System</li>
                </ul>
            </div>
        </div>

            <hr>

            {{-- ==============Ready For a Test Drive===================== --}}
        <div class="container text-center">
          
          <h3 class="title ">Ready For a Test Drive? Have a question?</h3>
         
          {{--  -------------  --}}
          <br>
          <button class="btn btn-primary btn-round btn-sm">
            <i class="material-icons">phone</i> Call
          <div class="ripple-container"></div></button>
          {{--  -------------  --}}
          <button class="btn btn-primary btn-round btn-sm">
            <i class="material-icons">chat</i> Chat
          <div class="ripple-container"></div></button>
          {{--  -------------  --}}
          
          <button class="btn btn-primary btn-round btn-sm">
            <i class="material-icons">place</i> Meet
          <div class="ripple-container"></div></button>
          {{--  ----------------  --}}

      </div> <!-----Ready For a Test Drive------>

          {{-- ===================Consumer Reviews================ --}}


          <h3 class="title">Consumer Reviews</h3>
          <div class="text-primary">
          <span class="fa fa-star checked "></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
          5 (120 Review)
          </div>

          <div class="container ">
              <div class="row ">
                  <div class="col-md-5">
                    <table class="table table-light">
                      <tbody>
                        <tr>
                          <th>Comfort</th>
                          <td>5 / 5 stars</td>
                        </tr>
                        <tr>
                          <th>Performance</th>
                          <td>5 / 5 stars</td>
                        </tr>
                        <tr>
                          <th>Exterior Styling</th>
                          <td>5 / 5 stars</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>

                  <div class="col-md-5">
                    <table class="table table-light">
                        <tbody>
                          <tr>
                            <th>Interior Design</th>
                            <td>5 / 5 stars</td>
                          </tr>
                          <tr>
                            <th>Value for the Money</th>
                            <td>5 / 5 stars</td>
                          </tr>
                          <tr>
                            <th>Reliability</th>
                            <td>5 / 5 stars</td>
                          </tr>
                        </tbody>
                    </table>
                  </div>
                </div>
          </div>


          {{-- ===================What Drivers Are Sayings================ --}}

          <div class="container ">
            <div class="row">
              <h3 class="title">What Drivers Are Saying</h3>
              
              
              <div class="blockquote undefined">
                  <div class="text-primary">
                    <span class="fa fa-star checked "></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                  </div>
                  <h4 class="title">Best built car for the money in Ankeny, Iowa</h4>
                <p>
                  I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.
                </p>
                <small>
                  Kanye West, Musician
                </small>
              </div>
              {{-- ---------------- --}}
              <div class="blockquote undefined">
                  <div class="text-primary">
                    <span class="fa fa-star checked "></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                  </div>
                  <h4 class="title">Best built car for the money in Ankeny, Iowa</h4>
                <p>
                  I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.
                </p>
                <small>
                  Kanye West, Musician
                </small>
              </div>
              {{-- ---------------- --}}
              <div class="blockquote undefined">
                  <div class="text-primary">
                    <span class="fa fa-star checked "></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                  </div>
                  <h4 class="title">Best built car for the money in Ankeny, Iowa</h4>
                <p>
                  I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.
                </p>
                <small>
                  Kanye West, Musician
                </small>
              </div>
              {{-- ---------------- --}}
            </div>
          </div>





                
@endsection