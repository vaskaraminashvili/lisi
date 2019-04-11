<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!-- //full page css download after -->
    <!-- // jquery donwload -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script
      src="https://code.jquery.com/jquery-3.3.1.js"
      integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
      crossorigin="anonymous"></script>
    <!-- //full page again js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.extensions.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <script src="{{ asset('js/jquery.paroller.js') }}"></script>
    <script src="{{ asset('js/aos.js') }}"></script>
    <script src="{{ asset('js/jquery.animateNumber.js') }}"></script>
    <script src="{{ asset('js/fullpage.js') }}"></script>
    <script src="{{ asset('js/siema.min.js') }}"></script>
    <script src="{{ asset('js/landing.js') }}"></script>
    <script src="{{ asset('js/slick.js') }}"></script>
    <script src="{{ asset('js/jquery.fancybox.min.js') }}"></script>
    <!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/aos.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('css/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('css/landing.css') }}">
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">

</head>
<body>

    <div class="socials">
        <ul>
            <li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
            <li><a href="#"><i class="fas fa-envelope"></i></a></li>
        </ul>
    </div>
    <div class="feedback">
        <div class="feedback__buttons d-flex justify-content-end">
            <a href="#" id="popup__toggle" class="d-block" onclick="return true;">
                <div class="circlephone" style="transform-origin: center;"></div>
                <div class="circle-fill" style="transform-origin: center;"></div>
                <div class="img-circle" style="transform-origin: center;">
                <div class="img-circleblock" style="transform-origin: center;"></div>
                </div>
            </a>
            <a class="btn call btn-brand">FeedBack</a>
            <div class="downArrow bounce">
                    <i class="fas fa-angle-down text-white"></i>
            </div>

        </div>

    </div>

<div id="fullpage">
    @yield('content')
</div>
    <script>
        $(document).ready(function() {
          $('#fullpage').fullpage({
            // menu: '#myMenu',
            dragAndMove: true,
            anchors: [
            @foreach ($anchors as $anchor)
                '{{$anchor}}' ,
            @endforeach
            ],
            controlArrows : false,
            slidesNavigation: true,
            slidesNavPosition: 'bottom',
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
                if (nextIndex.anchor == 'section_12') {
                    $('.feedback').addClass('move-up');
                }else{
                    $('.feedback').removeClass('move-up');
                }
                if(nextIndex.anchor == 'section_3'){
                    $('.partners').fadeIn('slow');
                }else{
                    $('.partners').fadeOut('slow');
                }
            },
            afterLoad: function(index, nextIndex, direction){
                // console.log(nextIndex.anchor);
                if (nextIndex.anchor == 'section_1') {
                    $('.downArrow').fadeIn('slow');
                }else{
                    $('.downArrow').fadeOut('slow');
                }

                if (nextIndex.anchor == 'summary') {
                    $('.n_animate span').animateNumber({ number: 165 } , 500);
                }
                if (nextIndex.anchor == 'invest') {
                    $('.stat_anime .stat_anime-number').animateNumber({ number: 165 } , 500);
                }
                if (nextIndex.anchor == 'developer') {
                    $('.stat_anime .stat_anime-number').animateNumber({ number: 50 } , 500);
                }

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
            // sieam sliders
                new Siema({
                  selector: '.siema',
                  duration: 200,
                });
            // end sieam sliders
        });
    </script>
</body>
</html>
