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
    <script src="js/jquery.paroller.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.js"></script>
    <script src="js/fullpage.js"></script>
    <script src="js/landing.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/landing.css">
    <link rel="stylesheet" href="css/responsive.css">

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
            <a class="btn call btn-brand">FeedBack</a>
        </div>
    </div><!-- /.feedback -->
<div id="fullpage">
    <div class="position-relative section" id="section0">
        <nav id="menu" class="menu d-flex">
            <div>
                <img src="assets/logo.png" alt="" />
            </div>
            <div>
                <ul id="myMenu" style="z-index: 30">
                    <li data-menuanchor="firstPage" class="active"><a href="#firstPage">First section</a></li>
                    <li data-menuanchor="secondPage"><a href="#secondPage">Second section</a></li>
                    <li data-menuanchor="thirdpage"><a href="#thirdpage">About section</a></li>
                    <li data-menuanchor="project_h"><a href="#project_h">Project h section</a></li>
                    <li data-menuanchor="summary"><a href="#summary">Project Summary</a></li>
                    <li data-menuanchor="flat"><a href="#flat">Flat</a></li>
                    <li data-menuanchor="footer"><a href="#footer">footer</a></li>
                </ul>
            </div>
        </nav>
        <div class="intro d-flex">
            <div class="intro__text" data-aos="fade-up" data-aos-easing="ease-out-cubic"
                 data-aos-duration="2000">
                 <h1>Kokhta mitarbi</h1>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, neque. Culpa temporibus quasi sapiente aperiam, eius quas eveniet, perspiciatis. Dolore.</p>
            </div>
        </div>
        <div class="gradiant"></div>
    </div>
    <div class="section four-season" id="section1">
        <div class="intro" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-6">
                        <div data-aos="fade-up"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="four-season__text">
                            <h2>Active 4 Season</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, neque! Aliquid, suscipit non saepe illo cupiditate voluptates! Nostrum vitae inventore neque eos esse, deleniti non itaque, dolores nemo voluptas molestias.</p>
                            <form>
                              <div class="form-row">
                                  <input type="email" class="form-control d-inline-block four-season__input" id="inputEmail4" placeholder="Ex: nikadevashvili@gmail.com">
                                  <button type="submit" class="btn btn-primary four-season__submit">Sign in</button>

                              </div>

                            </form>
                        </div>


                    </div><!-- /.col-xl-6 -->
                    <div class="col-xl-6 d-none d-md-block">
                        <div
                        data-aos="fade-down"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="position-relative four-season__text">
                            <div class="green_box"></div>
                            <div class="gray_box"></div>
                            <!-- <div class="d-none d-md-block position-relative four-season__img"></div> -->
                            <img src="assets/268A2809 copy copy copy.png" alt="" class="  img-fluid position-relative four-season__img"  />

                        </div>
                    </div><!-- /.col-6 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
    <div class=" section about-project" id="section2">
        <div class="d-flex intro">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-6 offset-lg-6">
                        <div class="text-right"
                        data-aos="fade-left"
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="200"
                        >
                            <h1 class="about-project__title">About Project</h1>
                             <p class="about-project__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis natus ipsa iste maxime esse placeat, earum ullam, modi animi odit, quas labore quisquam consectetur numquam in fuga eligendi. Eum, necessitatibus!</p>
                             <button class="btn about-project__btn">
                                detail about project
                             </button>
                        </div>


                    </div><!-- /.col-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
    <div class=" section fp-auto-height project-highlights " id="section3">
        <div class="d-flex intro">
            <div class="container-fluid">
                <div class="row project-highlights__row">
                    <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                        <div class="project-highlights__wrap"
                        data-aos="fade-up"
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                        >
                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    About Project
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique omnis voluptatum quis alias mollitia repellat a voluptatibus aperiam inventore eaque.</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                        <div class="project-highlights__wrap"
                        data-aos="fade-down"
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="200"
                        >
                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    About Project
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique omnis voluptatum quis alias mollitia repellat a voluptatibus aperiam inventore eaque.</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 col-sm-4 col-lg-4">
                        <div class="project-highlights__wrap"
                        data-aos="fade-up"
                        data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="300"
                        >
                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    About Project
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique omnis voluptatum quis alias mollitia repellat a voluptatibus aperiam inventore eaque.</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
    <div class=" section project-summary" id="section4">
        <div class="d-flex intro">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="project-summary__wrap">
                            <div class="row">
                                <div class="col-xl-4 summary__title-wrap">
                                    <h2 class="project-summary__title">Summary</h2>
                                </div><!-- /.col-xl-4 -->
                                <div class="col-xl-8 summary__text-wrap">
                                    <p class="project-summary__text">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem sunt distinctio quidem, velit minus, iste ratione corporis dolore provident, modi nisi numquam placeat quos veniam. Deserunt ipsa obcaecati dolor, hic.
                                    </p>
                                </div><!-- /.col-xl-8 -->
                            </div>
                            <div class="row statistics-row">
                                <div class="col-xl-4">
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate">$<span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="statistic last">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolor sit.</p>
                                        </div>
                                    </div>
                                    <div class="statistic last">
                                        <div class="statistic__number">
                                            <h3 class="n_animate"><span>50</span></h3>
                                        </div>
                                        <div class="statistic__text">
                                            <p>Lorem ipsum dolasda asdasd asd asd sadasd aas dor sit.</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div><!-- /.project-summary__wrap -->
                    </div><!-- /.col-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
    <div class="section flat" id="section5">
        <div class="d-flex intro">
            <div class="container-fluid">
                <div class="row">
                    <div class="d-none d-xl-flex col-xl-7 flat__pointers">
                        <div class="furtiture_pointer">
                            <img src="assets/furniture.png" class="img-fluid" alt="" />
                            <p>wooden</p>
                        </div>
                        <div class="chair_pointer">
                            <img src="assets/chair_pointer.png" class="img-fluid" alt="" />
                            <p>all asset ready</p>
                        </div>
                    </div><!-- /.col-xl-7 -->
                    <div class="offset-sm-2 offset-xl-0 col-xl-5">
                        <div class="position-relative flat-wrap">
                            <div class=" flat-title">
                                <h2>new apartment</h2>
                            </div><!-- /.flat-title -->
                            <div class=" flat-text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, quaerat! Error, qui, similique! Facilis porro, eaque illum enim quae hic? Laudantium quae iste, ratione culpa odit voluptatum in aperiam non!</p>
                            </div><!-- /.flat-text -->
                        </div><!-- /.flat-wrap -->
                    </div><!-- /.col-xl-6 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->

        </div>
    </div>
    <div class="section fp-auto-height" id="section11">
        <div class="d-flex intro footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-6 order-2 order-sm-0 col-sm-4 col-xl-4">
                        <a href="#" class="d-block"><img src="assets/logo.png" class="img-fluid" alt="" /></a>
                    </div>
                    <div class="contacts col-xl-4">
                        <div class="row">
                            <div class="col-xl-4">
                                <div class="text-left mb-2 mb-sm-0 text-sm-center email">
                                    <i class=" fa-fw fas fa-envelope"></i>
                                    <span>tbi@lisi.ge</span>
                                </div><!-- /.email -->

                            </div><!-- /.col-xl-4 -->
                            <div class="col-xl-4">
                                <div class="text-left mb-2 mb-sm-0 text-sm-center phone">
                                    <i class=" fa-fw fas fa-phone"></i>
                                    <span>+380 44 490 4515</span>
                                </div><!-- /.phone -->

                            </div><!-- /.col-xl-4 -->
                            <div class="col-xl-4">
                                <div class="text-left mb-2 mb-sm-0 text-sm-center pin">
                                    <i class=" fa-fw fas fa-map-marker-alt"></i>
                                    <span>Bolsunovska 13-15, Kiev</span>
                                </div><!-- /.pin -->
                            </div><!-- /.col-xl-4 -->
                        </div><!-- /.row -->
                    </div>
                    <div class="order-2 order-sm-3 col-6 col-sm-4 col-xl-4">
                        <p class="rights">All rights ©2019</p>
                    </div>
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
</div>
    <script>
        $(document).ready(function() {
          $('#fullpage').fullpage({
            // menu: '#myMenu',
            anchors: ['firstPage', 'secondPage', 'thirdpage', 'project_h' , 'summary', 'flat' , 'footer'],
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
                if (nextIndex.anchor == 'project_h') {
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
                if (nextIndex.anchor == 'summary') {
                    $('.n_animate span').animateNumber({ number: 165 } , 500);
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
        });
    </script>
</body>
</html>
