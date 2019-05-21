<!DOCTYPE html>
@langrtl
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}" dir="rtl">
@else
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@endlangrtl

<head>
  <meta charset="utf-8" />
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

  <link rel="apple-touch-icon" sizes="76x76" href="{{asset('/')}}frontend/img/apple-icon.png">
  <link rel="icon" type="image/png" href="{{asset('/')}}frontend/img/favicon.png">
  <title>@yield('title', app_name())</title>

  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <style>
      #filter{
        background: #ffffff61;
        }

        #filter .card-title{
          color: #fff !important;
        }


        {{--  shop box  --}}
        .shop-md-2{
            margin-top:30px 
        }
        .shop {
            position: relative;
            overflow: hidden;
        }
        .shop .shop-img {
            position: relative;
            background-color: #E4E7ED;
            z-index: -1;
        }

        .shop .shop-body {
            position: absolute;
            top: -20px;
            width: 100%;
            padding: 3px;
            z-index: 10;
        }

        .shop .shop-body h3 {
            color: #FFF;
            font-weight: 500;
        }

        .shop:before {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0px;
            width: 60%;
            background: #D10024;
            opacity: 0.7;
            -webkit-transform: skewX(-45deg);
            -ms-transform: skewX(-45deg);
            transform: skewX(-45deg);
        }

        .shop:after {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            left: 1px;
            width: 100%;
            background: #D10024;
            opacity: 0.7;
            -webkit-transform: skewX(-45deg) translateX(-100%);
            -ms-transform: skewX(-45deg) translateX(-100%);
            transform: skewX(-45deg) translateX(-100%);
        }

        {{--  shop-box-under-slider  --}}
        .under{
            margin-top: -28px
        }
        .right{
            margin-right: -30px
        }
        .under .col-md-4{
            max-width: 37%;
        }
       
    </style>
  <link href="{{asset('/')}}frontend/css/material-kit.css?v=2.0.5" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
    @include('includes.partials.demo')

  <div id="app">
        @include('includes.partials.logged-in-as')

  {{--  ===============Nav=============            --}}
        @include('frontend2.includes.nav')
        
  {{--  ==============//=Nav=============            --}}
        @include('includes.partials.messages')
        @yield('content')
              
              <footer class="footer" data-background-color="black">
                <div class="container">
                  <nav class="float-left">
                    <ul>
                      <li>
                        <a href="https://www.creative-tim.com">
                          Creative Tim
                        </a>
                      </li>
                      <li>
                        <a href="https://creative-tim.com/presentation">
                          About Us
                        </a>
                      </li>
                      <li>
                        <a href="http://blog.creative-tim.com">
                          Blog
                        </a>
                      </li>
                      <li>
                        <a href="https://www.creative-tim.com/license">
                          Licenses
                        </a>
                      </li>
                    </ul>
                  </nav>
                  <div class="copyright float-right">
                    &copy;
                    <script>
                      document.write(new Date().getFullYear())
                    </script>, made with <i class="material-icons">favorite</i> by
                    <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
                  </div>
                </div>
              </footer>
              <!--   Core JS Files   -->
              <script src="{{asset('/')}}frontend/js/core/jquery.min.js" type="text/javascript"></script>
              <script src="{{asset('/')}}frontend/js/core/popper.min.js" type="text/javascript"></script>
              <script src="{{asset('/')}}frontend/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
              <script src="{{asset('/')}}frontend/js/plugins/moment.min.js"></script>
              <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
              <script src="{{asset('/')}}frontend/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
              <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
              <script src="{{asset('/')}}frontend/js/plugins/nouislider.min.js" type="text/javascript"></script>
              <!--  Google Maps Plugin    -->
              <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
              <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
              <script src="{{asset('/')}}frontend/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
              <script>
                $(document).ready(function() {
                  //init DateTimePickers
                  materialKit.initFormExtendedDatetimepickers();
            
                  // Sliders Init
                  materialKit.initSliders();
                });
            
            
                function scrollToDownload() {
                  if ($('.section-download').length != 0) {
                    $("html, body").animate({
                      scrollTop: $('.section-download').offset().top
                    }, 1000);
                  }
                }
            
              </script>
  </div><!-- #app -->
</body>

</html>
