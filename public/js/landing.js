// const Swal = require('sweetalert2');
$(function(){
    $('.flat-img').slick({
        arrows:false,
        dots:true,
        appendDots :$('.apt-rooms'),
        customPaging : function(slider, i) {
                var title = $(slider.$slides.get(i));
                var title2 = title.find('div').find('img').data('title');
                return '<a class="pager__item badge badge-pill shadow-sm"> '+title2+' </a>';
            },
    });
    $('.buildings-section__slider').slick({
        // autoplay: true,
        // autoplaySpeed: 1000,
        slidesToShow: 4,
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

    $('body').addClass('overflow-hidden');
    $('.activator , .callback__close').on('click', function() {
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



}); //end of js
