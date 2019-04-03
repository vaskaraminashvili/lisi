<!DOCTYPE html>
<html>
<head>
    <title>@yield('title', 'Lisi Developmnet')</title>
    <!-- //full page css download after -->
    <!-- // jquery donwload -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script
      src="https://code.jquery.com/jquery-3.3.1.js"
      integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
      crossorigin="anonymous"></script>
    <!-- //full page again js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.extensions.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <script src="{{ asset('js/jquery.paroller.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8.2.6/dist/sweetalert2.all.min.js"></script>
    <script src="{{ asset('js/aos.js') }}"></script>
    <script src="{{ asset('js/jquery.animateNumber.js') }}"></script>
    <script src="{{ asset('js/fullpage.js') }}"></script>
    <script src="{{ asset('js/js_toggler.js') }}"></script>
    <script src="{{ asset('js/landing.js') }}"></script>

    <!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/aos.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/landing.css') }}">
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">

</head>
<body>


    <div class="socials">
        <ul>
            <li><a target="_blank" class="" href="#"><i class="fab fa-facebook-square"></i></a></li>
            <li><a target="_blank" href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a target="_blank" href="#"><i class="fab fa-instagram"></i></a></li>
            <li><a target="_blank" href="#"><i class="fab fa-youtube"></i></a></li>
            <li><a target="_blank" href="#"><i class="fas fa-envelope"></i></a></li>
        </ul>
    </div><!-- /.socials -->
    <div class="feedback">
        <div class="feedback__buttons d-flex justify-content-end">
            <a href="#" id="popup__toggle" class="d-block" onclick="return true;">
                <div class="circlephone" style="transform-origin: center;"></div>
                <div class="circle-fill" style="transform-origin: center;"></div>
                <div class="img-circle" style="transform-origin: center;">
                <div class="img-circleblock" style="transform-origin: center;"></div>
                </div>
            </a>
            <a class="btn call btn-brand activator">Callback</a>
        </div>
    </div><!-- /.feedback -->
    <div id="fullpage" class="left">
        @yield('content')
        <div class="section fp-auto-height" id="section11">
            <div class="d-flex intro footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-6 order-2 order-sm-0 col-sm-4 col-xl-3">
                            <a href="#" class="d-block">
                                <img src="{{ asset('assets/logo.png') }}" class="img-fluid" alt="" />
                            </a>
                        </div>
                        <div class="contacts col-xl-6">

                            <div class="row w-100">
                                <div class="col-xl-4">
                                    <div class="text-left mb-2 mb-sm-0 text-sm-center email">
                                        <i class=" fa-fw fas fa-envelope"></i>
                                        <span>rrr</span>
                                    </div><!-- /.email -->

                                </div><!-- /.col-xl-4 -->
                                <div class="col-xl-4">
                                    <div class="text-left mb-2 mb-sm-0 text-sm-center phone">
                                        <i class=" fa-fw fas fa-phone"></i>
                                        <span>rrr</span>
                                    </div><!-- /.phone -->

                                </div><!-- /.col-xl-4 -->
                                <div class="col-xl-4">
                                    <div class="text-left mb-2 mb-sm-0 text-sm-center pin">
                                        <i class=" fa-fw fas fa-map-marker-alt"></i>
                                        <span>rrr</span>
                                    </div><!-- /.pin -->
                                </div><!-- /.col-xl-4 -->
                            </div><!-- /.row -->
                        </div>
                        <div class="order-2 order-sm-3 col-6 col-sm-4 col-xl-3">
                            <p class="rights">All rights ©2019</p>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        @include('landing.feedback')
    </div><!-- /#fullpage -->
    <script>

        $(document).ready(function() {
          $('#fullpage').fullpage({

            anchors: [

            ],
            navigation: false,
            // navigationPosition: 'left',
            // navigationTooltips: ['First page', 'Second page', 'Third and last page' , 'project higphlits'],
            scrollBar: true,
            afterRender: function(index, nextIndex, direction){
              var el = $('.intro');
              el.paroller({
                factor: 0.5,
                type: 'background',
                direction: 'vertical'
              });

            },
            onLeave : function(index, nextIndex, direction){
                if (nextIndex.anchor == 'footer') {
                    $('.feedback').addClass('move-up');
                    console.log($('.feedback').offset());
                }else{
                    $('.feedback').removeClass('move-up');
                }
            },
            afterLoad: function(index, nextIndex, direction){
                // console.log(nextIndex.anchor);
                if (nextIndex.anchor == 'project_info') {
                    $('.panel_call').css('background', '#fff');
                    $('.img-circle').css('background', '#fff');
                    $('.circlephone').css('background', '#fff');
                    $('.circle-fill').css('background', '#fff');
                    $('.img-circleblock').addClass('changed');
                    $('.feedback__buttons .btn-brand').css({
                        background: '#fff',
                        borderColor: '#fff',
                    });
                    $('.feedback__buttons .call').css({
                        color: '#72BB88'
                    });
                }else{
                    $('.panel_call').css('background', '#72BB88');
                    $('.img-circle').css('background', '#72BB88');
                    $('.circlephone').css('background', '#72BB88');
                    $('.circle-fill').css('background', '#72BB88');
                    $('.img-circleblock').removeClass('changed');
                    $('.feedback__buttons .btn-brand').css({
                        background: '#72BB88',
                        borderColor: '#72BB88',
                    });
                    $('.feedback__buttons .call').css({
                        color: '#fff'
                    });
                }
                @stack('scripts')


            },
            /* We need reinitialize paroller on window resize event */
            afterResize: function() {
              var el = $('.intro');
              el.paroller({
                factor: 0.5,
                type: 'background',
                direction: 'vertical'
              });
            }
          });

            AOS.init();

        });

    </script>
</body>
</html>
