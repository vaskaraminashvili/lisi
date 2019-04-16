// const Swal = require('sweetalert2');
$(function(){
    // $('a[href*="#"]')
    //   // Remove links that don't actually link to anything
    //   .not('[href="#"]')
    //   .not('[href="#0"]')
    //   .click(function(event) {
    //     // On-page links
    //     if (
    //       location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
    //       &&
    //       location.hostname == this.hostname
    //     ) {
    //       // Figure out element to scroll to
    //       var target = $(this.hash);
    //       target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    //       // Does a scroll target exist?
    //       if (target.length) {
    //         // Only prevent default if animation is actually gonna happen
    //         event.preventDefault();
    //         $('html, body').animate({
    //           scrollTop: target.offset().top
    //         }, 1000, function() {
    //           // Callback after animation
    //           // Must change focus!
    //           var $target = $(target);
    //           $target.focus();
    //           if ($target.is(":focus")) { // Checking if the target was focused
    //             return false;
    //           } else {
    //             $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
    //             $target.focus(); // Set focus again
    //           };
    //         });
    //       }
    //     }
    //   });


    $('.threeImagesSlider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots:true,
        arrows:false,

    });
    $('.about-page-slide').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots:true,
    });
    $('.flat-plan-slide').slick({
        arrows:false,
        dots:true,
        // adaptiveHeight: true,
        appendDots :$('.apt-rooms'),
        customPaging : function(slider, i) {
                var title = $(slider.$slides.get(i));
                var title2 = title.find('div').find('img').data('title');
                return '<a class="pager__item badge badge-pill shadow-sm"> '+title2+' </a>';
            },
    });
    $('.buildings-section__slider').slick({
        autoplay: true,
        autoplaySpeed: 3000,
        slidesToShow: 4,
        responsive: [
          {
            breakpoint: 1400,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
              infinite: true,
              arrows:false
            }
          },
          {
            breakpoint: 768,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
              infinite: true,
              arrows:false
            }
          },
          {
            breakpoint: 576,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              infinite: true,
              arrows:false
            }
          }

        ]
    });
    $('.flat').slick({
        dots:true
    });
    $('body').keyup(function(e) {
        if ( $('.callback').hasClass('active')) {
            if (e.keyCode == 27) {
                $('.right').toggleClass('active');
                $('.left').toggleClass('active');
                $('.right .content').toggleClass('active');
            }
        }
    });
    $(window).scroll(function (event) {
        if ( $('.callback').hasClass('active')) {

            $('.right').toggleClass('active');
            $('.left').toggleClass('active');
            $('.right .content').toggleClass('active');
        }
    });

    $('body').addClass('overflow-x');
    $('.activator , .callback__close').on('click', function() {
        console.log('asdsa');
        $('.right').toggleClass('active');
        $('.left').toggleClass('active');
        $('.right .content').toggleClass('active');
    });

// send callback
$('.submit-button').click(function(event) {
    event.preventDefault();
    let input_name = $("[name=firstname]").val();
    let input_phone= $("[name=phone]").val();
    let input_project= $("[name=project]").val();
    $.ajax({
        url: "./lisi",
        type: "POST",
        data: {
            firstname :  input_name,
            phone :  input_phone,
            project :  input_project,
        },
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function(data){
            $("[name=firstname]").val('');
            $("[name=phone]").val('');
            Swal.fire({
                title: 'Good job!',
                type: 'success',
            })

        },
        error: function(data) {
            Swal.fire({
                type: 'error',
                title: 'All fields must be filled',
            })
        }
    });

});
$('.four-season__submit').click(function(event) {
    event.preventDefault();
    let input_email = $('.four-season__input').val();
    console.log(input_email);
    $.ajax({
        url: "./lisi",
        type: "POST",
        data: {
            email :  input_email,
            seasons :  1,
        },
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function(data){
            $('.four-season__input').val('');
            Swal.fire({
                title: 'Good job!',
                type: 'success',
            })

        },
        error: function(data) {
            Swal.fire({
                type: 'error',
                title: 'All fields must be filled',
            })
        }
    });

});
$('.readMore').on('beforeOpen.mrc', function(e, instance, sets, content, height) {
    content.addClass('overflow-y-a');
});
$('.readMore').on('beforeClose.mrc', function(e, instance, sets, content, height) {
    content.removeClass('overflow-y-a');
});
$('#section0 .readMore').moreContent({
    height: 90,
    textClose: 'Open',
    textOpen: 'Close',
    tpl: {
        btn: '<button class="btn btn-light"></button>',
        content: '<div class="mrc-content" style="max-height: 200px"></div>',
    }
});
$('#section1 .readMore').moreContent({
    height: 90,
    textClose: 'Open',
    textOpen: 'Close',
    tpl: {
        btn: '<button class="btn white-button border-radius-5 mt-2 mt-xl-3"></button>',
        content: '<div class="mrc-content" style="max-height: 200px"></div>',
    }
});
$('#section2 .readMore').moreContent({
    height: 90,
    textClose: 'Open',
    textOpen: 'Close',
    tpl: {
        btn: '<button class="btn about-project__btn"></button>',
        content: '<div class="mrc-content" style="max-height: 200px"></div>',
    }
});
$('#section15 .readMore').moreContent({
    height: 90,
    textClose: 'Open',
    textOpen: 'Close',
    tpl: {
        btn: '<button class="btn btn-light border mt-xl-3"></button>',
        content: '<div class="mrc-content " style="max-height: 200px"></div>',
    }
});
$('.section_2-slider').slick({
    // autoplay: true,
    autoplaySpeed: 1000,
    slidesToShow: 1,
    dots: true,
    arrows: false
});





}); //end of js
