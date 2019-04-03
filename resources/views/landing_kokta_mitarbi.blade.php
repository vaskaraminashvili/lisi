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
    <script src="js/siema.min.js"></script>
    <script src="js/landing.js"></script>
    <script src="js/slick.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.4/fullpage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
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
            <div class="downArrow bounce">
                    <i class="fas fa-angle-down text-white"></i>
            </div>
            <div class="partners">
                <h3 class="text-white">Our Partner Companies</h3>
                <div class="partner__logos">
                    <div>
                        <img class="img-fluid" src="{{ asset('assets/tbc.png') }}" alt="" />
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('assets/lisi.png') }}" alt="" />
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('assets/bmw.png') }}" alt="" />
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('assets/slack.png') }}" alt="" />
                    </div>
                </div>
            </div>
        </div>

    </div><!-- /.feedback -->

<div id="fullpage">
    <div class="position-relative section main_section" id="section0">
        <nav id="menu" class="menu d-flex">
            <div class="menu-logo">
                <img src="assets/logo.png" alt="" />
            </div>
            <div>
                <ul id="myMenu" style="z-index: 30">
                    <li data-menuanchor="firstPage" class="active"><a href="#firstPage">First section</a></li>
                    <li data-menuanchor="secondPage"><a href="#secondPage">Second section</a></li>
                    <li data-menuanchor="thirdpage"><a href="#thirdpage">About section</a></li>
                    <li data-menuanchor="project_h"><a href="#project_h">Project h section</a></li>
                    <li data-menuanchor="summary"><a href="#summary">Project Summary</a></li>
                    <li data-menuanchor="flat-overview"><a href="#flat-overview">Project Summary</a></li>
                    <li data-menuanchor="flat"><a href="#flat">Flat</a></li>
                    <li data-menuanchor="footer"><a href="#footer">footer</a></li>
                </ul>
                <div class="text-right menu_phone"><i class="fas fa-phone fa-flip-horizontal"></i> +38044 556 77 88</div>
            </div>
        </nav>
        <div class="intro d-flex">
            <div class="intro__text" data-aos="fade-up" data-aos-easing="ease-out-cubic"
                 data-aos-duration="2000">
                 <h1>Кохта Митарби</h1>
                 <h3>недвижимоцтъ, <br /> которая растет в цене</h3>
                 <p>В 2015 году с правительством Грузии был оформлен меморандум о сотрудничестве по вопросам.</p>
                 <button class="btn btn-light">проводить</button>
                 <div class="p-lg-2 visit_our_projects">
                        <div class="visit_our_projects_image">
                            <img src="assets/visit_our_projects.png" alt="visit our Projects" class="img-fluid" />
                        </div>
                        <div class="visit_our_projects_text">
                            <p>Visit our other project</p>
                            <a href="#">
                                Navigate to Lisi
                            </a>
                        </div>
                 </div>
            </div>
        </div>
        <div class="gradiant"></div>
    </div>
    <div class="section four-season" id="section1">
        <div class="intro" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-5">
                        <div data-aos="fade-up"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="four-season__text">
                            <h2>Aктивный в течение <br /> всех 4 сезонов</h2>
                            <p>В 2015 году с правительством Грузии был оформлен меморандум о сотрудничестве по вопросам реабилитации и развития туристической инфраструктуры Бакуриани и Митарби</p>
                            <button class="btn white-button border-radius-5">Детальнее</button>

                        </div>
                    </div><!-- /.col-xl-6 -->
                    <div class="col-xl-7 d-none d-md-block">
                        <div
                        data-aos="fade-down"  data-aos-easing="ease-out-cubic"
                        data-aos-duration="1000"
                        data-aos-delay="100"
                         class="position-relative four-season__text">
                            <div class="green_box"></div>
                            <div class="gray_box"></div>
                            <!-- <div class="d-none d-md-block position-relative four-season__img"></div> -->
                            <div class="siema">
                                <img src="assets/268A2809 copy copy copy.png" class="img-fluid four-season__img"  />
                                <img src="assets/268A2809 copy copy copy.png" class="img-fluid four-season__img"  />
                                <img src="assets/268A2809 copy copy copy.png" class="img-fluid four-season__img"  />
                            </div>

                        </div>
                    </div><!-- /.col-6 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div>
    <div class=" section about-project" id="section2">
        <div  class="slide" id="slide1" data-anchor="slide1">
            <div class="d-flex intro">
            <div class="bg-image compatible">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 offset-lg-6">
                            <div class="text-right"
                            >
                                <h1 class="about-project__title">O проекте</h1>
                                 <p class="about-project__text">1 этажная башня на холме Лиси в уникальной рекреационной зоне Тбилиси. Объединяет 32 квартиры (площадью от 85 м2 до 200 м2), 3 торговых объекта для малого бизнеса и подземную автостоянку...</p>
                                 <button class="btn about-project__btn">
                                    Детальнее
                                 </button>
                            </div>


                        </div><!-- /.col-6 -->

                    </div>
                </div>
            </div>
            </div>
        </div>
        <div  class="slide" id="slide2" data-anchor="slide2">
            <div class="d-flex intro">

            {{-- <img src="{{ asset('../assets/about_project.png') }}" alt="" /> --}}
            <div class="bg-image compatible">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, architecto? Ad expedita sunt possimus blanditiis veniam placeat laboriosam veritatis quia similique, maiores repellendus labore illum asperiores. Modi veritatis, quam delectus.</p>
            </div>
            </div>
        </div>
    </div>
    <div class=" section fp-auto-height project-highlights " id="section3">
        <div class="d-flex intro project-highlights__row">
                    <div class="mb-2 mb-sm-0 project-highlights__div">
                        <div class="project-highlights__wrap"

                        >
                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    O проекте
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>В 2015 году с правительством Грузии был оформлен меморандум о сотрудничестве по вопросам реабилитации и развития туристической инфраструктуры Бакуриани и Митарби</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 project-highlights__div">
                        <div class="project-highlights__wrap"

                        >

                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    O проекте
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum </p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 project-highlights__div">
                        <div class="project-highlights__wrap"

                        >
                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    O проекте
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum do</p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 project-highlights__div">
                        <div class="project-highlights__wrap"

                        >

                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    O проекте
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum </p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
                    <div class="mb-2 mb-sm-0 project-highlights__div">
                        <div class="project-highlights__wrap"

                        >

                            <div class="project-highlights__header">
                                <i class="fas fa-calendar-alt"></i>
                                <h2 class="project-highlights__title">
                                    O проекте
                                </h2>
                            </div><!-- /.project-highlights__header -->
                            <div class="project-highlights__body">
                                <p>Lorem ipsum </p>
                            </div><!-- /.project-highlights__body -->
                        </div><!-- /.project-highlights__wrap -->
                    </div>
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
    <div class=" section flat-overview" id="section12">
        <div class="d-flex intro">
           <div class="container-fluid">
               <div class="row">
                   <div class="col-xl-9 pr-xl-0">
                       <div class="flat-plan">
                           <div class="row flat-plan-row1">
                               <div class="col-xl-3">
                                   <div class="flat-img">
                                       <img class="img-fluid" data-title="room1" src="{{ asset('assets/flat_overview.png') }}">
                                       <img class="img-fluid" data-title="room2" src="{{ asset('assets/flat_overview.png') }}">
                                       <img class="img-fluid" data-title="room3" src="{{ asset('assets/flat_overview.png') }}">
                                       <img class="img-fluid" data-title="room4" src="{{ asset('assets/flat_overview.png') }}">
                                   </div>
                               </div>
                               <div class="col-xl-9">
                                   <h2 class="text-left flat-name">
                                       B-16 Flat
                                   </h2>
                                   <p class="text-left flat-description">
                                       Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo, neque, magni? Cupiditate quod amet reiciendis doloremque id! Minima nemo voluptatum ipsa quidem maiores, magni natus sunt ex, nostrum, eveniet, quia.
                                   </p>
                                   <div class="flat-rooms">
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                       <div class="flat-room">
                                           <h3 class="flat-room-name">Kitechen</h3>
                                           <span class="flat-room-sqm">32</span>
                                       </div>
                                   </div>
                               </div>
                           </div><!-- /.row -->
                           <div class="row flat-plan-row2">
                               <div class="col-12 ">
                                    <div class="flat-plan-bottom">
                                        <div class="">Apt Planiing</div>
                                        <div class="apt-rooms"></div>
                                    </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="col-xl-3">
                        <div class="flat-plan-call">
                            <div class="flat-plan-call-top">
                                <h2>меморандум о сотрудничестве реабилитации </h2>
                                <span class="flat-plan-call-number">
                                    +38044 556 77 88
                                </span>
                                <img src="{{ asset('assets/logo.png') }}" alt="" class="flat-plan-call-img" />
                                <p class="flat-plan-call-text">меморандум о сотрудничестве реабилитации </p>

                            </div><!-- /.flat-plan-call-top -->
                            <div class="flat-plan-call-bottom">
                                <form>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                  </div>
                                  <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                  </div>
                                  <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div><!-- /.flat-plan-call-bottom -->

                        </div>
                   </div>
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
            anchors: ['firstPage', 'secondPage', 'thirdpage', 'project_h' , 'summary', 'flat_overview', 'flat' , 'footer'],
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
                if (nextIndex.anchor == 'footer') {
                    $('.feedback').addClass('move-up');
                    console.log($('.feedback').offset());
                }else{
                    $('.feedback').removeClass('move-up');
                }
                if(nextIndex.anchor == 'thirdpage'){
                    $('.partners').fadeIn('slow');
                }else{
                    $('.partners').fadeOut('slow');
                }
            },
            afterLoad: function(index, nextIndex, direction){
                // console.log(nextIndex.anchor);
                if (nextIndex.anchor == 'firstPage') {
                    $('.downArrow').fadeIn('slow');
                }else{
                    $('.downArrow').fadeOut('slow');
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
